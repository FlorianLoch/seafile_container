# florianloch/seafile_basic

## Setup
0. Donwload the latest version of Seafile and untar it into a directory of your choice. It has to be mounted to the docker container as `/seafile`. On first level it should contains a directory like `seafile-server-6.1.0`
1. Run this container in interactive mode by adding `stdin_open: true` and `tty: true` to your `docker-compose.yml` and then running `docker-compose up seafile bash``
2. `cd /seafile/<version>` followed by `./setup-seafile.sh`
3. `./seafile.sh ssh` and `./seahub.ssh`

## Running
Just start it as part of your docker-compose config, no additional steps required anymore.