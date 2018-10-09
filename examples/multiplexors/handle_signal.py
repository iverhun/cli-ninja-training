import signal, time, sys


def handler(signum, frame):
    signal_names = dict((k, v) for v, k in reversed(sorted(signal.__dict__.items()))
        if v.startswith('SIG') and not v.startswith('SIG_'))

    print 'Signal handler called with signal', signum
    print "Signal handled: %s" % signal_names[signum]

# Set the signal handler and a 5-second alarm
signal.signal(signal.SIGINT, handler)
signal.signal(signal.SIGTERM, handler)
signal.signal(signal.SIGHUP, handler)
# signal.signal(signal.SIGKILL, handler)

while True:
    print "I'm still working..."
    time.sleep(1) 

