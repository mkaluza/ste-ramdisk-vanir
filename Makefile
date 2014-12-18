all:
	find . | grep -v Makefile | grep -v ".cpio" | grep -e ".git" -v | grep -e "[~]$$" -v | cpio -o -H newc > ramdisk.cpio
