echo "more is less" | sed 's/more/less/g'

# replace date with empty string
echo "2014-11-17 23:23:37,584  Starting beans in phase 0" | sed -E 's/([0-9]){4}-([0-9]){2}-([0-9]){2}//g'

# replace date with empty string in file
sed -E 's/([0-9]){4}-([0-9]){2}-([0-9]){2}//g' ../../logs/smb-dataimport.log

# remove empty lines
sed -e '/^\s*$/d' yesterday-lyrics.txt

# multiple commands in a line (verify woth grep): 
## replace 'yesterday' with 'tomorrow'
## delete lines with 'love'
sed 's/yesterday/tomorrow/g; /love/d' yesterday-lyrics.txt

