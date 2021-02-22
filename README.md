# Rocketseat's NLW 4

An API built using [Phoenix Framework](https://www.phoenixframework.org/) and Docker and Docker Compose

--- 

## 🛠 Installation

### NOTE: The Elixir's development docker doesn't work yet

First of all, you need to download Phoenix's dependencies:

```bash
mix deps.get
```

Make sure you have Docker installed and running on your system and run the below code to initialize Postgres:

```bash
docker-compose up -d
```

After that, you need to create the default database:

```bash
mix ecto.setup
```

---

## 🏃‍♂️ Running

Open your browser at:

http://localhost:4000/api/numbers

---

## Testing

```bash
mix test
```