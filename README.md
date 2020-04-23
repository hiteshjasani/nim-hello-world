# nim-hello-world

![](https://github.com/hiteshjasani/nim-hello-world/workflows/Test/badge.svg)
![](https://github.com/hiteshjasani/nim-hello-world/workflows/Build%20Native/badge.svg)
![](https://github.com/hiteshjasani/nim-hello-world/workflows/Build%20GH%20Packages%20Image/badge.svg)
![](https://github.com/hiteshjasani/nim-hello-world/workflows/Build%20DockerHub%20Image/badge.svg)

Experimenting with github actions on a Nim project.

Nim is not a supported language with `actions` yet so I started to
experiment with different ways to build a Nim project.

* [Test](.github/workflows/test-image.yml) - Just run tests
* [Native Build](.github/workflows/build-native.yml) - Download and compile nim, build app
* [DockerHub Image Build](.github/workflows/build-image-dockerhub.yml) - Build and publish image to DockerHub
* [Github Packages Build](.github/workflows/build-image-gh-packages.yml) - Build and publish docker image to Github Packages

## Native Build

The code for the native build is found in
[build-native.yml](.github/workflows/build-native.yml).  It sets up a nim
environment by using `choosenim` to build the nim compiler.  Once
built, both nim and nimble are cached for subsequent runs in this same
repository.  The cache isn't shared with other repositories
unfortunately.

It compiles the executable and publishes it as a build artifact.

## Docker Image Builds

The code is available in either

* [build-image-gh-packages.yml](.github/workflows/build-image-gh-packages.yml)
* [build-image-dockerhub.yml](.github/workflows/build-image-dockerhub.yml)

depending on where the final Docker image is published.

We're using Docker base image that already has Nim and Nimble
installed in it so we get to skip the manual install step.

The docker build uses files in [dockerfiles/](dockerfiles) to build the images.


## Resources

To learn more, see the following:

* [Nim docker images - nimlang/nim](https://hub.docker.com/r/nimlang/nim)
* [Docker multi-stage builds](https://docs.docker.com/develop/develop-images/multistage-build/)
* [Dockerfile best practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)
* [Using Docker with Github Packages](https://help.github.com/en/github/managing-packages-with-github-packages/configuring-docker-for-use-with-github-packages)
