all: boot.cpio recovery.cpio lvm.cpio

boot.cpio: boot/*
	cd boot && find . | grep -e ".git" -v | grep -e "[~]$$" -v | cpio -o -H newc > ../boot.cpio

recovery.cpio: recovery/*
	cd recovery && find . | grep -e ".git" -v | grep -e "[~]$$" -v | cpio -o -H newc > ../recovery.cpio

lvm.cpio: lvm/*
	cd lvm && find . | grep -e ".git" -v | grep -e "[~]$$" -v | cpio -o -H newc > ../lvm.cpio
