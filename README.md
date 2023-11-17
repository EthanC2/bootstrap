# Bootstrap
*Bootstrap* is a collection on scripts for automatically installing all of my common defaults for Debian-based
Linux systems. It installs and configures the network, firewall, shell, filesystem, languages, editors, aliases, and more. 

# Execution
Run: `sudo -E ./bootstrap.sh --run` <br/>
Dryrun: `sudo -E ./boostrap.sh --dry-run`

# Partial Bootstrapping
Since each directory has its own bootstrapping script, you can also run specific scripts in isolation.

# TODO
- Add Network Intrusion-detection system
