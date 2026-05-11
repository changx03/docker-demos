# Docker image for ROS2

## WARNING

Docker compose does not support shell variable like `$HOME`.

## Use `.env` file

In `.env`

```bash
HOME_DIR=${HOME}/workspace/boxfish
```

In `compose.yml`

```yaml
services:
  app:
    volumes:
      - "${HOME_DIR}:/app"
```

Then run `docker compose up`

## With X11 XDisplay support for RVIZ2

```yaml
    volumes:
      # ...
      - "/tmp/.X11-unix:/tmp/.X11-unix:rw"    # X11 socket
    privileged: true
    environment:
      # ...
      - DISPLAY=${DISPLAY}                     # X11 display
      - QT_X11_NO_MITSHM=1                    # Prevent Qt crash
```

```bash
xhost +local:docker
docker compose up -d
```
