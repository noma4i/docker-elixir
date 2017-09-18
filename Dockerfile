FROM trenpixster/elixir:1.4.1

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8 &&\
    echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" > /etc/apt/sources.list.d/pgdg.list &&\
    apt-add-repository ppa:brightbox/ruby-ng &&\
    apt-get update &&\
    apt-get -yq install postgresql-client-9.4 --no-install-recommends

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    ruby2.4 \
    elixir \
    erlang-tools \
    erlang-parsetools \
    erlang-base-hipe \
    erlang-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
