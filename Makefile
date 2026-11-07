.PHONY: sync lint test

sync:
	uv sync

lint:
	uv run ruff check .
	uv run ruff format --check .
	uv run mypy src tests

test:
	uv run pytest -q
