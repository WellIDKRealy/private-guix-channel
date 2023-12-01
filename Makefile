run:
	guix time-machine -C channels.scm -- shell ${packages} -- ${command}

lint-offline:
	guix time-machine -C channels.scm -- shell -- ./lint-packages.scm

lint: lint-offline
