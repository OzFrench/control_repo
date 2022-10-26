class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCsFaFUSAlgw/cFK/Cb5btfPg2+xyDPpEe1FrvPWSyAH0lTnXBaDyjgMH0rSMJUDAMrBDLO9Nk+HGADeFL+vjQAzgPqFoESnoNrqHCJOdWDVMiZRo92hApCO5Wx6E6eYAPFsL8YuM0N9B+fmKLWS3ecBdtL+2cfIitk1efQSI7rm5QFy7uXeLc3ITdkU2kqzfg5+XWnIX1PXj9iZ7a2WwiLW2D2wF0mpgmhf+O6rpC+Rg55G3UT7wKrbbL8ig8kxVdRhdoisY11U37oSUGCL2uudjvKlzNzZFCRB5fdKkFnZjWB+UtNkVmQAlDsFxFKHXY7WsSt8lgyuK5ApnpQHK9b root@master.puppet.vm',
	}  
}
