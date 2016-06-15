# find all pom.xml files in current directory and subdirectories, except of 'target' directory
find . -name pom.xml -not -path "./*/target/*"

# find all jars in mvn repo larger than 1M
find ~/.m2/repository -name '*.jar' -size +1M

# find all empty files
find . -name "*" -type f -empty -exec ls -lh {} \;

# remove all empty files
find . -type f -empty  -exec rm -f {} \;

# remove all target directorues: http://www.cyberciti.biz/faq/linux-unix-how-to-find-and-remove-files/
find . -type d -name "target" -exec rm -rf {} \;



