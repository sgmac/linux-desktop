

all: base extra infra container-tools

.PHONY: base extra

# NOTE: --nocofirm should be only using boostraping a new system.
base: 
	sudo  pacman -S --needed --noconfirm  - < ./packages/base.list

extra:
	cd packages && ./install-aur.sh
infra: 
	sudo  pacman -S --needed --noconfirm  - < ./packages/infra-tools.list

container-tools: 
	sudo  pacman -S --needed --noconfirm  - < ./packages/container-tools.list
