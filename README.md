# Cheese Catalog

A web application managing a catalog of cheeses.

_This application was for an assignment at LaunchCode's Lc101 2018 (originally named Cheese MVC Persistent)._

## Table of contents

- [Technologies](#technologies)
- [How to run locally](#how-to-run-locally)
  - [Ubuntu](#ubuntu)
- [Screenshots](#screenshots)
- [Note to self](#note-to-self)

## Technologies

- Ruby
- Ruby on Rails
- Embedded Ruby (ERB)
- Tailwind CSS
- HTML
- CSS
- Copilot (Images)

## How to run locally

### Ubuntu

Assumes Ruby is installed and you are located in the `src` folder of this project.

Old way (i.e. DEPRECATED)

```bash
bundle install --path vendor/bundle
```

You'd get the following:

```bash
[DEPRECATED] The `--path` flag is deprecated because it relies on being remembered across bundler invocations, which bundler will no longer do in future versions. Instead please use `bundle config set path 'vendor/bundle'`, and stop using this flag
```

So use the following instead:

```bash
bundle config set path 'vendor/bundle'
bundle install
```

This will run a setup script for installing gems, setting up the database, setting up the environment(s), and start the server.

```bash
 bin/setup
```

Start the server, specifically

```bash
bin/rails server
```

[Visit http://127.0.0.1:3000](http://127.0.0.1:3000)

## Screenshots

## Note to self

The folder structure of this repository is not ideal in that all of the application specific folders and files (including things like databases, configs, package data, etc) are at the root of the repository alongside other files and folders non essential to the software. Normally, I would place all application specific code in a subfolder such as `src` or `application`, but all of the Ruby and Rails tooling thus far assume said files are located at the root. For example, the `.gitignore`, `.github`, the `Ruby LSP` VS code extension, etc. I tried structuring things my own way, but found it wasn't worth the trouble. So for the time being everything is more-or-less at the root of this repo.
