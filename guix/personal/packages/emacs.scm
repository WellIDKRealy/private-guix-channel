(define-module (personal packages emacs)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (guix gexp)
  #:use-module (guix download)
  #:use-module (guix status)
  #:use-module (gnu packages text-editors)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages compression)
  #:use-module (guix build-system emacs)
  #:use-module (guix licenses))


(define-public emacs-tree-sitter
  (package
   (inherit emacs-next)
   (name "emacs-tree-sitter")
   (source
    (origin
     (inherit (package-source emacs-next))
     (patches
      (origin-patches (package-source emacs-next)))))
   (arguments
    (substitute-keyword-arguments (package-arguments emacs-next)
				  ((#:configure-flags flags #~'())
				   #~(cons* "--with-tree-sitter" #$flags))))
   (inputs
    (modify-inputs (package-inputs emacs-next)
		   (append tree-sitter)))
   ;;(home-page "https://github.com/masm11/emacs")
   (synopsis "Emacs text editor with @code{tree-sitter} support")
   (description "Emacs build with tree sitter.")))

(define-public comobulate
  (package
   (name "emacs-combobulate")
   (version "0.1")
   (source (origin
	    (method url-fetch)
	    (uri "https://github.com/mickeynp/combobulate/archive/d77698886127fd0da5e5e6186780e16e24b5ae7f.zip")
	    (sha256
	     (base32 "0yp7zzvjbn49jaalx2gkgvxniqsg9xzc5h06kqramcj5s5l6s1qh"))))
   (build-system emacs-build-system)
   (native-inputs (list unzip))
   (arguments (list #:emacs emacs-tree-sitter))
   (synopsis "Structured Editing and Navigation in Emacs")
   (description
    "Combobulate is a package that adds structured editing and movement to a wide range of programming languages.
     Unlike most programming major modes that use error-prone imperative code and regular expressions to determine what's what in your code, Combobulate uses Emacs 29's tree-sitter library.")
   (home-page "https://github.com/mickeynp/combobulate")
   (license gpl3+)))


