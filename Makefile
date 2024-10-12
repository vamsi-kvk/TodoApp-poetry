# Makefile for managing a Python project with Poetry

# Install Poetry
install_poetry:
	@# Check if Poetry is installed
	@which poetry > /dev/null 2>&1; \
	if [ $$? -eq 0 ]; then \
		echo "Poetry is already installed"; \
	else \
		echo "Installing Poetry..."; \
		curl -sSL https://install.python-poetry.org | python3 -; \
		echo "Poetry installation complete"; \
	fi

# Install dependencies
install: install_poetry
	@echo "Installing dependencies..."
	poetry install
	@echo "Dependencies installed"

# Run tests
test: install_poetry
	@echo "Running tests..."
	poetry run pytest
	@echo "Tests completed"

# Format code
format: install_poetry
	@echo "Formatting code..."
	poetry run black .
	@echo "Code formatted"

# Lint code
lint: install_poetry
	@echo "Linting code..."
	poetry run pylint --disable=R,C --ignore-patterns=test_.*?py .
	@echo "Linting completed"

# Run all tasks
all: install test format lint

# Deploy (assuming deploy is configured in your CI/CD)
deploy: install_poetry
	@echo "Deploying package..."
	poetry publish --build
	@echo "Deployment completed"