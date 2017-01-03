# Docker Image `rpmbuild`

Image containing everything needed to build RPM packages (maybe).

Docker Hub: [mhutter/rpmbuild][hub]

## Usage

    docker run -it --rm \
      -v "${PWD}":/home/builder/rpmbuild/SOURCES \
      mhutter/rpmbuild


[hub]: https://hub.docker.com/r/mhutter/rpmbuild/
