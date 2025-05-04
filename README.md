# Illini Metagamers Site

## Installation instructions

1. run `composer install`
2. run `php please make:user`
3. run `npm i` && `npm run dev`

## Environment file contents

## Getting Started

### Download Prerequisites

3 Options:
1. Download and install composer with statamic
2. Use the Nix Package Manager with devenv
  - If you have the nix package manager installed with the `devenv` and `direnv` packages, you should be loaded into the devenv shell with composer and statamic installed.
3. Run the dockerfile (TODO)

### Setup and Start Creating!

Copy the .env.example file to begin development with:
```sh
cp .env.example .env
```

Install composer and npm packages

```sh
composer install && npm install
```

Initialize the sqlite database with `please`:

```sh
php please migrate
```

Create your own user to login to control panel:
- Enter your email
- Enter your name
- Enter a password
- Select `Yes` for "Super user?"

```sh
php please make:user
```

Then to start the web server, run:
```sh
composer run dev
```

You can access the control panel and create new pages by going to [http://localhost:8000/cp](http://localhost:8000/cp)!

Any changes you make will then be saved locally, you can then use git to commit your changes and then create a pull request on GitHub!