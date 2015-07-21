install:
	install -m755 lattesAuthority /usr/local/bin
	install -m755 init.d/lattesAuthority /etc/init.d
	
	update-rc.d lattesAuthority defaults
	insserv lattesAuthority
