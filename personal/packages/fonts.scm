(define-module (personal packages fonts)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system font)
  #:use-module ((guix licenses)
		#:prefix license:))

(define-public oldshool-pc-fonts
  (package
   (name "oldschool-pc-fonts")
   (version "2.0")
   (source (origin
	    (method url-fetch)
	    (uri "https://int10h.org/oldschool-pc-fonts/download/oldschool_pc_font_pack_v2.2_linux.zip")
	    (sha256
	     (base32 "0nfpld0in6a3fsmq5d8i35587j0k3387slg7igfx46lkr7nc63dk"))))
   (build-system font-build-system)
   (home-page "https://int10h.org/oldschool-pc-fonts/")
   (synopsis "Old school pc fonts")
   (description "The world's biggest collection of classic text mode fonts, system fonts and BIOS fonts from DOS-era IBM PCs and compatibles - preserving raster typography from pre-GUI times")
   (license license:gpl3+)))
