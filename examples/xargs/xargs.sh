# print content of all files
ls | xargs cat

# !!! SHOUDL BE RUN FROM examples DIRECTORY !!!
# find all usages of 'cat' command in *.sh files in examples directory
find . -name "*.sh" | xargs grep 'cat'
