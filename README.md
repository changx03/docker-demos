# Docker Playground

A bunch of Docker containers for testing different ideas.

## Commands

```bash
# Check all containers (including exited)
docker ps -a

# Compose
docker compose build

docker compose up

# DOWN removes containers
docker compose down

# STOP does NOT remove containers
docker compose stop

# Run a container in a interactive shell
docker compose run --rm -it <SERVICE_NAME> bash
```