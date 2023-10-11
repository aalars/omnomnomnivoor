# OmnOmnOmnivoor

![My animated logo](omnomnomnivoor.png)

Just a simple template for initializing a Dockerized Django project with Poetry and Postgres. Made with [Copier](https://github.com/copier-org/copier).

## What's in the box?

Bare minimum for getting started with a new Django project:

- [Django](https://www.djangoproject.com/)
- [Docker](https://www.docker.com/)
- [Poetry](https://python-poetry.org/) - for managing Python dependencies
- [Postgres](https://www.postgresql.org/) with [Psycopg 3](https://www.psycopg.org/psycopg3/)
- [Justfile](https://github.com/casey/just) - for running tasks
- [Django-extensions](https://github.com/django-extensions/django-extensions) - Mostly for the `shell_plus` command
- [Commitlint](https://github.com/conventional-changelog/commitlint) - for linting commit messages
- [Black](https://github.com/psf/black) - for formatting Python code
- [isort](https://pycqa.github.io/isort/) - for sorting imports
- [.gitignore](.gitignore) - from Github's [Python](https://github.com/github/gitignore/blob/main/Python.gitignore) and [Node](https://github.com/github/gitignore/blob/main/Node.gitignore) templates

for complete list, see [pyproject.toml](pyproject.toml)

## How to use it?

1. Install Copier: `pip install copier`
2. Create a new project: `copier copy --vcs-ref master gh:aalars/omnomnomnivoor /part/to/your/project`
3. Answer the questions
4. Done!