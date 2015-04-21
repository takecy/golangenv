ping:
	ansible all -i ./ansible/hosts -m ping

setup:
	ansible all -i ./ansible/hosts -m setup
