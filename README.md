# `sh-ask-yesnoskip`

Simple shell input prompt asks user to answer Yes, No, or Skip.

## Usage

Source the `bin/ask-yesnoskip.sh` library, then call from your scripts.

E.g.,

  ```shell
  $ . ask-yesnoskip.sh
  $ the_choice=$(ask_yesnoskip "What do you choose" "Y")
  Please Yes/no/skip: What do you choose? [Y/n/s]
  ```

## Installation

The author recommends cloning the repository and wiring its `bin/` to `PATH`.

You can also create a symlink to the library (`ask-yesnoskip.sh`) from a location
already on `PATH`, such as `~/.local/bin`.

Or you could clone the project and load the library to evaluate it first,
before deciding how you want to wire it.

Alternatively, you might find that using a shell package manager, such as
[`bkpg`](https://github.com/bpkg/bpkg),
is more appropriate for your needs, e.g.,
`bpkg install -g landonb/sh-ask-yesnoskip`.

### Makefile install

The included `Makefile` can also be used to help install.

- E.g., you could clone this project somewhere and
  then run a `sudo make install` to install it globally:

  ```shell
  git clone https://github.com/landonb/sh-ask-yesnoskip.git
  cd sh-ask-yesnoskip
  # Install to /usr/local/bin
  sudo make install
  ```

- Specify a `PREFIX` to install anywhere else, such as locally, e.g.,

  ```shell
  # Install to $USER/.local/bin
  PREFIX=~/.local/bin make install
  ```

  And then ensure that the target directory is on the user's `PATH` variable.

  You could, for example, add the following to `~/.bashrc`:

  ```shell
  export PATH=$PATH:$HOME/.local/bin
  ```

### Manual install

If you clone the project and want the library functions to be
loaded in your shell, remember to ensure that it can be found
on `PATH`, and then source the library file, e.g.,

  ```shell
  git clone https://github.com/landonb/sh-ask-yesnoskip.git
  export PATH=$PATH:/path/to/sh-ask-yesnoskip/bin
  . ask-yesnoskip.sh
  ```

Enjoy!

