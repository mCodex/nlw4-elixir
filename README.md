# Rocketseat's NLW 4

A MVC project using [Phoenix Framework](https://www.phoenixframework.org/) and Docker and Docker Compose

--- 

## 🛠 Installation

### NOTE: The Elixir's development docker doesn't work yet

First of all, you need to download Phoenix's npm dependencies:

```bash
cd assets && npm install && cd ..
```

Make sure you have Docker installed and running on your system and then:

```bash
docker-compose up -d
```

After that, you need to create the default database:

```bash
docker exec nlw4-elixir_app_1 mix ecto.create
```

---

## 🏃‍♂️ Running

Open your browser at:

http://localhost:4000