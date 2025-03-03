# Docker Volume Mount Demo

Everything `COPY` from `Dockerfile` is burned into the image.
Any change at the runtime will lose after restart.

## Idea

Having a `Volume` mount to the same position.

Any updates at the runtime will store in the Volume. The original files will remain untouched.