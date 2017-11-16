# Docker Wordpress
This folder contains a `Dockerfile` for building a [Wordpress](https://wordpress.com/)
Docker image.

## Building the image

Clone the repository

        git clone https://github.com/rhoai/docker-wordpress.git
        cd docker-wordpress
        ./build.sh

The default tag for the new image is rhoai/wordpress. If you want to specify a
different tag, pass the -t flag along with the tag name:

    ./build.sh -t new/tag

## Environment Variables

This image is based on the default [Wordpress](https://hub.docker.com/_/wordpress/).
Therefore, it accepts the same environment variables as the base image.

## License
See the license file.

## Contributors

* [Alejadnro Mesa](https://github.com/alejom99)
