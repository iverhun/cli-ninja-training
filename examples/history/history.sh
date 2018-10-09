
# execute command by history ID
!495

# execute previous command, but replace cat with vim 
cat yesterday-lyrics.txt
less !*

# 
tail test.log.2015
!!:s/15/16

# the same
tail test.log.2015
^5^6

# better example
grep ERROR test.log.2015
^15^16

# the same, but arbitrary command from history
!592:s/ERROR/WARN

# execute previous command with sudo
sudo !!
