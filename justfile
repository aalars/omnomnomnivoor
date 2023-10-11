django *cmd:
	docker compose run --rm django python manage.py {{cmd}}

python *cmd:
    docker compose run --rm django {{cmd}}

django-bash:
    docker compose run --rm django bash

postgres-bash:
    docker compose run --rm postgres bash

up:
	docker compose up -d
	docker compose logs -f

down:
    docker compose down

docker:
    docker compose down
    docker compose up -d --build
    docker compose logs -f

build:
	docker compose build

migrate:
    @echo "Migrating..."
    @just django migrate

makemigrations:
    @echo "Making migrations..."
    @just django makemigrations

shell_plus:
    @echo "Starting shell..."
    @just django shell_plus

shell:
    @echo "Starting shell..."
    @just shell_plus

poetry *cmd:
    docker compose run --rm django poetry {{cmd}}

poetry-add *cmd:
    @echo "Adding package..."
    @poetry add {{cmd}}

poetry-remove *cmd:
    @echo "Remove package..."
    @poetry remove {{cmd}}

poetry-lock:
    @echo "Locking dependencies..."
    @poetry lock

black:
    @echo "Formatting with black..."
    @just python black .

isort:
    @echo "Formatting with isort..."
    @just python isort .

format:
    @echo "Formatting..."
    @just black
    @just isort