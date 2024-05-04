#! /usr/bin/env bash
#
# incrediblexkcd - A celebration of xkcd comic 2916 (https://xkcd.com/2916)
#
# MIT License
#
# Copyright (c) 2024 scpso
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

API='https://incredible.xkcd.com'
URL='https://xkcd.com/2916/#'
CSV='incrediblexkcd.csv'
PFILE='puzzle.json'
MDIR='machine'
BDIR='folio'
JOBS=12
USAGE="$(printf 'getincrediblexkcd
  --jobs [NUM]  how many parallel jobs to run (default %s)
  --reset       delete all data and start from scratch
  --start [NUM] which version of the machine to start from (default 0)
  ' "$JOBS")"
DEPS=(curl jq)
for dep in "${DEPS[@]}"; do
    if ! command -v "$dep" >/dev/null; then
        # 31m -> red color
        # 0m -> normal color
        printf '\033[31merr: required command %s not available\033[0m\n' "$dep"
        exit 1
    fi
done

getmachs() {
    local n machns min max machn v machf nullcount x y id bluef queuef lockf link
    # number of rows to jump down to display progress for this job
    n="$1"
    n="$((n+1))"

    machns=("$@")
    min=1 #start at 1 because 0 is $1
    max="${#machns[@]}"

    for ((machn=min ; machn<max ; machn++)); do
        v="${machns["$machn"]}"
        machf="$MDIR/$v.json"
        if [ ! -f "$machf" ]; then

            # {n}E -> move cursor down {n} lines
            # 2K -> clears line
            # 0m -> normal color
            # 5m -> slow blink
            # 32m -> green color
            # 0m -> normal color (no blinking
            # {n}F -> move cursor up {n} lines
            printf '\033[%sE\033[2K\033[0m%s \033[5m\033[32mdownloading...\033[0m\033[%sF' "$n" "$machf" "$n"

            curl -m 10 -SsL "$API/machine/$v" > "$machf"
        fi

        # {n}E -> move cursor down {n} lines
        # 2K -> clears line
        # 0m -> normal color
        # 5m -> slow blink
        # 33m -> orange color
        # 0m -> normal color (no blinking
        # {n}F -> move cursor up {n} lines
        printf '\033[%sE\033[2K\033[0m%s \033[5m\033[33mprocessing...\033[0m\033[%sF' "$n" "$machf" "$n"

        nullcount=0
        x=0
        y=0
        for id in $(jq ".grid[].[]" "$machf" 2>/dev/null | sed s/\"//g); do
            if [ -z "$id" ] || [ "$id" = "null" ]; then
                nullcount="$((nullcount+1))"
                # hardcode limit of 36 consecutive nulls to break.
                if [ "$nullcount" -gt 36 ]; then
                    break
                fi
            else
                nullcount=0
                bluef="$BDIR/$id.json"
                queuef="$BDIR/$id.queue"
                lockf="$BDIR/$id.lock"
                link="$URL"'xt='"$x"'&yt='"$y"'&v='"$v"

                if ! [ -f "$bluef" ]; then
                    # prevent race with other jobs by using lockf as semaphore
                    printf '%s\n' "$n" >> "$lockf"
                    if [ "$(head -n 1 "$lockf")" = "$n" ]; then
                        # {n}E -> move cursor down {n} lines
                        # 2K -> clears line
                        # 0m -> normal color
                        # 5m -> slow blink
                        # 32m -> green color
                        # 0m -> normal color (no blinking
                        # {n}F -> move cursor up {n} lines
                        printf '\033[%sE\033[2K\033[0m%s %s \033[5m\033[32mdownloading...\033[0m\033[%sF' "$n" "$machf" "$id" "$n"
                        curl -m 10 -SsL "$API/folio/$id" > "$queuef"

                        submittedAt="$(jq .blueprint.submittedAt "$queuef")"
                        # correct double quote escaping for .csv
                        title="$(jq .blueprint.title "$queuef" | sed 's/\\"/""/g')"
                        printf '"%s","%s",%s,%s\n' "$id" "$link" "$submittedAt" "$title" >> "$CSV"

                        mv "$queuef" "$bluef"
                    fi
                fi
            fi
            x=$((x+1))
            if [ "$x" -eq 12 ]; then
                x=0
                y=$((y+1))
            fi
        done
    done
    # {n}E -> move cursor down {n} lines
    # 2K -> clears line
    # 33m -> orange color
    # 0m -> normal color
    # {n}F -> move cursor up {n} lines
    printf '\033[%sE\033[2K\033[33mdone processing machine files\033[0m\033[%sF' "$n" "$n"
}

cleanvt() {
    for pid in "${jobpids[@]}"; do
        if [ -n "$pid" ]; then
            kill "$pid" 2>/dev/null
        fi
    done
    rm $BDIR/*.lock 2>/dev/null
    for ((k=0 ; k < "$jobsn" ; k++)); do
        # 1E -> move cursor down 1 lines
        # 2K -> clears line
        printf '\033[1E\033[2K'
    done
    # %sF -> move cursor up %s lines
    # 0m -> normal color
    # ?25h -> show cursor
    printf '\033[%sF\033[0m\033[?25h' "$jobsn"
}

trap 'cleanvt; printf "^C\n"; exit 130' INT

# CLI
jobscalled=''
jobsn=''
startcalled=''
startn=''
reset=''

args=("$@")
argn="${#args[@]}"
for ((n=0 ; n<argn ; n++)); do
    arg="${args[$n]}"
    if [ "$arg" = '--help' ] || [ "$arg" = '-h' ]; then
        printf '%s\n' "$USAGE"
        exit 0
    elif [ -z "$jobsn" ] && [ -n "$jobscalled" ] && [ "$jobscalled" -ge 0 ] && [ "$n" -eq $((jobscalled + 1)) ]; then
        # collect numeric argument
        jobsn="$(printf '%s' "$arg" | sed -nE 's/^([0-9]+)$/\1/p')"
        if [ -z "$jobsn" ]; then
            printf 'Invalid arg: %s\ntry --help\n' "$arg"
            exit 2
        fi
    elif [ "$arg" = '--jobs' ]; then
        jobscalled=$n
    elif [[ "$arg" =~ --jobs* ]]; then
        jobscalled=$n
        # collect numeric argument
        jobsn="$(printf '%s' "$arg" | sed -nE 's/^--jobs[= ]?([0-9]+)$/\1/p')"
        if [ -z "$jobsn" ]; then
            printf 'Invalid arg: %s\ntry --help\n' "$arg"
            exit 2
        fi
    elif [ "$arg" = "--reset" ]; then
        reset=1
    elif [ -z "$startn" ] && [ -n "$startcalled" ] && [ "$startcalled" -ge 0 ] && [ "$n" -eq $((startcalled + 1)) ]; then
        # collect numeric argument
        startn="$(printf '%s' "$arg" | sed -nE 's/^([0-9]+)$/\1/p')"
        if [ -z "$startn" ]; then
            printf 'Invalid arg: %s\ntry --help\n' "$arg"
            exit 2
        fi
    elif [ "$arg" = '--start' ]; then
        startcalled=$n
    elif [[ "$arg" =~ --start* ]]; then
        startcalled=$n
        # collect numeric argument
        startn="$(printf '%s' "$arg" | sed -nE 's/^--start[= ]?([0-9]+)$/\1/p')"
        if [ -z "$startn" ]; then
            printf 'Invalid arg: %s\ntry --help\n' "$arg"
            exit 2
        fi
    else
        printf 'Invalid arg: %s\ntry --help\n' "$arg"
        exit 2
    fi
done

if [ -n "$reset" ] && [ "$reset" -gt 0 ]; then
    rm "$CSV" 2>/dev/null
    rm "$PFILE" 2>/dev/null
    rm -r "$MDIR" 2>/dev/null
    rm -r "$BDIR" 2>/dev/null
fi

[ -z "$jobsn" ] && jobsn="$JOBS"
[ -z "$startn" ] && startn=0

# add rows for displaying progress
# line 0: current machine --> static, will not be cleared
# remaining lines for parallel jobs --> erased when script quits
for ((k=0 ; k <= "$jobsn" ; k++)); do
    printf '\n'
done

# ?25l -> hides cursor
# %sF -> move cursor up %s lines
# 2K -> clears line
# 33m -> orange color
# 5m -> slow blink
# 32m -> green color
# 0m -> normal color (no blinking)
printf '\033[?25l\033[%sF\033[2K\033[33mcurrent published machine version:\033[0m' "$((jobsn+1))"

# we put this flashing content on a line that will be cleared on sigint to
# prevent flashing content staying in terminal
# 1E -> move cursor down 1 line
# 5m -> slow blink
# 32m -> green color
# 0m -> normal color (no blinking)
# 1F -> move cursor up 1 line
printf '\033[1E\033[5m\033[32mdownloading...\033[0m\033[1F'

current=$(curl -SsL "$API/machine/current" | jq .version)
curl -m 10 -SsL "$API/puzzle" > "$PFILE"

# 2K -> clears line
# 1G -> move cursor to 1st column in line
# 33m -> orange color
# 0m -> normal color
printf '\033[2K\033[1G\033[33mcurrent published machine version: \033[0m%s' "$current"

[ -d "$MDIR" ] || mkdir -p "$MDIR"
[ -d "$BDIR" ] || mkdir -p "$BDIR"

if [ ! -f "$CSV" ]; then
    printf "blueprint,link,submittedAt,title\n" > "$CSV"
fi

jobpids=()

for ((x=0; x<jobsn; x++)); do
    machns=()
    for ((n=startn; n<=current; n++)); do
        if [ "$((n%jobsn - x))" -eq 0 ]; then
            machi="${#machns[@]}"
            machns[machi]=$n
        fi
    done
    getmachs "$x" "${machns[@]}" &
    jobpids["$x"]="$!"
done
wait
cleanvt
