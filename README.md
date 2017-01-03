# Docker Image `rpmbuild`

> Work in Progress!

Image containing everything needed to build RPM packages (maybe).

## Usage

    docker run -it --rm \
      -v "${PWD}":/home/builder/rpmbuild/SOURCES \
      mhutter/rpmbuild
