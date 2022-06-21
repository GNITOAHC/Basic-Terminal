# Lesson1: Homebrew
Homebrew is a free and open-source software package management system that simplifies the installation of software on Apple's operating system, macOS, as well as Linux.

## Install Homebrew
Paste this command to install Homebrew.  
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Homebrew Formulae
Homebrew installs packages that you need to their own directory.  
Run `brew install [packagename]` to install the package you need.  
ex: `brew install vim`

## Homebrew Cask
Homebrew Cask installs macOS apps, fonts and plugins and other non-open source software.  
Run `brew install --cask [caskname]` to install the application you need. 
ex: `brew install --cask iterm2`
