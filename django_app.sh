#!/bin/bash

code_clone() {
    echo "Cloning code..."
    if [ -d "django_notes_app" ]; then
        echo "Code directory exists, skipping..."
    else
        git clone https://github.com/LondheShubham153/django-notes-app.git || {
            echo "Failed to clone repository"
            return 1
        }
    fi
}

install_req() {
    echo "Installing requirements..."
    sudo apt-get update && sudo apt-get install -y docker.io nginx docker-compose || {
        echo "Failed to install dependencies"
        return 1
    }
}

required_restart() {
    echo "Performing required restart..."
    sudo chown "$USER" /var/run/docker.sock && \
    sudo systemctl enable docker && \
    sudo systemctl enable nginx && \
    sudo systemctl restart docker || {
        echo "Failed to restart services"
        return 1
    }
}

deploy_app() {
    echo "Building app..."
    cd /home/ubuntu/shell/django-notes-app/
    sudo chmod -R +r /home/ubuntu/shell/django-notes-app/data
    docker build -t notes-app . && \
    docker-compose up -d || {
        echo "Failed to build or run the app"
        return 1
    }
}

# Function calls (optional — add as needed)
code_clone
install_req
required_restart
deploy_app

echo "******************** Deployment completed. Welcome to Notes App *****************************"

