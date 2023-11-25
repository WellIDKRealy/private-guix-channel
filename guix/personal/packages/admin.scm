(define-module (personal packages admin)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (guix gexp)
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
		    (commit "959ad6e3ce9f03175932a94d55ce0b4ee90c07b0")))
	      (sha256
	       (base32 "051vr2i9q1c7nccyks0p60a027wnl87pgsrp4vy7m9qdzmjhq7p2"))))
    (build-system copy-build-system)
    (arguments
     '(#:install-plan
       '(("cnet" "bin/")
	 ("rnet" "bin/")
	 ("enet" "bin/"))))
    (home-page "https://github.com/WellIDKRealy/network-convinience-commands.git")
    (synopsis "Convenience commands for dealing with faulty network")
    (description "Commands that are commonly run when dealing with faulty network stack")))
