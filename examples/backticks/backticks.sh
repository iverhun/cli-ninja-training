# !!! EXECUTE THIS EXAMPLE IN ../kill DIRECTORY !!!

# print a line executing java ins the run_java.sh file
cat ./run_java.sh | grep java | awk -F ">" '{print $1}'

# execute the command printed above
`cat ./run_java.sh | grep java | awk -F ">" '{print $1}'`

# For when you don't know where something lives, and you don't care either
vim `which nametab.sh`
vim `which thucydides.sh`

# for dynamic command creation in scripts
# TODO: add example
