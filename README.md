<h2>Shell scripts to ease management of the xtclang PaaS</h2>

Pull all scripts locally (~/xtclang/utils) and chmod to make executable

/
ports.sh - flushes existing and recreates port forwarding rules 

/paas

* build.sh - builds the PaaS ready to be started
* clear.sh - clears down PaaS and resets configuration
* start.sh - prompts for a new admin password (if run for the first time) for the paas or the existing password to enable the paas
* stop.sh - issues a graceful server shutdown to a running instance of the PaaS

/xvm

* build.sh - Pulls latest xvm repo from github, builds and regenerates executables
* clear.sh - clears down the XVM repo
 


