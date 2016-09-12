# Running opan with docker

## Installation
 * [Install Docker](https://docs.docker.com/installation/)

### dockerfile
 * Clone this repo
 * Build image with the commands like:
   `docker build --tag opan .`

### dockerhub
* `docker pull avastsoftware/opan`

## opan server mode

https://metacpan.org/release/App-opan

run service opan:
`docker run --rm --name opan -v /var/lib/opan:/opan -p 8080:8030 opan`

## opan commands

[fetch cpan](https://metacpan.org/pod/distribution/App-opan/script/opan#fetch)
`docker run -v /var/lib/opan/:/opan opan fetch`

## opan as service
### systemd
```
cp opan.service /etc/systemd/system/opan.service
systemctl enable opan.service
```
