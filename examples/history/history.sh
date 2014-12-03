
# execute command by history ID
!495

# execute previous command, but replace cat with vim 
cat yesterday-lyrics.txt
!!:s/cat/vim

# the same
cat yesterday-lyrics.txt
^cat^vim

# better example
grep ERROR ../../logs/smb-dataimport.log.2013*
^13^14

# the same, but arbitrary command from history
!592:s/ERROR/WARN

# execute previous command with sudo
sudo !!
