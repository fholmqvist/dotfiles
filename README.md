# DOTFILES

* suckless/DWM
* suckless/SLSTATUS
* vscode

## HOW TO INSTALL

**PRE-REQUISITES**
```
$ sudo apt-get install build-essential libx11-dev libxinerama-dev sharutils suckless-tools libxft-dev stterm
```

**THESE FILES**
```
$ cd ~/
$ git clone https://github.com/Holmqvist1990/dotfiles
```

**DWM**
```
$ cd ~/
$ mkdir -p suckless
$ cd suckless
$ git clone https://git.suckless.org/dwm
$ cd dwm
$ wget http://dwm.suckless.org/patches/autostart/dwm-autostart-20210120-cb3f58a.diff
$ git apply dwm-autostart-20210120-cb3f58a.diff
$ cp ~/dotfiles/suckless/dwm_config.def.h config.def.h
$ sudo make clean install
```

**SLSTATUS**
```
$ cd ~/suckless
$ git clone https://git.suckless.org/slstatus
$ cd slstatus
$ cp ~/dotfiles/suckless/sls_config.def.h config.def.h
$ sudo clean make install
```

**ST**
```
$ cd ~/suckless
$ git clone https://git.suckless.org/st
$ cd st
$ wget https://st.suckless.org/patches/scrollback/st-scrollback-0.8.5.diff
$ git apply st-scrollback-0.8.5.diff
$ sudo make clean install
```

**autostart.sh**
```
$ cd ~/
$ mkdir .dwm
$ cd .dwm
$ cp ~/dotfiles/suckless/autostart.h autostart.h
$ chmod 777 autostart.sh
```

**VSCODE**
```
$ sudo apt install code
```
