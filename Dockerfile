FROM ubuntu:14.04

RUN apt-get -y update
RUN apt-get -y install wget build-essential

RUN wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz \
	&& tar -xzvf chruby-0.3.9.tar.gz \
	&& cd chruby-0.3.9/ \
	&& sudo make install

RUN wget -O ruby-install-0.6.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.0.tar.gz \
	&& tar -xzvf ruby-install-0.6.0.tar.gz \
	&& cd ruby-install-0.6.0/ \
	&& sudo make install

RUN ruby-install ruby-2.3.0 \
	&& gem install bundler
