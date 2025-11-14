# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Jupyter notebook sandbox environment for data science and machine learning experiments. The repository uses Docker/Docker Compose to provide a consistent development environment based on the `jupyter/datascience-notebook` image.

## Development Environment Setup

### Using Docker Compose (Primary Method)

```bash
# Start the Jupyter environment
docker-compose up

# Access Jupyter at http://localhost:8888/tree
# Default credentials: username=user, password=password
```

The [docker-compose.yml](docker-compose.yml) mounts the [notebooks/](notebooks/) directory to `/home/jovyan/work` inside the container.

### Using DevContainer (Alternative)

This repository includes a [.devcontainer/devcontainer.json](.devcontainer/devcontainer.json) configuration for VS Code DevContainers. The DevContainer setup includes:
- Python environment with pre-configured linting and formatting
- Auto-formatting on save using Black
- Import organization with isort (black profile)
- Linting with flake8, mypy, and bandit enabled

## Repository Structure

```
notebooks/          # Main working directory for Jupyter notebooks
  ├── chap3/       # Training notebooks organized by chapter
  ├── data_science_training.ipynb
  ├── scipy_training.ipynb
  ├── stat_analysis.ipynb
  └── probability_statistics.ipynb
signate/           # Competition-specific notebooks and data
  └── mnist/       # Handwriting recognition competition
```

## Python Environment

The environment is built using [requirements.txt](requirements.txt) and includes:
- **Core ML**: PyTorch, torchvision, scikit-learn
- **Data Processing**: pandas, numpy
- **Visualization**: matplotlib, seaborn
- **Image Processing**: opencv-python, Pillow
- **Code Quality**: black, flake8, mypy

Python path in container: `/opt/conda/bin/python`

## Code Style Standards

When writing Python code or notebooks:
- Use Black for formatting (enforced in DevContainer)
- Follow isort with `--profile black` for import organization
- Line endings must be LF (`\n`)
- Type checking with mypy is enabled
- Flake8 linting is enabled

## Working with Notebooks

All notebook work should be done in the [notebooks/](notebooks/) directory, which is the mounted volume accessible from the Jupyter interface at `/home/jovyan/work`.

The [signate/mnist/](signate/mnist/) directory contains competition-specific work for handwriting recognition challenges. See [signate/mnist/README.md](signate/mnist/README.md) for dataset details.
