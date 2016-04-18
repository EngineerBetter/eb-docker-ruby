FROM ruby:2.3.0

RUN apt-get -y update
RUN apt-get -y install qt5-default libqt5webkit5-dev

RUN gem install jekyll capybara-webkit

