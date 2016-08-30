# print content of all files
ls | xargs cat

# find all usages of 'cat' command in *.sh files in examples directory
find .. -name "*.sh" | xargs grep 'cat'
