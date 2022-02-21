nasm boot.asm -f bin -o .\bin\boot_sect.bin
qemu-system-x86_64 .\bin\boot_sect.bin