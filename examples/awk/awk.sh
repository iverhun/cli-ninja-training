# print 1 and 4 word in every line
cat log4jtest.log | awk '{print $2, $4}'

# print length of every line
cat log4jtest.log | awk '{print length()}'
cat log4jtest.log | awk '{print length($0)}'

# print length of 4th word and the word itself
cat log4jtest.log | awk '{print length($4)": "$4}'

# print length of 4th word and the word itself if it's longer than 17
cat log4jtest.log | awk 'length($4) > 17 {print length($4)": "$4}'

# the same, but for lines containing Config (like grep):
cat log4jtest.log | awk '/'Config'/ {print length($4)": "$4}'

# print lines with Number of Fields > 0
awk 'NF > 0' yesterday-lyrics.txt

#===============
# Advanced
# replace delimiter with tab
awk -F "[ :]+" '{OFS="\t"; $2=$2; print $0}' log4jtest.log

# print 7 random numbers between 0 and 100
awk 'BEGIN { for (i = 1; i <= 7; i++) print int(101 * rand()) }'
