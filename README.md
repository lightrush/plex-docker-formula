# plex-docker-formula
Salt formula for the official Docker container for Plex Media Server (PMS)

See the full Salt Formulas installation and usage instructions at
http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html.
Refer to pillar.example and defaults.yaml for configurable values.

## BEWARE OF
**Alpha quality**

## Notes
**Tested on Ubuntu only!**
It should work for converting an existing Ubuntu PMS install to a dockerized, Systemd-managed version.
If this is a one-off and you don't have a pillar setup, you could specify your config
as pillar on Salt's command line or put it in defaults.yaml.

## Dependencies
Depends on Docker being already installed!

## Official Docker container for Plex Media Server
The official PMS Docker container documentation can be found here:
https://hub.docker.com/r/plexinc/pms-docker/
