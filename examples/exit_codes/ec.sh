
# show exit code
curl abc://example.com; echo $?
asdasdga; echo $?

# command chaining and grouping
asdsad && { echo 1; echo 2; }
asdsad || { echo 1; echo 2; }
echo 0 || { echo 1; echo 2; }
echo 0 && { echo 1; echo 2; }

curl http://example.com > /dev/null && echo Hello


