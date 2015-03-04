# NTFSX

Mac OS X normally does not allow you to write on NTFS formatted hard drives. [Simplest](http://computers.tutsplus.com/tutorials/quick-tip-how-to-write-to-ntfs-drives-in-os-x-mavericks--cms-21434) way to get wirte access is manually specifying mount options for your drive in the `/etc/fstab` system file by using Native-NTFS. Native-NTFS of Mac OS X is not a stable one. But at least you don't have to waste your precious SSD free space by installing Third Party Driver Packages in Mega Bytes size. NTFSX will help you in easiest and cheapest way. 

> This Script is based on [ntfs.sh](http://sourceforge.net/projects/native-ntfs-osx/).


## Installation

* Open **Terminal**.
* Download [NTFSX](https://github.com/naingyeminn/NTFSX/archive/master.zip) zip file.

```sh
$ curl -LOk https://github.com/naingyeminn/ntfsx/archive/master.zip
```

* Extract master.zip file.

```sh
$ unzip master.zip
```

* Change into the extracted directory in Terminal.

```sh
$ cd ntfsx-master
```

* Run "make" command as root:

```sh
$ sudo make
```

## Uninstall

* Change into `ntfsx-master` directory in Terminal.
* Run Following Command.

```sh
$ sudo make uninstall
```

## Usage

* Insert your NTFS Drive.
* `ntfsx` need Root permission. Use with `sudo`.


### Add Drive

#### Manual Add

* Run `ntfsx` with `-a` or `add` option.

```sh
$ sudo ntfsx -a
(or)
$ sudo ntfsx add
```

* Select drive number you want to add and press Enter.
* The Drive will be opened up in new **Finder** window.
* Type **Quit** or **Exit** to end process.

#### Auto Add

* You don't need to use additional options.

```sh
$ sudo ntfsx
```
* `ntfsx` will find NTFS formatted Drives you connected and mount all these Drives with write permission.
* You will not see the drive in Finder's *Devices*.
* Open **Finder** and nagivates to **Go > Go to Folder...** Menu or press **Shift + Command + G**.
* Type `/Volumes` and press enter.
* Now you can See your Drive in **Volumes** folder and write Data.

## Remove Drive

### Remove

* Run `ntfsx` with `-r` or `remove` option.

```sh
$ sudo ntfsx -r
(or)
$ sudo ntfsx remove
```

* Select drive number you want to remove and press Enter.
* It will remove selected NTFS Drive from `fstab`.
* Type **Quit** or **Exit** to end process.

### Remove All

* Run `ntfsx` with `-R` or `removeall` option.

```sh
$ sudo ntfsx -R
(or)
$ sudo ntfsx removeall
```

* This command will remove all NTFS Drives in `fstab` which are added by `ntfsx`.

---

##License

		DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
			   Version 2, December 2004

	Copyright (C) 2015 Naing Ye` Minn <naingyeminn@gmail.com>

	Everyone is permitted to copy and distribute verbatim or modified 
	copies of this license document, and changing it is allowed 
	as long as the name is changed.

		DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
	TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

	0. You just DO WHAT THE FUCK YOU WANT TO.
