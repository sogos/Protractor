# Protractor Docker Container

Base Image: debian:wheezy

(Need https://github.com/benschw/docker-selenium-grid with a name on hub:  selenium-hub)


Todo: 



Step 1: Build the Container

```
docker build -t="sogos/Protractor" github.com/sogos/Protractor
```

Step 2: Run the Container 

```
docker run -v /local_volumes:/tmp -link=selenium-hub:selenium-hub  -t -i sogos/Protractor
```
