# Docker Container - USB device playground

## Build container

```bash
docker compose build
```

## Run `docker compose` in a interactive shell

```bash
docker compose run --rm -it <SERVICE_NAME> bash
```

## Connect devices after Docker container is running

Volume binding flags: [configure-bind-propagation](https://docs.docker.com/engine/storage/bind-mounts/#configure-bind-propagation)

Instead of using:

```yaml
devices:
    - /dev/bus/usb:/dev/bus/usb
```

Try this (**No difference!**)

```yaml
volumes:
  - /dev/bus/usb:/dev/bus/usb:shared
```

**NOTE** No good solution for hot-plug USB devices when the device isn't available at boot.

