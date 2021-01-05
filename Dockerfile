FROM registry.cn-qingdao.aliyuncs.com/speedimages/ruby:2.7.1

WORKDIR /commonweb
# COPY . .
COPY Gemfile* ./
RUN bundle install
RUN bundle exec rails webpacker:install
EXPOSE 3000
#CMD ['rails', 's', '-b', '0.0.0.0', '-p', '3000']