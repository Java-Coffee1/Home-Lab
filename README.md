# Home Lab

This repository contains the configuration files and Docker setup for my homelab. I use AI to help write scripts and configuration files, as well as improve readability and organization.

## How to Use

This repository is **not** intended to be a complete step by step guide. Instead, it serves as an example of how I have configured my own homelab. Feel free to use it as inspiration and adapt it to your own environment.

## Core Services

The `Core` folder contains the essential services that the rest of the homelab relies on, including:

* PostgreSQL database
* Traefik reverse proxy
* Authentik single sign-on (SSO)

Traefik and Authentik are deployed using **Docker Swarm**, while the remaining services are deployed using **Docker Compose**.

## Getting Started

Before deploying the services, you will need to create the required Docker networks, such as the `proxy` network, along with any additional networks referenced in the Docker Compose (`.yml`) files.

## Customization

Feel free to add, remove, or modify services to fit your own needs. This repository is designed to be flexible and should be treated as a starting point rather than a finished product.

The `Core` folder provides the foundation for the rest of the homelab, while the remaining folders contain optional services that can be deployed as needed.


## Learning Resources

If you're new to Docker or homelabs, I highly recommend learning the basics before using this repository. This project assumes you have a basic understanding of Docker, Docker Compose, networking, and Linux.

### Getting Started with Docker

If you've never used Docker before, this is an excellent place to start:

* **Docker Tutorial for Beginners**
  https://www.youtube.com/watch?v=DM65_JyGxCo

After you're comfortable with Docker, you can use this repository as an example of how to organize and deploy a larger homelab using Docker Compose, Docker Swarm, Traefik, and Authentik.
