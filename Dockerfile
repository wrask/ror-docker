FROM ruby:3.0.2

RUN apt-get update -qq && apt-get install -y sudo

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y \
      nodejs \
      yarn \
      postgresql-client

ADD rubyapp/. /app

WORKDIR /app

RUN bundle install

EXPOSE 3000

CMD ["bash"]
