.ONESHELL:

prereq:
	sudo apt-get -y install build-essential libx11-dev libxinerama-dev sharutils suckless-tools libxft-dev stterm
	sudo apt-get -y install dwm
	sudo cp /usr/share/xsessions/dwm.desktop{,.bak}
	sudo apt-get purge dwm
	sudo mv /usr/share/xsessions/dwm.desktop{.bak,}

clean:
	rm -rf ~/suckless
	rm -rf ~/.dwm

suckless:
	mkdir -p ~/suckless

dwm:
	cd ~/suckless
	git clone https://git.suckless.org/dwm
	cd dwm
	wget http://dwm.suckless.org/patches/autostart/dwm-autostart-20210120-cb3f58a.diff
	git apply dwm-autostart-20210120-cb3f58a.diff
	cp ~/dotfiles/suckless/dwm_config.def.h config.h

slstatus:
	cd ~/suckless
	git clone https://git.suckless.org/slstatus
	cd slstatus
	cp ~/dotfiles/suckless/sls_config.def.h config.h

st:
	cd ~/suckless
	git clone https://git.suckless.org/st

autostart:
	cd ~/
	mkdir .dwm
	cd .dwm
	cp ~/dotfiles/suckless/autostart.sh autostart.sh
	chmod 777 autostart.sh

mplanner:
	cd /tmp
	git clone https://github.com/Holmqvist1990/mplanner
	cd mplanner
	make install
	rm -rf /tmp/mplanner

code:
	apt-get -y install code

install: prereq suckless dwm slstatus st autostart mplanner

.PHONY: prereq clean suckless dwm slstatus st autostart code install mplanner
