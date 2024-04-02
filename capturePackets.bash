#!/usr/bin/env bash

# capturePackets.bash
# dustin.decker@1on1security.com
# A crude tcpdump capture analysis, intended to be (re)run hourly via cron

# VARS
datestamp=$(date +"%Y-%m-%d-%H")
myLogDir=/var/log/trafficLogs
pidFile=$myLogDir/PID
myPID=$(cat $pidFile)
# VAR

# kill the process ID of the prior hour
kill $myPID

# tcpdump, full capture, eth0, save to file
/usr/bin/tcpdump -s0 -i eth0 -w $myLogDir/$datestamp.pcap & 2>/dev/null

# capture PID to a file we can use to kill the process with next hour
echo $! > $pidFile
