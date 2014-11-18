# >

# >>

# |
grep love tomorrow-lyrics.txt
cat tomorrow-lyrics.txt | grep love

# tee
cat tomorrow-lyrics.txt | grep love | tee filtered.txt

# input
wc -l tomorrow-lyrics.txt
wc -l < tomorrow-lyrics.txt 

# task
# emit every 10’s nonempty line in the tomorrow-lyrics.txt file
cat -b tomorrow-lyrics.txt | grep -e '0\s'
