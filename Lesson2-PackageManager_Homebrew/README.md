# Lesson2: Homebrew

Homebrew is a free and open-source software package management system that simplifies the installation of software on Apple's operating system, macOS, as well as Linux.

## Install Homebrew

Paste this command to install Homebrew.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

To install homebrew on WSL or Linux, see [Homebrew on Linux](https://docs.brew.sh/Homebrew-on-Linux)

## Homebrew Formulae

Homebrew installs packages that you need to their own directory, so you can run `brew install` command anywhere.  
Run `brew install [packagename]` to install the package you need.  
ex: `brew install vim`

## Homebrew Cask

Homebrew Cask installs macOS apps, fonts and plugins and other non-open source software.  
Run `brew install --cask [caskname]` to install the application you need.  
ex: `brew install --cask iterm2`

## Commands cheatsheet

| Command                  | Description             |
| ------------------------ | ----------------------- |
| `brew install package`   | Install a package       |
| `brew uninstall package` | Uninstall a package     |
| `brew upgrade package`   | Upgrade a package       |
| `brew info package`      | List info of package    |
| `brew cleanup package`   | Remove old versions     |
| `brew search package`    | Search for package      |
| `brew update`            | Update brew and cask    |
| `brew upgrade`           | Upgrade all packages    |
| `brew list`              | List installed packages |
| `brew outdated`          | List outdated packages  |
| `brew doctor`            | Diagnose brew issues    |

## Homebrew tips

1. To figure out where your formulae is installed, run `brew --prefix package`.  
   Normally you'll get `/opt/homebrew/opt/package`, but instead, the packages are installed to `/opt/homebrew/Cellar` then link to `/opt/homebrew/opt`.

2. `brew cleanup` doesn't really remove all outdated packages, below are `cleanup` section from brew's man page:

   > For all installed or specific formulae, remove any older versions from the cellar. In addition, old downloads from the Homebrew download-cache are deleted.
   > If --prune=days is specified, remove all cache files older than days.
   > If --dry-run or -n is passed, show what would be removed, but do not actually remove anything.
   > If -s is passed, scrub the cache, removing downloads for even the latest versions of formulae. Note downloads for any installed formulae will still not be deleted. If you want to delete those too: rm -rf $(brew --cache)

   `echo $(brew --cache)` can get the path to those caches, it's default to `~/Library/Caches/Homebrew`

## Credits

[Homebrew](https://github.com/Homebrew)  
[Homebrew Cheatsheet](https://devhints.io/homebrew)
