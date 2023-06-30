# DOTFILES

Contains settings for the following programs:

* [suckless/dwm](https://dwm.suckless.org/)
* [suckless/slstatus](https://tools.suckless.org/slstatus/)
* [suckless/st](https://st.suckless.org/)
* [vscode](https://code.visualstudio.com/)

`Makefile` installs these.

## HOW TO INSTALL

1. **INSTALL PRE-REQUISITES**
    ```bash
    $ sudo apt-get install build-essential libx11-dev libxinerama-dev sharutils suckless-tools libxft-dev stterm
    ```

2. **CLONE THIS REPO**
    ```bash
    cd ~/
    git clone https://github.com/Holmqvist1990/dotfiles
    ```

3. **RUN MAKEFILE**
    ```bash
    cd ~/dotfiles
    make clean install
    ```
