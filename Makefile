

all: base

.PHONY: base

# NOTE: --nocofirm should be only using boostraping a new system.
base: 
	sudo  pacman -S --needed --noconfirm  - < ./packages/base.list
