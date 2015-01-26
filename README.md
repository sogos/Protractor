# Protractor Docker Container

Base Image: debian:wheezy


Todo: 



Step 1: Build the Container

```
docker build -t="sogos/Protractor" github.com/sogos/Protractor
```

Step 2: Run the Container 

```
docker run -v /local_volumes:/tmp -link=selenium-hub:selenium-hub  -t -i sogos/Protractor
```
