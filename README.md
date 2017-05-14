# Elixir Docker Container

Purpose of this container is to create fully working setup for CircleCI

#Example CircleCI config

```
version: 2
jobs:
  build:
    working_directory: ~/working_dir
    docker:
      - image: noma4i/docker-elixir:latest
      - image: postgres:9.4.1
        environment:
          POSTGRES_USER: postgres
    steps:
      - checkout
      - run: mix local.hex --force
      - run: mix local.rebar --force
      - run: mix do deps.get, compile
      - run: MIX_ENV=test mix ecto.create
      - run: mix test
```
