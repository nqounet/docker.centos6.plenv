FROM centos:6
MAINTAINER nqounet <mail@nqou.net>

RUN yum -y update; yum clean all
RUN yum groupinstall -y 'Development tools'; yum clean all
RUN yum -y install tar; yum clean all

ENV PLENV_ROOT          /usr/local/plenv
ENV PATH                $PLENV_ROOT/bin:$PATH

RUN git clone git://github.com/tokuhirom/plenv.git $PLENV_ROOT
RUN git clone git://github.com/tokuhirom/Perl-Build.git $PLENV_ROOT/plugins/perl-build/
RUN eval "$(plenv init -)"
