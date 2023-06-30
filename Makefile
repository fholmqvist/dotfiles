.ONESHELL:

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
	cp ~/dotfiles/suckless/dwm_config.def.h config.def.h

slstatus:
	cd ~/suckless
	git clone https://git.suckless.org/slstatus
	cd slstatus
	cp ~/dotfiles/suckless/sls_config.def.h config.def.h

st:
	cd ~/suckless
	git clone https://git.suckless.org/st
	cd st
	wget https://st.suckless.org/patches/scrollback/st-scrollback-0.8.5.diff
	git apply st-scrollback-0.8.5.diff

autostart:
	cd ~/
	mkdir .dwm
	cd .dwm
	cp ~/dotfiles/suckless/autostart.sh autostart.sh
	chmod 777 autostart.sh

code:
	echo "apt install code"

install: suckless dwm slstatus st autostart code

.PHONY: clean suckless dwm slstatus st autostart code install
