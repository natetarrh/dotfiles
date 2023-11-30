# dotfiles

Just how I like it.

## Setup

- Install homebrew:
```sh
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- Add SSH key:
```sh
$ ssh-keygen -t ed25519 -C "natetarrh@gmail.com"
$ eval "$(ssh-agent -s)"
$ cat ~/.ssh/config || touch ~/.ssh/config
$ cat << EOF >> ~/.ssh/config
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
EOF
$ ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

- Clone repo:
```sh
$ git clone git@github.com:natetarrh/dotfiles.git ~/Developer/dotfiles                                                                                                  │
```

- Install submodules:
```sh
$ git submodule update --init
```

- Install fzf, tmux, and ripgrep:
```sh
$ brew install fzf rg tmux
```

- Create symlinks:
```sh
$ for dotfile in gitconfig tmux.conf vim vimrc zshrc
do
  ln -s ~/Developer/dotfiles/$dotfile ~/.$dotfile
done
```

- Download and install [Input](https://input.djr.com) fonts (14pt Input Mono Narrow, Regular)
- Download and install [base16-mocha](https://github.com/chriskempson/base16-iterm2/blob/master/base16-monokai.dark.256.itermcolors) iTerm color scheme
