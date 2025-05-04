# Illini Metagamers Site

## Installation instructions

1. run `composer install`
2. run `php please make:user`
3. run `npm i` && `npm run dev`

## Environment file contents

### Development

3 Options:
1. Download and install composer with statamic
2. Use the Nix Package Manager with devenv
  - If you have the nix package manager installed with the `devenv` and `direnv` packages, you should be loaded into the devenv shell with composer and statamic installed.
3. Run the dockerfile (TODO)

Copy the .env.example file to begin development with:
```sh
cp .env.example .env
```

Install composer and npm packages

```sh
composer install && npm install
```

Then to start the web server, run:
```sh
composer run dev
```