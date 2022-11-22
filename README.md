# Homebrew Tap

## What is Homebrew?

Homebrew is a package manager for macOS and Linux. See more at
[brew.sh](https://brew.sh).

## What is a Tap?

A Homebrew _tap_ is a third-party repository providing installable Homebrew
packages (_formulae_) on macOS and Linux. See more at
[docs.brew.sh/Taps](https://docs.brew.sh/Taps).

## How do I install packages from here?

```sh
brew install scarvalhojr/tap/<formula name>
```

You can also add the tap first, which makes formulae within it available in
search results (i.e. `brew search`):

```sh
brew tap scarvalhojr/tap
```

While you may search across taps, it is necessary to use fully qualified name
(i.e. including the `scarvalhojr/tap/` prefix) when refering to formulae in
external taps such as this one outside of search.

## What packages are available?

You can install the latest version of the following projects.

* [aoc-cli](https://github.com/scarvalhojr/aoc-cli)
```sh
brew install scarvalhojr/tap/aoc-cli
```
