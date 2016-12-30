# Docker Image `rpmbuild`

> Work in Progress!

Image containing everything needed to build RPM packages (maybe).

## Usage

    docker run -it --rm \
      -v "${PWD}/..":/work \
      -v "${HOME}/.gitconfig":/home/builder/.gitconfig \
      -v "${HOME}/.gnupg":/home/builder/.gnupg \
      mhutter/rpmbuild
