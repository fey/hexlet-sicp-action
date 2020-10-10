# Container image that runs your code
FROM jackfirth/racket:7.8-full

# Copies your code file from your action repository to the filesystem path `/` of the container
WORKDIR /app
COPY entrypoint.sh /entrypoint.sh
COPY tests /app/tests

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]