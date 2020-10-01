#!/bin/bash
echo "Run: "
echo "  less $HOME/cli_demo.log"
echo "And press F or"
echo "  tail -f $HOME/cli_demo.log"

i=1
while true 
do 
    echo "Happy 'less -F' or 'tail -f' demo: $i `date`" >> $HOME/cli_demo.log; 
    ((i=i+1))
    sleep 1; 
done
