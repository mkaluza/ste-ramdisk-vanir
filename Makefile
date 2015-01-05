boot.cpio:
	cd boot && find . | grep -e ".git" -v | grep -e "[~]$$" -v | cpio -o -H newc > ../boot.cpio
