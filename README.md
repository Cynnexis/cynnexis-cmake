# cynnexis/cmake

Docker image containing CMake apt packages, based on the [ubuntu image](https://hub.docker.com/_/ubuntu).

[Github][github-link]

[Docker Hub][dockerhub-link]

# Download from the Dockerhub

```bash
docker pull cynnexis/cmake
```

# Build

```bash
cd cynnexis-cmake
docker build -t cynnexis/cmake .
```

# Run

In iteractive mode:

```bash
docker run -it cynnexis/cmake bash
```

With a volume (the folder `app/`):

```bash
docker run -it -v ./app:/app cynnexis/cmake bash
```

# Docker Compose

Example of `docker-compose.yml`:

```yaml
version: '3.7'
services:
  my-container:
    container_name: my-container
    build:
     context: .
     dockerfile: Dockerfile
    volumes:
      - './app:/app'
```

Example of `Dockerfile`:

```Dockerfile
FROM cynnexis/cmake

RUN mkdir /app
WORKDIR /app

COPY . .
CMD [ "bash", "-c", "mkdir build/ && cd build/ && cmake -DCMAKE_BUILD_TYPE=Debug -G \"Unix Makefiles\" .. && make && ./app" ]
```

[github-link]: https://github.com/Cynnexis/cynnexis-cmake
[dockerhub-link]: https://hub.docker.com/r/cynnexis/cmake