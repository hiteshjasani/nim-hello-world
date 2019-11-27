# nim-hello-world

![](https://github.com/hiteshjasani/nim-hello-world/workflows/Build%20Native/badge.svg)
![](https://github.com/hiteshjasani/nim-hello-world/workflows/Build%20Docker%20Image/badge.svg)

Experimenting with github actions on a Nim project.

Nim is not a supported language with `actions` yet so I started to
experiment with different ways to build a Nim project.  There are two
so far:

* Native Build
* Docker Image Build

## Native Build

The code for the native build is found in
[build.yml](.github/workflows/build.yml).  It sets up a nim
environment by using `choosenim` to build the nim compiler.  Once
built, both nim and nimble are cached for subsequent runs in this same
repository.  The cache isn't shared with other repositories
unfortunately.

It compiles the executable and publishes it as a build artifact.

## Docker Image Build

The code for this one is stored in
[build-docker.yml](.github/workflows/build-docker.yml).  In this case,
we're using Docker image base that already has Nim and Nimble
installed in it.  Shoutout to
[nimlang/nim](https://hub.docker.com/r/nimlang/nim) for providing this
excellent resource!

The docker build uses the [ubuntu-1.0.2 docker
file](dockerfiles/ubuntu-1.0.2) to build our executable and create a
final image that does not have our source code in it.


## Resources

To learn more, see the following:

* [Nim docker images - nimlang/nim](https://hub.docker.com/r/nimlang/nim)
* [Docker multi-stage builds](https://docs.docker.com/develop/develop-images/multistage-build/)
* [Dockerfile best practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)
* [Using Docker with Github Packages](https://help.github.com/en/github/managing-packages-with-github-packages/configuring-docker-for-use-with-github-packages)
