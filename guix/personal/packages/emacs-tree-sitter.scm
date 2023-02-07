(use-modules
 (guix packages)
 (guix utils)
 (guix gexp)
 (gnu packages)
 (gnu packages gnome)
 (gnu packages webkit)
 (gnu packages text-editors)
 (gnu packages emacs))

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
				 #~(cons* "--with-xwidgets" "--with-tree-sitter" #$flags))))
 (propagated-inputs
  (list gsettings-desktop-schemas glib-networking))
 (inputs
  (modify-inputs (package-inputs emacs-next)
		 (append tree-sitter)
		 (prepend webkitgtk-with-libsoup2)))
 ;;(home-page "https://github.com/masm11/emacs")
 (synopsis "Emacs text editor with @code{tree-sitter} support")
 (description "Emacs build with tree sitter."))
