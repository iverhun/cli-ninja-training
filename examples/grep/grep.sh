grep --colour love *
grep --colour -R love *

# print only non-empty lines (if there is whitespace, it's not empty)
grep . yesterday-lyrics.txt

# print only non-empty, non-whitespace-onlylines
grep -v '^\s*$' yesterday-lyrics.txt
