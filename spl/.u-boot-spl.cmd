cmd_spl/u-boot-spl := (cd spl && arm-linux-gnueabihf-ld.bfd   -T u-boot-spl.lds  --gc-sections -Bstatic --gc-sections -Ttext 0x00908000 arch/arm/cpu/armv7/start.o --start-group arch/arm/cpu/armv7/built-in.o arch/arm/cpu/built-in.o arch/arm/lib/built-in.o arch/arm/imx-common/built-in.o board/udoo/udoo_neo/built-in.o board/udoo/common/built-in.o common/spl/built-in.o common/built-in.o drivers/i2c/built-in.o drivers/gpio/built-in.o drivers/mmc/built-in.o drivers/serial/built-in.o fs/built-in.o lib/built-in.o --end-group arch/arm/lib/eabi_compat.o -L /usr/lib/gcc-cross/arm-linux-gnueabihf/5 -lgcc -Map u-boot-spl.map -o u-boot-spl)