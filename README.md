# Hugotini #

`Hugotini` is a image for compiling [hugo](http://gohugo.io) in a [Docker](https://www.docker.com) container,
and creating a new image from scratch that contains only the hugo binary. This image uses Dockers multi-stage build available from Docker versions 17.05 and up. Note that because this image uses go get to compile the hugo binary, so the version can change depending on when you build this image as go get uses the master branch for sources.

## Overview ##

* Version **0.1.0**
* Hugo version **0.31-DEV** (at the time of writing 2017/10/25)
