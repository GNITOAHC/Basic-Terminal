# Lesson6: Dotfiles

Dotfiles are file that name starts with a dot, they are hidden by your system in default, including `.vimrc`, `.zshrc` etc.  
Dotfiles are configuration files that store your personal preferences. Like `.vimrc` store your vim configuration or `.zshrc` store your z shell configuration.  
Most of us spend amount of time setting up our own dotfiles, but what if we switch to a new device or machine?

## Dotfiles directory

To avoid spending amout of time setting up same configuration on new machine and prevent forgetting your personal setup, dotfiles directory is a great solution.  
Dotfiles directory can store your every dotfiles you want, and it was mostly named as `.dotfiles` under home directory.  
I will show you how to create your own from scratch in the following.

### 1. Creating a dotfiles directory

Go to your home directory and `mkdir .dotfiles`.

### 2. Move dotfiles under dotfiles directory

Move any configuration files or even configuration directory under dotfiles directory.  
Ex: `mv .vimrc .dotfiles` or move the whole directory like `mv ~/.config/nvim .dotfiles`

### 3. Link it to the original directory

After moving dotfiles under dotfiles directory, you'll observe that your configuration disappear. That's because vim, zsh or something like that detect the config file in there default path.  
You'll need to link them back to where they're suppose to be by `ln -s` command to make it work again.  
Take `.vimrc` as an example:

```shell
cd ~
ln -s .dotfiles/.vimrc .    # This will link .vimrc from .dotfiles to home directory
```

### 4. Push it on to your GitHub

1. Create a new repository on GitHub. ps. Do not add any License or Readme files in advance.  
2. Go back to local dotfiles directory and initialize it by `git init`.  
3. Add everything into commit and push it to your GitHub remote repository.

```shell
cd ~/.dotfiles
git init    # Initialize the repo
git add .   # Add everything you need to version control into commit
git commit -m "Add dotfiles"
git remote add origin url   # Replace url with your own repo url, ending with .git
git push -u origin main     # Finally, now you have stored your source code on GitHub
```

## Conclusion

Now you have your very first dotfiles directory, you can modify it as you learn more about them. Or `git clone` it to your new machine without writing them again.
