**Shell scripts to ease management of the xtclang PaaS**

Depends on manual creation of the XVM 

paasstart.sh - prompts for a new admin password (if run for the first time) for the PaaS or the existing password to enable the PaaS
paasstop.sh - issues a graceful server shutdown to a running instance of the PaaS

paasclear.sh - clears down PaaS and resets configuration

passrebuild.sh - rebuilds the PaaS ready for a 'paasstart.sh'
