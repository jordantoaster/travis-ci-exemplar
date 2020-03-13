# travis-ci-exemplar

This code base contains an example that demonstrates how Travis CI can be applied to a simple Python project to:

- Run automated unit testing for the source code.
- Build a Docker image and push to Docker Hub as a usuable artifact.

## Setup

1. Ensure your project has included the TravisCI Github App, see below.

<https://github.com/marketplace/travis-ci>


2. Add Required environment variables to the TravisCI CLI or web application, as per your preference. These need configured with your personal DockerHub details and desired output Docker image name.

``DOCKER_USERNAME=???``

``DOCKER_PASSWORD=???``

``IMAGE=<username>/<image-name>``

3. At the project root, run: 

``make initialise-environment``

This will setup the local virtual environment with required depedencies, if you desire to augment the example function.

## Build

Upon each push to the remote respitory a Travis CI build will initiate. Within the Github UI, you will be able to navigate to the Travis CI web GUI to see the build results via the Github 'checks' functionality, to see the results of a build else you can rely on the traditional ``green tick`` or ``red x`` indicators.

## TODO
- Develop in Docker.
- Run Only on PR
- AWS Integration to EC2
- Docker Compose
- Change to use the deploy phase in travis rather than after success.