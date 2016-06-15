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

# STDOUT(1) and STDERR(2)
ll tomorrow-lyrics.txt tomorrow-lyrics.txt2 errors.txt
ll tomorrow-lyrics.txt tomorrow-lyrics.txt2 > errors.txt
ll tomorrow-lyrics.txt tomorrow-lyrics.txt2 1> errors.txt
ll tomorrow-lyrics.txt tomorrow-lyrics.txt2 2> errors.txt

# redirect stderr to stdout: http://ryanstutorials.net/linuxtutorial/piping.php
# We redirect to a file first then redirect the error stream. 
# We identify the redirection to a stream by placing an & in front of the stream number 
# (otherwise it would redirect to a file called 1). 
ll tomorrow-lyrics.txt tomorrow-lyrics.txt2 > myoutput 2>&1

