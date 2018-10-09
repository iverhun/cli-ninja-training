ps aux | grep java
pgrep java
pgrep  -lf java

killall -9 java

cat < kill.sh | grep ps  > out.txt
