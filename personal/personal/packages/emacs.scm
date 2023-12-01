(define-module (personal packages emacs)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (guix gexp)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix status)
  #:use-module (gnu packages tree-sitter)
  #:use-module (gnu packages text-editors)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages emacs-xyz)
  #:use-module (gnu packages compression)
  #:use-module (guix build-system emacs)
  #:use-module ((guix licenses)
		#:prefix license:))


(define-public emacs-combobulate
  (package
   (name "emacs-combobulate")
   (version "0.2")
   (source (origin
	    (method git-fetch)
	    (uri (git-reference
		  (url "https://github.com/mickeynp/combobulate.git")
		  (commit "c7e4670a3047c0b58dff3746577a5c8e5832cfba")))
	    (sha256
	     (base32 "063w2sm0c7xhg3ml31xp870azb0sv7z689lnbnjnbl3rfdy4kg50"))))
   (build-system emacs-build-system)
   (native-inputs (list unzip))
   ;; (arguments (list #:emacs emacs-tree-sitter))
   (synopsis "Structured Editing and Navigation in Emacs")
   (description
    "Combobulate is a package that adds structured editing and movement to a wide range of programming languages.
     Unlike most programming major modes that use error-prone imperative code and regular expressions to determine what's what in your code, Combobulate uses Emacs 29's tree-sitter library.")
   (home-page "https://github.com/mickeynp/combobulate")
   (license license:gpl3+)))

(define-public emacs-zoom
  (package
   (name "emacs-zoom")
   (version "20220411.1126")
   (source (origin
            (method git-fetch)
            (uri (git-reference
                  (url "https://github.com/cyrus-and/zoom.git")
                  (commit "2104abb074682db79b9ff3a748e8e2e760a4d8cf")))
            (sha256
             (base32
              "0wp7a1ibyqll8rpirsiazpf51lnd0q3yrya9pqvlx9ik5r41jp2m"))))
   (build-system emacs-build-system)
   (home-page "https://github.com/cyrus-and/zoom")
   (synopsis "Fixed and automatic balanced window layout")
   (description
    "This minor mode takes care of managing the window sizes by enforcing a fixed and
automatic balanced layout where the currently selected window is resized
according to `zoom-size which can be an absolute value in lines/columns, a ratio
between the selected window and frame size or even a custom callback.")
   (license #f)))

