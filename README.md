## Description

A few scripts automating initial Raspberry Pi setup.

## How to run

#### 1. Setup host environment
Setup Python virtual environment:
```bash
python -m pipenv install
```
ans install `sshpass`. For example, on Arch Linux run
```bash
pacman -S sshpass
```

#### 2. Setup Raspberry Pi
Flash the image on an SD card with use of [rpi-imager](https://github.com/raspberrypi/rpi-imager) or 
download an image and flash it manually:
```bash
dd if=YYYY-MM-DD-raspios-buster-armhf-lite.img of=/dev/sdX bs=4M conv=fsync status=progress
```
Put `ssh` file in the boot partition to enable SSH on a Raspberry Pi.

#### 3. Initialize SSH access
It needs to be run only once after first boot
```bash
python -m pipenv run ./rpi4_first_setup.sh
```

#### 4. Secure Raspberry Pi
```bash
python -m pipenv run ./rpi4.sh
```