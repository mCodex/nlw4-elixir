# FROM elixir:alpine

# WORKDIR /app

# RUN apk add --update nodejs npm inotify-tools

# COPY mix.exs .
# COPY mix.lock .

# RUN mix local.hex --force && \
#     mix archive.install hex phx_new 1.5.7 --force && \
#     mix local.rebar --force

# RUN mix deps.get

# ENTRYPOINT [ "mix", "phx.server" ]