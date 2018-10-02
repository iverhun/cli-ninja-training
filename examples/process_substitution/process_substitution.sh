# <()
# $()

# <() will treat the output as a file
diff <(print "aaa") <(print "bbb")

# $() will be substituted with the command output
touch foo-$(date +%s).txt
