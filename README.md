# NextCloud Dev Env
_Simple docker-based environment for NextCloud development._

**WARNING:** This repository and development workflow is in its early stages. It may not be reliable and may change without notice.

## Usage
1. Update the `DEV_USER_GID` build argument in `docker-compose.yml` to reflect your current user ID (as per `id -u` on Linux).
2. Run `docker-compose build --pull` to build the container using the latest NextCloud 18 base.
3. Run `docker-compose up` to start your development server.
4. Start developing!