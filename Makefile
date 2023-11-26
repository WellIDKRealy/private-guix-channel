run:
	guix time-machine -C channels.scm -- shell ${packages} -- ${command}

lint-offline:
	guix time-machine -C channels.scm -- shell -- ./list-packages.scm

lint: lint-offline
