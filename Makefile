MACOS_EFI_DISK=disk1s1
MACOS_EFI_MOUNT=/Volumes/EFI

mount:
	sudo diskutil mount $(MACOS_EFI_DISK)

unmount:
	diskutil unmount $(MACOS_EFI_DISK)

sync-efi:
	rsync -avz --delete EFI/ $(MACOS_EFI_MOUNT)/EFI 
