# Laravel Docker Presentation

This repository offers a basic step-by-step example of Docker basics using Laravel PHP.  Commits are done in order to show how you evolve your containers' configuration to add functionality.

*Be sure to check this file if you are following through the commit history to see if commands need to be run.*


## Requirements

Docker is a linux-based technology and as such you'll need to be running Linux as your main OS, [boot2docker](http://boot2docker.io) or a virtual machine running Linux to go through this repository.

On top of having access to Docker, you will also need a git client to check out this repository and - if needed - move through the steps.  No local install of PHP will be required.


## Commands 

In an effort to keep things simple, this demo will not create any shell scripts or use a container management tool.  Some command line is required however.

When commits require new commands, those commands will be added to this section.

### Trying out a simple web server

**Please ensure all commands are run from the root of the git repository.**

 1. `docker build --tag="nginx-simple" --file="Dockerfile.nginx" .`
 2. `docker images`
 3. `docker run --detach --publish=8080:8080 --name=nginx-simple nginx-simple`
 4. Take a look! Navigate to your host on port _8080_!
 5. Edit or replace any file in `www/public`.
 6. `docker stop nginx-simple`
 7. `docker rm nginx-simple`
 8. ``docker run --detach --publish=8080:8080 --name=nginx-simple --volume="`pwd`/www:/var/www" nginx-simple``
 9. Edit or replace any file in `www/public`.
 10. `docker stop nginx-simple`

## Meta

If you are interested in a more full featured setup that you can use for real projects, be sure to check out my [docker-laravel](https://github.com/atrauzzi/docker-laravel) project.

This demo was created by [Alexander Trauzzi](http://profiles.google.com/atrauzzi).
