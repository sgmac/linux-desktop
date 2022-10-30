

all: base extra

.PHONY: base extra

# NOTE: --nocofirm should be only using boostraping a new system.
base: 
	sudo  pacman -S --needed --noconfirm  - < ./packages/base.list

extra:
	cd packages && ./install-aur.sh
