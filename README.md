# To-Do List Application

This is a basic To-Do List application built using Python and Poetry. This `README.md` file provides step-by-step instructions for setting up the project, managing dependencies, running the application, and using the provided Makefile for streamlined development workflows.

## Table of Contents

1. [Project Overview](#project-overview)
2. [Installation](#installation)
    - [Install Poetry](#install-poetry)
    - [Create a New Project](#create-a-new-project)
3. [Managing Dependencies](#managing-dependencies)
    - [Add Dependencies](#add-dependencies)
    - [Add Development Dependencies](#add-development-dependencies)
4. [Running the Application](#running-the-application)
5. [Poetry Management Commands](#poetry-management-commands)
6. [Using the Makefile](#using-the-makefile)
7. [Continuous Integration](#continuous-integration)
8. [License](#license)

## Project Overview

The To-Do List Application is a simple Python-based project that allows users to manage a list of tasks. The application includes features to add, remove, and list tasks. It is built using Poetry for dependency management and packaging.

## Installation

### Install Poetry

Ensure you have Poetry installed. If not, you can install it using the following command:

```sh
curl -sSL https://install.python-poetry.org | python3 -

Create a New Project
Use Poetry to create a new project named todo_app:

poetry new todo_app
cd todo_app

Managing Dependencies
Add Dependencies
If you need to add dependencies, you can do so with:

poetry add <package_name>

Example:

poetry add pandas numpy requests

Add Development Dependencies
Development dependencies are packages you need during the development phase but not in production. These can include testing frameworks, linters, or documentation tools.

For example, to add pytest and black as development dependencies:

poetry add --group dev pytest black

Running the Application
Running Tests with Poetry
The poetry run command is used to run scripts or commands within the virtual environment managed by Poetry.

poetry run pytest

Activate Poetry Shell
Rather than running poetry run every time, you can activate the Poetry shell:

Activate Poetry Shell:

poetry shell

Run the application:

python manage.py runserver

Find Virtual Environment Path
To find out where Poetry has created the virtual environment, you can use:

poetry env info --path

Poetry Management Commands
Remove a Package
To remove a package:

poetry remove scikit-learn

This command will:

Remove the package from the pyproject.toml file.
Update the poetry.lock file.
Uninstall the package from the virtual environment.
Update a Package
To update a specific package to the latest version:

poetry update numpy

This command will:

Fetch the latest version of the package within the version constraints specified in pyproject.toml.
Update the poetry.lock file to reflect the new version.
To update all dependencies to their latest versions within the specified version constraints:

poetry update

Listing All Installed Packages
To list all the installed packages in the current environment:

poetry show

For more detailed information about each package, including dependencies, you can use:

poetry show -v