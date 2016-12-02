.PHONY: vagrant vagrant_destroy vagrant_up

vagrant : vagrant_destroy vagrant_up

vagrant_destroy :
	vagrant destroy -f

vagrant_up :
	vagrant up
