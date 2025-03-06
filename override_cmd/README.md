# Override `CMD` in the base image

## Procedure  

```bash
# Build base image and give it a Tag
docker build -t busy-base:latest -f ./Dockerfile.base .

```

- `-t` Tag
- `-f` Dockerfile name
- `.` Context

## NOTES

- Environment variables set during the build process are not persisted in the final image. 
- `CMD` in the image will be override by the last Dockerfile.
