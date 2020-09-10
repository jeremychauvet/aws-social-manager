.PHONY: start stop log domain
start:
	symfony server:start -d

stop:
	symfony server:stop

log:
	symfony server:log

domain:
	# Create proxy for domain http://socialmanager.wip
	symfony proxy:domain:attach socialmanager
	symfony proxy:start
