# This is a very crude bash script to capture packets.

## It utilizes tcpdump to capture full snaplen for a given interface. 

**capturePackets.bash** is intended to be run hourly via cron, while **packagePackets.bash** is run daily to generate 
a tarball for download and analysis.

You'll want to edit packagePackets.bash and properly define the path to the capturePackets.bash script.
Ex: capturePacketsPath=/root/rootScripts/
