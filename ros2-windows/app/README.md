# From the Docker container

This file should be available in `/app` from the Docker container.

- Build Docker image:

```bash
docker build . -t ros2:humble_custom
```

- Run the following to interact with the Docker container:

```bash
docker -it ros2-rviz2 bash
```
