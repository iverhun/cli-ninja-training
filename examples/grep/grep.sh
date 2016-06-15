grep --colour love *
grep --colour -R love *

# print only non-empty lines (if there is whitespace, it's not empty)
grep . yesterday-lyrics.txt

# print only non-empty, non-whitespace-onlylines
grep -v '^\s*$' yesterday-lyrics.txt

# ==== grep vs egrep
# prints nothing, because the expression is a literal
grep "love|lonely" tomorrow-lyrics.txt

# prints all lines containing either love, or lonely
egrep "love|lonely" tomorrow-lyrics.txt

# search accross directory (try with wc)
grep -r tomorrow ./*
grep -i -r tomorrow ./*

# line numbers
egrep -n "love|lonely" tomorrow-lyrics.txt
