FROM ruby:3.0.1

# Install NodeJS
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends nodejs

# Install yarn, the non-Npm way
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -yqq
RUN apt-get install yarn -y

WORKDIR /usr/src/app

# Install Gems
COPY Gemfile ./
RUN bundle install

# Copy local files to container
COPY . ./
RUN yarn install

# Spin up Rails
EXPOSE 3000
CMD [ "bin/rails", "s", "-b", "0.0.0.0"]