#!/bin/sh

sudo apt-get update

if ! command -v python3 > /dev/null ; then
    # https://www.python.org/
    echo "Installing Python 3"
    sudo apt-get install python3 -y
fi

if ! command -v pipenv > /dev/null ; then
    # https://docs.pipenv.org/
    echo "Installing Pipenv"
    pip3 install pipenv --user
fi

if ! command -v pg_ctl > /dev/null ; then
    # https://www.postgresql.org/
    echo "Installing PostgreSQL"
    sudo apt-get install postgresql -y
fi

if ! command -v make > /dev/null ; then
    # https://www.gnu.org/software/make/
    echo "Installing GNU make"
    sudo apt-get install make -y
fi
