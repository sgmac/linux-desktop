

all: base

.PHONY: base

base: 
	sudo  pacman -S --needed - < ./packages/base.list
