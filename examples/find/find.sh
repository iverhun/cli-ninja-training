# find all pom.xml files in current directory and subdirectories, except of 'target' directory
find . -name pom.xml -not -path "./*/target/*"
