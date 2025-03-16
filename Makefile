COMPILE=JackCompiler.sh
sources:=$(wildcard source/Tetris/*.jack)
vmfiles:=$(patsubst %.jack,%.vm,$(patsubst source/Tetris/%,build/%,$(sources)))


.PHONY: all, build


all: build


build: $(vmfiles)


build/%.vm: source/Tetris/%.jack
	mkdir -p build
	cp -v $< build/
	$(COMPILE) build
