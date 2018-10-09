# send a signal to the python program
# 1 - SIGHUP
# 2 - SIGINT
# 9 - SIGKILL
# 15 - SIGTERM
ps aux | grep python | grep "handle_signal.py" | awk '{print $2}' | xargs kill -1
