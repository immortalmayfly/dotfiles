function grubup
    if type -q grub-mkconfig
	sudo grub-mkconfig -o /boot/grub/grub.cfg
    else
	sudo grub2-mkconfig -o /boot/grub2/grub.cfg
    end	
end    
