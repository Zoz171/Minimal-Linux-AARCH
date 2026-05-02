qemu-system-aarch64 \
    -machine virt \
    -cpu cortex-a57 \
    -nographic \
    -smp 1 \
    -m 512M \
    -kernel linux/arch/arm64/boot/Image \
    -drive format=raw,file=sdcard.img,if=virtio \
    -append "console=ttyAMA0 root=/dev/vda1 rw rootwait init=/init"