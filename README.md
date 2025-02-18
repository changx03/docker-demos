# Docker Playground

A bunch of Docker containers for testing different ideas.

## Commands

```bash
# Check all containers (including exited)
docker ps -a

# Compose
docker compose build

docker compose up -d
# -d Detached mode

# DOWN removes containers
docker compose down

# STOP does NOT remove containers
docker compose stop

# Run a container in a interactive shell
docker compose run --rm -it <SERVICE_NAME> bash

# Use `watch` to watch file changes (Check `docker_compose_quickstart` example)
docker compose watch
```

## Jupyter Container

```bash
# Check Docker container's log (the container name is `jupyter`)
docker logs jupyter

# Execute shell commands on a running container (again, the container name is `jupyter`)
docker exec -it jupyter bash

# Inside the container
jupyter notebook list

```