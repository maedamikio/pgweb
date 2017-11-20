# pgweb

This pgweb works one container.

# docker run

You can run container from Docker Hub or Build Image.

## from Docker Hub

This version is 0.9.10

```
$ docker run -d -p 8081:8081 --name pgweb maedamikio/pgweb
```

## from Build Image

```
$ git clone git@github.com:maedamikio/pgweb.git
$ cd pgweb
$ docker build -t pgweb .
$ docker run -d -p 8081:8081 --name pgweb pgweb
```

# Sign In

```
http://localhost:8081/
```

# Authors

* **MAEDA Mikio** - [Twitter](https://twitter.com/maeda_mikio)
