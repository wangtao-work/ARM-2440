all:
	arm-none-eabi-gcc-7.2.1.exe -c -o .\led_on.o .\led_on.S
	arm-none-eabi-ld.exe -Ttext 0 .\led_on.o -o .\led_on.elf
	arm-none-eabi-objcopy.exe -O binary -S .\led_on.elf .\led_on.bin
	arm-none-eabi-objdump.exe -D .\led_on.elf > .\led_on.dis

clean:
	rm *.bin *.elf *.o