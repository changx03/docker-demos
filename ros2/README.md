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
