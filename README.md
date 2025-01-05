# Dockerised Jupyterlab Streamlit

Allows to quickly run up a dockerised Jupyterlab with streamlit port `8501` exposed to view development and bridged network to allow installation of new packages via pip repository.<br>
To get users up and running with a clean python (from your existing installation) and an IDE for personal Data Science development.<br>
Storage mapping `documents/jupyterlab_data` from your machine to `work` directory in jupyterlab.

## Requirement
- Docker installed on your machine
- https://www.docker.com/products/docker-desktop/

Docker Desktop recommended to allow GUI to start/stop service once setup.

## Clone/copy Repository
Use Git clone or download the repository
```
git clone https://github.com/emdad-i/Dockerised-Jupyterlab-streamlit.git
```

## Change directory into folder
```
cd Dockerised-Jupyterlab-streamlit
```

## Docker Compose up
Run the container and the network configurations
```
docker compose up
```

Service is available on:
- Jupyterlab http://localhost:8888
- Streamlit http://localhost:8501 (Once you are running the streamlit app within Jupyterlab)

## Stop/Start Container
Can use the Docker Desktop or the CLI

When not required use docker stop to stop service.
```
docker stop jupyterlab
```

To start service again.
```
docker start jupyterlab
```

## Container delete
Can use the Docker Desktop or the CLI

```
docker container rm jupyterlab
```

The mapped volume to your machine `documents/jupyterlab_data` will remain




