# MySQLTeleporter

Base Image: debian:wheezy


Todo: 



Step 1: Build the Container

```
docker build -t="sogos/Protractor" github.com/sogos/Protractor
```

Step 2: Run the Container

```
docker run -v /local_volumes:/tmp  -t -i sogos/Protractor
```

