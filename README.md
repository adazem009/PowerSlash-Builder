# PowerSlash-Builder
PowerSlash OS Builder - SMC PC code creator

Please read the readme for FSSC Builder first: https://github.com/adazem009/FSSC-Builder

## setup.sh
The `setup.sh` file can be used to add custom configs for your OS.

### Example - EBL
You can use the `setup.sh` file to add EBL (EarthOS Bootloader) to your OS.

```
!/bin/bash

# setup.sh
# Project specific code goes here
#
# Project name
proj="MyOS"
# Custom code
rm -rf ./content/os/ebl
git clone https://github.com/adazem009/EBL ./content/os/ebl
rm -rf ./content/os/ebl/.git
rm ./content/os/ebl/LICENSE
rm ./content/os/ebl/README.md
echo "/boot/entry.conf" > ./content/os/ebl/entries.list #Optional - this creates a boot entry for your OS
```
Change the value of `proj` to your OS name. Spaces are not recommended, but they might work! Then, replace `os` in the paths with the path you assigned for your partition.

## Building
After you configured the disks, partitions, setup.sh and put your OS code in the content directory, you're now ready to build your operating system and create a PC code.

The `build-os.sh` script will do everything for you. Just make sure you run it from the PowerSlash-Builder directory.
```
chmod +x build-os.sh
./build-os.sh
```
If you get any errors, read them carefully and check if the error is a compiler error (there's a mistake in your code, or there's a bug in the compiler; PowerSlash builder will let you know which file is wrong) or it comes from FSSC builder (check your disk and partition configs). If you still have troubles, please contact me by opening an issue or sending an email to `info@adazem.com`.
