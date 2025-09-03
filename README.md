# Setup

Various settings and files to setting up a new machine.

* [suckless/dwm](https://dwm.suckless.org/)
* [suckless/slstatus](https://tools.suckless.org/slstatus/)
* [suckless/st](https://st.suckless.org/)
* [vscode](https://code.visualstudio.com/)
* [clangd](https://clangd.llvm.org/)
* [Berkeley Mono](https://usgraphics.com/)

## Installation notes

### Prepreqs
```bash
sudo apt update
sudo apt upgrade
sudo apt -y install build-essential cmake libx11-dev libxinerama-dev sharutils suckless-tools libxft-dev stterm
```

### DWM

Might require additional line:

`static int refreshrate = 60;`

```bash
git clone https://git.suckless.org/dwm
cd dwm
wget http://dwm.suckless.org/patches/autostart/dwm-autostart-20210120-cb3f58a.diff
git apply dwm-autostart-20210120-cb3f58a.diff
cp ../dotfiles/dwm_config.def.h config.h
sudo make clean install
```

Sometimes some dependencies aren't available, in which you can install by apt first:
```bash
sudo apt install dwm
```

Remember to `make clean install` after to override.

### SLSTATUS
```bash
git clone https://git.suckless.org/slstatus
cd slstatus
cp ../dotfiles/sls_config.def.h config.h
sudo make clean install
```

### Berkeley Mono

Download from [website](https://usgraphics.com/).

```bash
mkdir -p ~/.local/share/fonts
# unzip there
sudo fc-cache -fv
```

### Vscode

See [installation instructors for Linux](https://code.visualstudio.com/docs/setup/linux#_install-vs-code-on-linux).

**Plugins:**
* clangd
* Go
* hacker dark PRO
* Material Icon Theme
* Prettier - Code formatter
* Visual Studio Keymap

### Clangd

Automatically installed via Vscode plugin.
