# Docker Project Ozone 2

This repository allows you to run a Project Ozone 2 Minecraft server using Docker.

## Setup

Clone or download this repository, and then run `make` in the directory where you cloned the repository. That's it.

## Docker image

The Docker image is based on [openjdk:8-jre-alpine](https://hub.docker.com/_/openjdk/), which means that the base image used is quite small (<90MB). Including the modpack after building, the image is only around 470MB.

## Credits

Credits go to [jaysonsantos' original Skyfactory 3 repository](https://github.com/jaysonsantos/docker-minecraft-ftb-skyfactory3https://github.com/jaysonsantos/docker-minecraft-ftb-skyfactory3) which this repository is based on.
