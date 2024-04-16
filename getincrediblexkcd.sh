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

# hard reset data by passing arg --reset
if [[ "$*" =~ --reset ]]; then
    rm "$CSV" 2>/dev/null
    rm "$PFILE" 2>/dev/null
    rm -r "$MDIR" 2>/dev/null
    rm -r "$BDIR" 2>/dev/null
fi

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
    local min max x n v machf
    min="$1"
    max="$2"
    x="$3"

    # number of rows to jump down to display progress for this job
    n="$((x+1))"

    for ((v=min; v<=max; v++)); do
        machf="$MDIR/$v.json"
        if [ -f "$machf" ]; then
            continue
        fi

        # {n}E -> move cursor down {n} lines
        # 2K -> clears line
        # 33m -> orange color
        # 0m -> normal color
        # 5m -> slow blink
        # 32m -> green color
        # 0m -> normal color (no blinking
        # {n}F -> move cursor up {n} lines
        printf '\033[%sE\033[2K\033[33mmachine: \033[0m%s \033[5m\033[32mdownloading...\033[0m\033[%sF' "$n" "$machf" "$n"

        curl -m 10 -SsL "$API/machine/$v" > "$machf"
    done
    # {n}E -> move cursor down {n} lines
    # 2K -> clears line
    # 33m -> orange color
    # 0m -> normal color
    # {n}F -> move cursor up {n} lines
    printf '\033[%sE\033[2K\033[33mdone downloading machine files\033[0m\033[%sF' "$n" "$n"
}

queueblues() {
    local machf x y n mach nullcount id bluef queuef link
    machf="$1"
    x="$2"
    y=0

    # number of rows to jump down to display progress for this job
    n="$((x+1))"

    nullcount=0

    for id in $(jq ".grid[].[$x]" "$machf" 2>/dev/null | sed s/\"//g); do
        if [ -z "$id" ] || [ "$id" = "null" ]; then
            nullcount="$((nullcount+1))"
            # hardcode limit of 4 consecutive nulls to break. Since we're
            # parallelising over x values, these are vertically consecutive
            # null values in a single column
            if [ "$nullcount" -gt 4 ]; then
                break
            fi

            # {n}E -> move cursor down {n} lines
            # 2K -> clears line
            # 33m -> orange color
            # 0m -> normal color
            # {n}F -> move cursor up {n} lines
            printf '\033[%sE\033[2K\033[33mblueprint: \033[0mnull\033[%sF' "$n" "$n"
        else
            nullcount=0
            bluef="$BDIR/$id.json"
            queuef="$BDIR/$id.queue"
            link="$URL"'xt='"$x"'&yt='"$y"'&v='"$v"

            # if we don't have this file of it doesn't have expected contents
            if [ ! -f "$bluef" ] || [ -z "$(jq .blueprint.puzzle "$bluef")" ]; then
                if [ ! -f "$queuef" ]; then
                    printf '%s %s\n' "$id" "$link" > "$queuef"
                fi
            fi

            # {n}E -> move cursor down {n} lines
            # 2K -> clears line
            # 33m -> orange color
            # 0m -> normal color
            # {n}F -> move cursor up {n} lines
            printf '\033[%sE\033[2K\033[33mblueprint: \033[0m%s\033[%sF' "$n" "$id" "$n"
        fi
        y=$((y+1))
    done
}

getbluefs() {
    local x queuefs queuef itms id link bluef submittedAt title
    x="$1"
    queuefs=("$@")
    # remove x argument, assigned above, from function arguments - remaining
    # elements are an array of queue files
    unset "queuefs[0]"

    for queuef in "${queuefs[@]}"; do
        itms=( $(cat "$queuef") )
        id="${itms[0]}"
        link="${itms[1]}"

        # number of rows to jump down to display progress for this job
        n="$((x+1))"

        bluef="$BDIR/$id.json"
        # {n}E -> move cursor down {n} lines
        # 2K -> clears line
        # 33m -> orange color
        # 0m -> normal color
        # 5m -> slow blink
        # 32m -> green color
        # 0m -> normal color (no blinking
        # {n}F -> move cursor up {n} lines
        printf '\033[%sE\033[2K\033[33mblueprint: \033[0m%s \033[5m\033[32mdownloading...\033[0m\033[%sF' "$n" "$id" "$n"
        curl -m 10 -SsL "$API/folio/$id" > "$bluef"

        submittedAt="$(jq .blueprint.submittedAt "$bluef")"
        # correct double quote escaping for .csv
        title="$(jq .blueprint.title "$bluef" | sed 's/\\"/""/g')"

        printf '"%s","%s",%s,%s\n' "$id" "$link" "$submittedAt" "$title" >> "$CSV"

        rm "$queuef"
    done

    # {n}E -> move cursor down {n} lines
    # 2K -> clears line
    # 33m -> orange color
    # 0m -> normal color
    # {n}F -> move cursor up {n} lines
    printf '\033[%sE\033[2K\033[33mdone downloading blueprint files\033[0m\033[%sF' "$n" "$n"
}

cleanvt() {
    for pid in "${jobpids[@]}"; do
        if [ -n "$pid" ]; then
            kill "$pid" 2>/dev/null
        fi
    done
    for ((k=0 ; k < 12 ; k++)); do
        # 1E -> move cursor down 1 lines
        # 2K -> clears line
        printf '\033[1E\033[2K'
    done
    # 12F -> move cursor up 12 lines
    # 0m -> normal color
    # ?25h -> show cursor
    printf '\033[12F\033[0m\033[?25h'
}

trap 'cleanvt; printf "^C\n"; exit 130' INT

# add 14 rows for displaying progress
# line 1: current machine --> static, will not be cleared
# line 2: machine currently being processed --> erased when script quits
# line 3-14: parallel blueprint jobs --> erased when script quits
printf '\n\n\n\n\n\n\n\n\n\n\n\n\n'

# ?25l -> hides cursor
# 13F -> move cursor up 13 lines
# 2K -> clears line
# 33m -> orange color
# 5m -> slow blink
# 32m -> green color
# 0m -> normal color (no blinking)
printf '\033[?25l\033[13F\033[2K\033[33mcurrent published machine version: \033[5m\033[32mdownloading...\033[0m'
current=$(curl -SsL "$API/machine/current" | jq .version)
curl -m 10 -SsL "$API/puzzle" > "$PFILE"

# 2K -> clears line
# 1G -> move cursor to 1st column in line
# 33m -> orange color
# 0m -> normal color
printf '\033[2K\033[1G\033[33mcurrent published machine version: \033[0m%s' "$current"
# down one line
printf '\n'

[ -d "$MDIR" ] || mkdir -p "$MDIR"
[ -d "$BDIR" ] || mkdir -p "$BDIR"

if [ ! -f "$CSV" ]; then
    printf "blueprint,link,submittedAt,title\n" > "$CSV"
fi

jobpids=()

# 2K -> clears line
# 1G -> move cursor to 1st column in line
# 33m -> orange color
# 0m -> normal color
printf '\033[2K\033[1G\033[33mfetching machine files:\033[0m'

min=0
inc=$((current/12))
for ((x=0; x<11; x++)); do
    getmachs "$min" "$((min+inc))" "$x" &
    jobpids["$x"]="$!"
    min="$((min+inc+1))"
done
getmachs "$min" "$current" 11 &
jobpids[11]="$!"
wait

for ((v=0; v<=current; v++)); do
    machf="$MDIR/$v.json"

    # 2K -> clears line
    # 1G -> move cursor to 1st column in line
    # 33m -> orange color
    # 0m -> normal color
    printf '\033[2K\033[1G\033[33mprocessing machine version: \033[0m%s' "$machf"

    for ((x=0; x<12; x++)); do
        queueblues "$machf" "$x" &
        jobpids["$x"]="$!"
    done
    wait
done

# 2K -> clears line
# 1G -> move cursor to 1st column in line
# 33m -> orange color
# 0m -> normal color
printf '\033[2K\033[1G\033[33mfetching blueprint files:\033[0m'

allqueuefs=($BDIR/*.queue)
tot="${#allqueuefs[@]}"
inc=$((tot/12))
offset=0
for ((x=0; x<11; x++)); do
    queuefs=()
    for ((i=0; i<inc; i++)); do
        queuefs["$i"]="${allqueuefs["$((i + offset))"]}"
    done
    # pass array by named reference
    getbluefs "$x" "${queuefs[@]}" &
    jobpids["$x"]="$!"
    offset="$((offset + inc))"
done
queuefs=()
for ((i=0; i<(tot-offset); i++)); do
    queuefs["$i"]="${allqueuefs["$((i + offset))"]}"
done
getbluefs "$x" "${queuefs[@]}" &
jobpids[11]="$!"
wait

cleanvt
