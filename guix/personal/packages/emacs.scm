(define-module (personal packages emacs)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (guix gexp)
  #:use-module (guix download)
  #:use-module (guix status)
  #:use-module (gnu packages tree-sitter)
  #:use-module (gnu packages text-editors)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages emacs-xyz)
  #:use-module (gnu packages compression)
  #:use-module (guix build-system emacs)
  #:use-module (guix licenses))


(define-public comobulate
  (package
   (name "emacs-combobulate")
   (version "0.2")
   (source (origin
	    (method git-fetch)
	    (uri (git-reference
		  (url "https://github.com/mickeynp/combobulate.git")
		  (commit "c7e4670a3047c0b58dff3746577a5c8e5832cfba")))
	    (sha256
	     (base32 "10fdzkkhsig7482in33i20mfady71bgm9k0dyncqsf1wzf6kn2nr"))))
   (build-system emacs-build-system)
   (native-inputs (list unzip))
   (arguments (list #:emacs emacs-tree-sitter))
   (synopsis "Structured Editing and Navigation in Emacs")
   (description
    "Combobulate is a package that adds structured editing and movement to a wide range of programming languages.
     Unlike most programming major modes that use error-prone imperative code and regular expressions to determine what's what in your code, Combobulate uses Emacs 29's tree-sitter library.")
   (home-page "https://github.com/mickeynp/combobulate")
   (license gpl3+)))



