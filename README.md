# volatility2docker

This is the original Volatility memory forensics tool, now as a Docker container.
While Volatility 3 exists, it doesn't quite have the same mature feature set as 
the original. This can be ran without having to worry about compability issues 
between Python 3 and Python 2.

##### to build the container from the same directory as the Dockerfile
```
docker build -t volatility2mint .
```
##### to run the container from a host directory with memory images present
```
docker run -it --mount type=bind,source=.,target=/userspace volatility2mint
```
