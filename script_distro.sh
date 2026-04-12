sudo apt update #It is used to update the list of available packages and their versions from the repositories.
sudo apt upgrade #It is used to upgrade all installed packages to their latest versions.
sudo apt install -y git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86 #It installs the necessary dependencies and tools to compile the kernel and run QEMU.
git clone --depth 1 https://github.com/torvalds/linux.git
cd linux #This set of commands is used to clone the official Linux repository and enter its folder.
make menuconfig #It is used to open an interactive menu to configure kernel options before compiling.
make -j 2 #It is used to compile the code using 2 parallel processes to speed up the build.
sudo mkdir /boot-files/initramfs #It is used to create the /boot-files/initramfs folder with administrator permissions.
sudo mkdir /boot-files #That command is used to create the /boot-files folder in the root of the system with administrator privileges.
sudo cp arch/x86/boot/bzImage /boot-files/ #sirve para copiar la imagen del kernel compilado (bzImage) al directorio /boot-files/ con permisos de administrador.
cd .. #This is used to move you to the parent directory of the current one.
git clone --depth 1 https://git.busybox.net/busybox 
cd busybox #It is used to clone the official BusyBox repository with minimal history and enter its folder.
make menuconfig #In BusyBox, this is used to customize which commands and utilities will be available in your BusyBox executable.
make -j 2 #generates the main busybox binary using two parallel processes, in case that print error find the line CONFIG_TC=y .config and change it to CONFIG_TC=n. Then run make -j 2 again.
sudo mkdir /boot-files/initramfs #Create the /boot-files/initramfs folder in the root of the system with administrator privileges, so that you can install or copy the initramfs files that will accompany your kernel there.
sudo make CONFIG_PREFIX=/boot-files/initramfs install #It installs the BusyBox compiled files into the specified initramfs directory.
cd /boot-files/initramfs #Changes the current directory to the initramfs folder to start configuring the initial RAM filesystem.
sudo vi init #Creates and opens the 'init' script file using the Vim editor.
#!/bin/sh #Shebang line specifying that the script should be executed using the Bourne shell.
/bin/sh #Command that launches an interactive shell session within the init script.
sudo rm linuxrc #Removes the default 'linuxrc' file which is not needed for this custom initramfs setup.
sudo chmod +x init #Changes the file permissions of the 'init' script to make it executable.
sudo find . | cpio -o -H newc > ../init.cpio #Packages all files in the current directory into a compressed cpio archive for the initramfs.
cd .. #Moves back to the parent directory (/boot-files).
sudo su #Switch to the superuser (root) account to execute subsequent commands with full privileges.
dd if=/dev/zero of=boot bs=1M count=50 #Creates a 50MB empty file named 'boot' filled with zeros to act as a virtual disk image.
mkfs -t fat boot #Formats the 'boot' file with a FAT file system.
syslinux boot #Installs the Syslinux bootloader onto the virtual 'boot' disk image.
mkdir m #Creates a temporary directory named 'm' to be used as a mount point.
mount boot m #Mounts the 'boot' disk image to the 'm' directory to allow file copying.
cp bzImage init.cpio m #Copies the kernel image and the initramfs archive into the mounted disk image.
umount m #Unmounts the disk image to ensure all data is written and the file is no longer busy.
qemu-system-x86_64 -nographic -append "console=ttyS0" -kernel bzImage -initrd init.cpio -drive file=boot,format=raw #Starts the QEMU emulator to boot the custom kernel without a GUI, using the serial console.