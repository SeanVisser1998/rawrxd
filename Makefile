all: clean setup conversion-mod.so rawrxd

setup:
	mkdir 'GCONV_PATH=.'
	touch GCONV_PATH=.\/rawr
	chmod +x GCONV_PATH=.\/rawr
	mkdir rawr
	echo 'module  UTF-8//    WTFXD//    conversion-mod   1' > rawr/gconv-modules

conversion-mod.so:
	gcc -shared -fPIC -o rawr/conversion-mod.so conversion-mod.c

rawrxd:
	gcc -o rawrxd rawrxd.c

clean:
	rm -rf 'GCONV_PATH=.' rawr rawrxd