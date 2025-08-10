# Cheeses

A web application for creating and managing cheese menus. Read below for
an image based demonstration of the application.

_This application was for an assignment at LaunchCode's Lc101 2018_

## Table of contents

- [Technologies](#technologies)
- [How to run locally](#how-to-run-locally)
  - [Ubuntu](#ubuntu)
- [Screenshots](#screenshots)

## Technologies

- Ruby
- Ruby on Rails
- Embedded Ruby (ERB)
- Tailwind CSS
- HTML
- CSS

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

Then to start server

```bash
 bin/setup
```

## Screenshots
