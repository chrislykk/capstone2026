# capstone2026
db repo for the capstone project

# HRS Capstone: Local MySQL Setup (Docker)

This gets a MySQL 8.0.46 database running on your computer in a few minutes, with a web-based admin page so you can look at tables without writing any code. Everyone on the team ends up with the same setup.

## What you need

- Windows 10/11, macOS, or Linux
- About 2 GB of free disk space
- On Windows: virtualization enabled in BIOS (usually already on)

## 1. Install Docker Desktop

1. Download Docker Desktop from https://www.docker.com/products/docker-desktop/
2. Install it. On Windows, leave "Use WSL 2" checked.
3. Restart if asked, then open Docker Desktop and wait until it says it is running (green status in the bottom left).
4. Confirm it works. Open a terminal (PowerShell on Windows, Terminal on Mac) and run:

   docker --version
   docker compose version

   Both should print a version number.

## 2. Get the project files

Put these files in one folder, for example `hrs-mysql`:

- docker-compose.yml
- initdb/ (folder with the .sql schema file)
- .env.example (optional, see step 6)

## 3. Start the database

In your terminal, go into that folder and start everything:

   cd path\to\hrs-mysql
   docker compose up -d

The first run downloads the images, so give it a couple of minutes. Check that it is healthy:

   docker compose ps

Wait until `hrs-mysql` shows `healthy`.

## 4. Look at the database in your browser

Open http://localhost:8080 and log in with:

| Field    | Value        |
|----------|--------------|
| System   | MySQL        |
| Server   | db           |
| Username | hrs_user     |
| Password | hrs_pw       |
| Database | hrs          |

## 5. Connect from other tools (optional)

Use these settings in MySQL Workbench, DBeaver, or code:

| Setting  | Value        |
|----------|--------------|
| Host     | 127.0.0.1    |
| Port     | 3306         |
| User     | hrs_user     |
| Password | hrs_pw       |
| Database | hrs          |

The admin account is `root` with password `hrs_root_pw`. These are throwaway development passwords for your own laptop. Never reuse them anywhere real.

## 6. Changing the passwords (optional)

Copy `.env.example` to `.env`, edit the values, then start the database. Do this before the first start. Once the database has been created, changing `.env` does nothing unless you reset (see below).

## Everyday commands

| Task                         | Command                          |
|------------------------------|----------------------------------|
| Start                        | docker compose up -d             |
| Stop (keeps your data)       | docker compose down              |
| See logs                     | docker compose logs -f db        |
| Open a MySQL prompt          | docker exec -it hrs-mysql mysql -uhrs_user -phrs_pw hrs |
| Reset everything (deletes all data) | docker compose down -v    |

## Loading the schema

Any `.sql` file in the `initdb` folder runs automatically, in alphabetical order, the first time the database is created. Name files like `01-schema.sql`, `02-seed-data.sql`.

If you change those files later, they will not re-run on their own. Reset to re-run them:

   docker compose down -v
   docker compose up -d

Warning: this wipes everything you entered in the database.

## Troubleshooting

**"port is already allocated" or 3306 in use.** Another MySQL is running on your machine. Either stop it, or change the left side of the port mapping in `docker-compose.yml` to `"3307:3306"` and connect on port 3307.

**"Cannot connect to the Docker daemon."** Docker Desktop is not running. Open it and wait for the green status.

**Container keeps restarting.** Run `docker compose logs db`. The most common cause is an error in a .sql file in `initdb`. Fix the file, then reset with `docker compose down -v`.

**Windows: WSL 2 error on install.** Open PowerShell as administrator, run `wsl --install`, restart, and try again.

**Changed a password and it did not take effect.** Passwords are set only on first creation. Reset with `docker compose down -v`, then start again.

## Notes for the team

- Table names are case-insensitive in this setup (`lower-case-table-names=1`) so the schema behaves the same on Docker and on a native Windows MySQL install. Stick to lowercase names anyway.
- Everyone has their own separate local copy. Changes you make in your database do not appear on anyone else's. Share schema changes by updating the .sql files in `initdb`, not by sharing the container.
