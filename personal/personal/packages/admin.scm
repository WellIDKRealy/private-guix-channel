(define-module (personal packages admin)
  #:use-module (guix packages)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages admin)
  #:use-module (gnu packages linux)
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
		  (commit "c4a4b380f70840a1f940e8a07442368fec76439b")))
	    (sha256
	     (base32 "1hgpxynz4h3hpfbsav38fdh1nq9wji4ig1ic9xwm7habk8y5r2vw"))))
   (build-system copy-build-system)
   (inputs (list bash inetutils procps))
   (arguments
    '(#:install-plan
      '(("cnet" "bin/")
	("rnet" "bin/")
	("enet" "bin/"))))
   (home-page "https://github.com/WellIDKRealy/network-convinience-commands.git")
   (synopsis "Convenience commands for dealing with faulty network")
   (description "Commands that are commonly run when dealing with faulty network stack")
   (license license:gpl3)))
