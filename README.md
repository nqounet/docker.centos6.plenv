# Docker base image for managing Perl versions with plenv

Based `centos:6`.

## USAGE

### Dockerfile
```
FROM nqounet/plenv:latest
RUN plenv install 5.20.3 --noman
RUN plenv global 5.20.3
RUN plenv install-cpanm
```

### Build
```
$ docker build -t my-perl .
$ docker run --rm my-perl plenv exec perl -v
```

## SEE ALSO
- [moltar/docker.plenv](https://github.com/moltar/docker.plenv)
