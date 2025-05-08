# Calculator Project

A simple calculator project with GitHub Actions workflow for testing.

## Features

- Basic calculator functionality
- Automated testing with pytest
- GitHub Actions workflow for continuous integration
- Makefile for easy setup and testing

## Setup

1. Clone the repository
2. Install dependencies using make:
   ```bash
   make venv
   ```

## Running Tests

Run the tests using make:
```bash
make test
```

This will automatically create a virtual environment if it doesn't exist.

## Cleaning Up

To clean up generated files and virtual environment:
```bash
make clean
```

## GitHub Actions

The project includes a GitHub Actions workflow that:
- Runs on push to main branch
- Runs on pull requests to main branch
- Tests against Python 3.9, 3.10, and 3.11
- Installs dependencies and runs pytest 
