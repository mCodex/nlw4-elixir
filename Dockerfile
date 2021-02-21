FROM elixir:alpine

ENV APP_HOME /app

RUN mkdir $APP_HOME

WORKDIR $APP_HOME

RUN mix local.hex --force && \
    mix archive.install hex phx_new 1.5.7 --force && \
    mix local.rebar --force

ENTRYPOINT [ "mix", "phx.server" ]