(define-module (personal packages admin)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (guix gexp)
  #:use-module (guix build-system copy)
  #:use-module (guix git-download)
  #:use-module ((guix licenses)
		#:prefix license:))

(define-public network-convinience-commands
  (package
   (name "network-convinience-commands")
   (version "0.1")
   (source (origin
	    (method git-fetch)
	    (uri (git-reference
		  (url "https://github.com/WellIDKRealy/network-convinience-commands.git")
		  (commit "91c742a305a62edd857511ecb6b69fbf198edeb9")))
	    (sha256
	     (base32 "14pdi0kn71p139vx503kj70grq8938rnh2rdvrq1dw062g2q9s8p"))))
   (build-system copy-build-system)
   (arguments
    '(#:install-plan
      '(("cnet" "bin/")
	("rnet" "bin/")
	("enet" "bin/"))))
   (home-page "https://github.com/WellIDKRealy/network-convinience-commands.git")
   (synopsis "Convenience commands for dealing with faulty network")
   (description "Commands that are commonly run when dealing with faulty network stack")
   (license license:gpl3)))