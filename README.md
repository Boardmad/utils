<h2>Shell scripts to ease management of the xtclang PaaS</h2>
[link to MR build script for xvm/platform/examples]

[needs refactored to reflect pulling out the PaaS and XDK fetch and builds plus port forwarding and config]

/paas

* start.sh - prompts for a new admin password (if run for the first time) for the paas or the existing password to enable the paas
* stop.sh - issues a graceful server shutdown to a running instance of the PaaS
* clear.sh - clears down PaaS and resets configuration
* rebuild.sh - rebuilds the PaaS ready to be started

/xvm

Pull all scripts locally (~/xtclang/utils) and chmod to make executable


