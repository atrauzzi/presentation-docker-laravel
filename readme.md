# Laravel Docker Presentation

This repository offers a basic step-by-step example of Docker basics using Laravel PHP.  Commits are done in order to show how you evolve your containers' configuration to add functionality.

*Be sure to check this file if you are following through the commit history to see if commands need to be run.*


## Requirements

Docker is a linux-based technology and as such you'll need to be running Linux as your main OS, [boot2docker](http://boot2docker.io) or a virtual machine running Linux to go through this repository.

On top of having access to Docker, you will also need a git client to check out this repository and - if needed - move through the steps.  No local install of PHP will be required.


## Commands 

In an effort to keep things simple, this demo will not create any shell scripts or use a container management tool.  Some command line is required however.

When commits require new commands, those commands will be added to this section.

### Adding Laravel and PHP-FPM

**Please ensure all commands are run from the root of the git repository.**

 1. `docker build --tag="php-fpm" --file="Dockerfile.php-fpm" .`
 2. ``docker run --detach="true" --env="APP_DEBUG=true" --env="APP_ENV=local" --volume=`pwd`/www:/var/www --name=php-fpm php-fpm``

 

## Meta

If you are interested in a more full featured setup that you can use for real projects, be sure to check out my [docker-laravel](https://github.com/atrauzzi/docker-laravel) project.

This demo was created by [Alexander Trauzzi](http://profiles.google.com/atrauzzi).
