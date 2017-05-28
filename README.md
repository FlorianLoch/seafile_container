# florianloch/seafile_basic

## Setup
0. Donwload the latest version of Seafile and untar it into a directory of your choice. It has to be mounted to the docker container as `/seafile`. On first level it should contains a directory like `seafile-server-6.1.0`
1. Run this container in interactive mode by adding `stdin_open: true` and `tty: true` to your `docker-compose.yml` and then running `docker-compose up seafile bash``
2. `cd /seafile/<version>` followed by `./setup-seafile.sh`
3. `./seafile.sh ssh` and `./seahub.ssh`


## Update
Follow the official instructions in the Seafile docs, propably you do not even need to run the container for it, just download, unzip and then run the update scripts locally.

```bash
version=6.1.0
wget https://bintray.com/artifact/download/seafile-org/seafile/seafile-server_${version}_x86-64.tar.gz
tar -xzf seafile-server_${version}_x86-64.tar.gz
rm seafile.tar.gz

cd /var/seafile/seafile-server-${version}/upgrade
# Run the upgrade scripts
```

## Running
Just start it as part of your docker-compose config, no additional steps required anymore.

Example for a docker-compose entry:
```yaml
seafile:
  image: florianloch/seafile_basic
  ports:
  - 8000:8000
  - 8082:8082
  volumes:
  - /var/seafile:/seafile
  stdin_open: true
  tty: true
```