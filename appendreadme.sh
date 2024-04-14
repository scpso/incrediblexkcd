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

CSV='incrediblexkcd.csv'
README='README.md'

# grep outputs linenumber with match, sed captures just the line number
if ! hline="$(grep -nE '^# Permalinks' "$README" | sed -E 's/^([0-9]+).*$/\1/')" || [ -z "$hline" ]; then
    printf '\033[31mErr: cannot find # Permalinks header in README\033[0m\n'
    exit 1
fi

# delete everything after the header line
contents="$(head -"$hline" "$README")"
printf '%s\n' "$contents" > "$README"

# add extra line
printf '\n' >> "$README"

# capture link and title from csv, format as md link, and replace csv escaped
# double-double quotes with single double quotes (say that 6 times fast!)
# append to readme
sed -nE 's/^"[0-9a-f-]{36}","(.*)","[0-9TZ:.-]{30}","(.*)"/[\2](\1)/p;s/""/"/g' "$CSV" >> "$README"
