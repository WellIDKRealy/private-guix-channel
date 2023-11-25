(define-module (personal packages ttyper)
  #:use-module (guix package)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crypto)
  #:use-module ((guix licenses)
		#:prefix license:))

(use-modules (guix packages)
	     (guix download)
	     (guix build-system cargo)
	     (gnu packages crates-io)
	     (gnu packages crypto)
	     ;; (gnu packages crates-graphics)
	     ((guix licenses)
	      #:prefix license:))

(define-public rust-tui-0.19
  (package
   (name "rust-tui")
   (version "0.19.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "tui" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1ldswnqgmdkd2fkislyh1amd6rmnbx3s8b97k9j7w03lsv5jdpfc"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1)
                      ("rust-cassowary" ,rust-cassowary-0.3)
                      ("rust-crossterm" ,rust-crossterm-0.25)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-termion" ,rust-termion-1)
                      ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                      ("rust-unicode-width" ,rust-unicode-width-0.1))))
   (home-page "https://github.com/fdehau/tui-rs")
   (synopsis "A library to build rich terminal user interfaces or dashboards
")
   (description
    "This package provides a library to build rich terminal user interfaces or
dashboards")
   (license license:expat)))

(define-public rust-warp-0.3
  (package
    (name "rust-warp")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "warp" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0s8zirqy2cbj8a4k8ixc4r6zhm5dj5j3fzmhz3vqf4nzf3siwhxs"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-compression" ,rust-async-compression-0.3)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-futures-channel" ,rust-futures-channel-0.3)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-headers" ,rust-headers-0.3)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-hyper" ,rust-hyper-0.14)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-mime" ,rust-mime-0.3)
                       ("rust-mime-guess" ,rust-mime-guess-2)
                       ("rust-multer" ,rust-multer-2)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-pin-project" ,rust-pin-project-1)
                       ("rust-rustls-pemfile" ,rust-rustls-pemfile-1)
                       ("rust-scoped-tls" ,rust-scoped-tls-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-serde-urlencoded" ,rust-serde-urlencoded-0.7)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-rustls" ,rust-tokio-rustls-0.23)
                       ("rust-tokio-stream" ,rust-tokio-stream-0.1)
                       ("rust-tokio-tungstenite" ,rust-tokio-tungstenite-0.18)
                       ("rust-tokio-util" ,rust-tokio-util-0.7)
                       ("rust-tower-service" ,rust-tower-service-0.3)
                       ("rust-tracing" ,rust-tracing-0.1))))
    (home-page "https://github.com/seanmonstar/warp")
    (synopsis "serve the web at warp speeds")
    (description "serve the web at warp speeds")
    (license license:expat)))

(define-public rust-tungstenite-0.16
  (package
    (name "rust-tungstenite")
    (version "0.16.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tungstenite" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1l9s7gi9kgl4zynhbyb7737lmwaxaim4b818lwi7y95f2hx73lva"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-base64" ,rust-base64-0.13)
                       ("rust-byteorder" ,rust-byteorder-1)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-httparse" ,rust-httparse-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-native-tls" ,rust-native-tls-0.2)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-rustls" ,rust-rustls-0.20)
                       ("rust-rustls-native-certs" ,rust-rustls-native-certs-0.6)
                       ("rust-sha-1" ,rust-sha-1-0.9)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-url" ,rust-url-2)
                       ("rust-utf-8" ,rust-utf-8-0.7)
                       ("rust-webpki" ,rust-webpki-0.22)
                       ("rust-webpki-roots" ,rust-webpki-roots-0.22))))
    (home-page "https://github.com/snapview/tungstenite-rs")
    (synopsis "Lightweight stream-based WebSocket implementation")
    (description "Lightweight stream-based WebSocket implementation")
    (license (list license:expat license:asl2.0))))

(define-public rust-tokio-tungstenite-0.16
  (package
    (name "rust-tokio-tungstenite")
    (version "0.16.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tokio-tungstenite" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0wnadcv9q2yi7bjkdp6z0g4rk7kbdblsv613fpgjrhgwdbgkj2z8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-native-tls" ,rust-native-tls-0.2)
                       ("rust-rustls" ,rust-rustls-0.20)
                       ("rust-rustls-native-certs" ,rust-rustls-native-certs-0.6)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-native-tls" ,rust-tokio-native-tls-0.3)
                       ("rust-tokio-rustls" ,rust-tokio-rustls-0.23)
                       ("rust-tungstenite" ,rust-tungstenite-0.16)
                       ("rust-webpki" ,rust-webpki-0.22)
                       ("rust-webpki-roots" ,rust-webpki-roots-0.22))))
    (home-page "https://github.com/snapview/tokio-tungstenite")
    (synopsis
     "Tokio binding for Tungstenite, the Lightweight stream-based WebSocket implementation")
    (description
     "Tokio binding for Tungstenite, the Lightweight stream-based WebSocket
implementation")
    (license license:expat)))

(define-public rust-simple-asn1-0.4
  (package
    (name "rust-simple-asn1")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "simple_asn1" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0jxy9as8nj65c2n27j843g4fpb95x4fjz31w6qx63q3wwlys2b39"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-chrono" ,rust-chrono-0.4)
                       ("rust-num-bigint" ,rust-num-bigint-0.2)
                       ("rust-num-traits" ,rust-num-traits-0.2))))
    (home-page "https://github.com/acw/simple_asn1")
    (synopsis "A simple DER/ASN.1 encoding/decoding library.")
    (description
     "This package provides a simple DER/ASN.1 encoding/decoding library.")
    (license license:isc)))

(define-public rust-jsonwebtoken-7
  (package
    (name "rust-jsonwebtoken")
    (version "7.2.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "jsonwebtoken" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0ciz205wcjcn7n6i871zz5xlbzk863b0ybgiqi7li9ipwhawraxg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-base64" ,rust-base64-0.12)
                       ("rust-pem" ,rust-pem-0.8)
                       ("rust-ring" ,rust-ring-0.16)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-simple-asn1" ,rust-simple-asn1-0.4))))
    (home-page "https://github.com/Keats/jsonwebtoken")
    (synopsis "Create and decode JWTs in a strongly typed way.")
    (description "Create and decode JWTs in a strongly typed way.")
    (license license:expat)))

(define-public rust-async-lock-2
  (package
    (name "rust-async-lock")
    (version "2.7.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "async-lock" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1mrd4kai92fcgl9974dpmibiq6ja9drz41v3crvv0c27a8kzf97s"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-event-listener" ,rust-event-listener-2))))
    (home-page "https://github.com/smol-rs/async-lock")
    (synopsis "Async synchronization primitives")
    (description "Async synchronization primitives")
    (license (list license:asl2.0 license:expat))))

(define-public rust-async-session-3
  (package
    (name "rust-async-session")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "async-session" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0c76vazdlcs2rsxq8gd8a6wnb913vxhnfx1hyfmfpqml4gjlrnh7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-async-lock" ,rust-async-lock-2)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-base64" ,rust-base64-0.13)
                       ("rust-bincode" ,rust-bincode-1)
                       ("rust-blake3" ,rust-blake3-0.3)
                       ("rust-chrono" ,rust-chrono-0.4)
                       ("rust-hmac" ,rust-hmac-0.11)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-sha2" ,rust-sha2-0.9))))
    (home-page "https://github.com/http-rs/async-session")
    (synopsis "Async session support with pluggable middleware")
    (description "Async session support with pluggable middleware")
    (license (list license:expat license:asl2.0))))

(define-public rust-salvo-extra-0.16
  (package
    (name "rust-salvo-extra")
    (version "0.16.8")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "salvo_extra" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "023wagm5mpkp1jnpggllbddqigsy5h4qnw2lk8m3j25fj61fl3iy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-compression" ,rust-async-compression-0.3)
                       ("rust-async-session" ,rust-async-session-3)
                       ("rust-base64" ,rust-base64-0.13)
                       ("rust-chrono" ,rust-chrono-0.4)
                       ("rust-cookie" ,rust-cookie-0.16)
                       ("rust-csrf" ,rust-csrf-0.4)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-hkdf" ,rust-hkdf-0.12)
                       ("rust-hyper" ,rust-hyper-0.14)
                       ("rust-hyper-rustls" ,rust-hyper-rustls-0.23)
                       ("rust-jsonwebtoken" ,rust-jsonwebtoken-7)
                       ("rust-mime" ,rust-mime-0.3)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-pin-project" ,rust-pin-project-1)
                       ("rust-salvo-core" ,rust-salvo-core-0.16)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-sha2" ,rust-sha2-0.10)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-stream" ,rust-tokio-stream-0.1)
                       ("rust-tokio-tungstenite" ,rust-tokio-tungstenite-0.16)
                       ("rust-tokio-util" ,rust-tokio-util-0.6)
                       ("rust-tracing" ,rust-tracing-0.1))))
    (home-page "https://salvo.rs")
    (synopsis "Salvo is a powerful and simple Rust web server framework.
")
    (description "Salvo is a powerful and simple Rust web server framework.")
    (license (list license:expat license:asl2.0))))

(define-public rust-textnonce-1
  (package
    (name "rust-textnonce")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "textnonce" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "10v653sz0305dlzdqh6wh795hxypk24s21iiqcfyv16p1kbzhhvp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-base64" ,rust-base64-0.12)
                       ("rust-rand" ,rust-rand-0.7)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/mikedilger/textnonce")
    (synopsis "Text based random nonce generator")
    (description "Text based random nonce generator")
    (license (list license:expat license:asl2.0))))

(define-public rust-proc-quote-impl-0.3
  (package
    (name "rust-proc-quote-impl")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "proc-quote-impl" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "184ax14pyazv5g6yma60ls7x4hd5q6wah1kf677xng06idifrcvz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro-hack" ,rust-proc-macro-hack-0.5)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1))))
    (home-page "https://github.com/Goncalerta/proc-quote")
    (synopsis "A procedural macro implementation of quote!.")
    (description
     "This package provides a procedural macro implementation of quote!.")
    (license (list license:expat license:asl2.0))))

(define-public rust-proc-quote-0.4
  (package
    (name "rust-proc-quote")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "proc-quote" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0051nax31x1yzr1imbp200l2gpz6pqcmlcna099r33773lbap12y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro-hack" ,rust-proc-macro-hack-0.5)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-proc-quote-impl" ,rust-proc-quote-impl-0.3)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/Goncalerta/proc-quote")
    (synopsis "A procedural macro implementation of quote!.")
    (description
     "This package provides a procedural macro implementation of quote!.")
    (license (list license:expat license:asl2.0))))

(define-public rust-salvo-macros-0.16
  (package
    (name "rust-salvo-macros")
    (version "0.16.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "salvo_macros" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0hdlzvcv2vvbr60w1kmfr9bx8glx4xs9g0ry1pwa7yf7ig987z90"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro-crate" ,rust-proc-macro-crate-1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-proc-quote" ,rust-proc-quote-0.4)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://salvo.rs")
    (synopsis "salvo proc macros")
    (description "salvo proc macros")
    (license (list license:expat license:asl2.0))))

(define-public rust-salvo-core-0.16
  (package
    (name "rust-salvo-core")
    (version "0.16.8")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "salvo_core" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "01dazprfzmjmvwgcrvqxjd12hgwwlk71mskwyl4cj2y2gm5p80bv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-async-compression" ,rust-async-compression-0.3)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-bitflags" ,rust-bitflags-1)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-cookie" ,rust-cookie-0.16)
                       ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-fastrand" ,rust-fastrand-1)
                       ("rust-form-urlencoded" ,rust-form-urlencoded-1)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-headers" ,rust-headers-0.3)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-hyper" ,rust-hyper-0.14)
                       ("rust-mime" ,rust-mime-0.3)
                       ("rust-mime-guess" ,rust-mime-guess-2)
                       ("rust-multer" ,rust-multer-2)
                       ("rust-multimap" ,rust-multimap-0.8)
                       ("rust-num-cpus" ,rust-num-cpus-1)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-pin-utils" ,rust-pin-utils-0.1)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-rustls-pemfile" ,rust-rustls-pemfile-0.2)
                       ("rust-salvo-macros" ,rust-salvo-macros-0.16)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-tempdir" ,rust-tempdir-0.3)
                       ("rust-textnonce" ,rust-textnonce-1)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-native-tls" ,rust-tokio-native-tls-0.3)
                       ("rust-tokio-rustls" ,rust-tokio-rustls-0.23)
                       ("rust-tokio-stream" ,rust-tokio-stream-0.1)
                       ("rust-tracing" ,rust-tracing-0.1))))
    (home-page "https://salvo.rs")
    (synopsis "Salvo is a powerful and simple Rust web server framework.
")
    (description "Salvo is a powerful and simple Rust web server framework.")
    (license (list license:expat license:asl2.0))))

(define-public rust-salvo-0.16
  (package
    (name "rust-salvo")
    (version "0.16.8")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "salvo" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1jw9h9aac4ms9shvssc8mw53q9842f5bfqv1a8aqkpcyd2j23n4b"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-salvo-core" ,rust-salvo-core-0.16)
                       ("rust-salvo-extra" ,rust-salvo-extra-0.16))))
    (home-page "https://salvo.rs")
    (synopsis "Salvo is a powerful and simple Rust web server framework.
")
    (description "Salvo is a powerful and simple Rust web server framework.")
    (license (list license:expat license:asl2.0))))

(define-public rust-bstr-1
  (package
    (name "rust-bstr")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "bstr" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1xafaq57fzwa38yjwdzvqlbm8h207sjm585y4kdxjv1znj5ycim2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-memchr" ,rust-memchr-2)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-regex-automata" ,rust-regex-automata-0.1)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/BurntSushi/bstr")
    (synopsis "A string type that is not required to be valid UTF-8.")
    (description
     "This package provides a string type that is not required to be valid UTF-8.")
    (license (list license:expat license:asl2.0))))

(define-public rust-globset-0.4
  (package
    (name "rust-globset")
    (version "0.4.10")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "globset" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1z4slzdx80qmv5l7pv2ac82jihwm4rrz9i50w6fybzfyk9c79782"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-aho-corasick" ,rust-aho-corasick-0.7)
                       ("rust-bstr" ,rust-bstr-1)
                       ("rust-fnv" ,rust-fnv-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-serde" ,rust-serde-1))))
    (home-page
     "https://github.com/BurntSushi/ripgrep/tree/master/crates/globset")
    (synopsis
     "Cross platform single glob and glob set matching. Glob set matching is the
process of matching one or more glob patterns against a single candidate path
simultaneously, and returning all of the globs that matched.
")
    (description
     "Cross platform single glob and glob set matching.  Glob set matching is the
process of matching one or more glob patterns against a single candidate path
simultaneously, and returning all of the globs that matched.")
    (license (list license:unlicense license:expat))))

(define-public rust-rust-embed-utils-7
  (package
    (name "rust-rust-embed-utils")
    (version "7.5.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rust-embed-utils" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0cbp7whwhfjmlqamkak6xnfbnj7psr1wnjkmr3ii8zizhnv0lasi"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-globset" ,rust-globset-0.4)
                       ("rust-mime-guess" ,rust-mime-guess-2)
                       ("rust-sha2" ,rust-sha2-0.10)
                       ("rust-walkdir" ,rust-walkdir-2))))
    (home-page "https://github.com/pyros2097/rust-embed")
    (synopsis "Utilities for rust-embed")
    (description "Utilities for rust-embed")
    (license license:expat)))

(define-public rust-rust-embed-impl-6
  (package
    (name "rust-rust-embed-impl")
    (version "6.5.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rust-embed-impl" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1mqgi9b2l2v6ffw4fr592gxc39k5vmg19b3lhfkdkpj7xl60ykjd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-rust-embed-utils" ,rust-rust-embed-utils-7)
                       ("rust-shellexpand" ,rust-shellexpand-2)
                       ("rust-syn" ,rust-syn-1)
                       ("rust-walkdir" ,rust-walkdir-2))))
    (home-page "https://github.com/pyros2097/rust-embed")
    (synopsis
     "Rust Custom Derive Macro which loads files into the rust binary at compile time during release and loads the file from the fs during dev")
    (description
     "Rust Custom Derive Macro which loads files into the rust binary at compile time
during release and loads the file from the fs during dev")
    (license license:expat)))

(define-public rust-ubyte-0.10
  (package
    (name "rust-ubyte")
    (version "0.10.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "ubyte" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1rlg6sr14i3rd4kfhrwd7b7w7krlg6kpjxkd6vcx0si8gnp0s7y8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/SergioBenitez/ubyte")
    (synopsis
     "A simple, complete, const-everything, saturating, human-friendly, no_std library for byte units.
")
    (description
     "This package provides a simple, complete, const-everything, saturating,
human-friendly, no_std library for byte units.")
    (license (list license:expat license:asl2.0))))

(define-public rust-oid-registry-0.4
  (package
    (name "rust-oid-registry")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "oid-registry" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0akbah3j8231ayrp2l1y5d9zmvbvqcsj0sa6s6dz6h85z8bhgqiq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-asn1-rs" ,rust-asn1-rs-0.3))))
    (home-page "https://github.com/rusticata/oid-registry")
    (synopsis "Object Identifier (OID) database")
    (description "Object Identifier (OID) database")
    (license (list license:expat license:asl2.0))))

(define-public rust-der-parser-7
  (package
    (name "rust-der-parser")
    (version "7.0.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "der-parser" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "10kfa2gzl3x20mwgrd43cyi79xgkqxyzcyrh0xylv4apa33qlfgy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-asn1-rs" ,rust-asn1-rs-0.3)
                       ("rust-cookie-factory" ,rust-cookie-factory-0.3)
                       ("rust-displaydoc" ,rust-displaydoc-0.2)
                       ("rust-nom" ,rust-nom-7)
                       ("rust-num-bigint" ,rust-num-bigint-0.4)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-rusticata-macros" ,rust-rusticata-macros-4))))
    (home-page "https://github.com/rusticata/der-parser")
    (synopsis "Parser/encoder for ASN.1 BER/DER data")
    (description "Parser/encoder for ASN.1 BER/DER data")
    (license (list license:expat license:asl2.0))))

(define-public rust-asn1-rs-derive-0.1
  (package
    (name "rust-asn1-rs-derive")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "asn1-rs-derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1gzf9vab06lk0zjvbr07axx64fndkng2s28bnj27fnwd548pb2yv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1)
                       ("rust-synstructure" ,rust-synstructure-0.12))))
    (home-page "https://github.com/rusticata/asn1-rs")
    (synopsis "Derive macros for the `asn1-rs` crate")
    (description "Derive macros for the `asn1-rs` crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-asn1-rs-0.3
  (package
    (name "rust-asn1-rs")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "asn1-rs" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0czsk1nd4dx2k83f7jzkn8klx05wbmblkx1jh51i4c170akhbzrh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-asn1-rs-derive" ,rust-asn1-rs-derive-0.1)
                       ("rust-asn1-rs-impl" ,rust-asn1-rs-impl-0.1)
                       ("rust-bitvec" ,rust-bitvec-1)
                       ("rust-cookie-factory" ,rust-cookie-factory-0.3)
                       ("rust-displaydoc" ,rust-displaydoc-0.2)
                       ("rust-nom" ,rust-nom-7)
                       ("rust-num-bigint" ,rust-num-bigint-0.4)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-rusticata-macros" ,rust-rusticata-macros-4)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-time" ,rust-time-0.3))))
    (home-page "https://github.com/rusticata/asn1-rs")
    (synopsis "Parser/encoder for ASN.1 BER/DER data")
    (description "Parser/encoder for ASN.1 BER/DER data")
    (license (list license:expat license:asl2.0))))

(define-public rust-x509-parser-0.13
  (package
    (name "rust-x509-parser")
    (version "0.13.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "x509-parser" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "077bi0xyaa8cmrqf3rrw1z6kkzscwd1nxdxgs7mgz2ambg7bmfcz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-asn1-rs" ,rust-asn1-rs-0.3)
                       ("rust-base64" ,rust-base64-0.13)
                       ("rust-data-encoding" ,rust-data-encoding-2)
                       ("rust-der-parser" ,rust-der-parser-7)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-nom" ,rust-nom-7)
                       ("rust-oid-registry" ,rust-oid-registry-0.4)
                       ("rust-ring" ,rust-ring-0.16)
                       ("rust-rusticata-macros" ,rust-rusticata-macros-4)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-time" ,rust-time-0.3))))
    (home-page "https://github.com/rusticata/x509-parser")
    (synopsis "Parser for the X.509 v3 format (RFC 5280 certificates)")
    (description "Parser for the X.509 v3 format (RFC 5280 certificates)")
    (license (list license:expat license:asl2.0))))

(define-public rust-state-0.5
  (package
    (name "rust-state")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "state" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0fzji31ijbkimbzdy4dln9mp5xp7lm1a0dnqxv4n10hywphnds6v"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-loom" ,rust-loom-0.5))))
    (home-page "https://github.com/SergioBenitez/state")
    (synopsis
     "A library for safe and effortless global and thread-local state management.
")
    (description
     "This package provides a library for safe and effortless global and thread-local
state management.")
    (license (list license:expat license:asl2.0))))

(define-public rust-stable-pattern-0.1
  (package
    (name "rust-stable-pattern")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "stable-pattern" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0i8hq82vm82mqj02qqcsd7caibrih7x5w3a1xpm8hpv30261cr25"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-memchr" ,rust-memchr-2))))
    (home-page "https://github.com/SergioBenitez/stable-pattern")
    (synopsis "Stable port of std::str::Pattern and friends.")
    (description "Stable port of std::str::Pattern and friends.")
    (license (list license:expat license:asl2.0))))

(define-public rust-cookie-0.17
  (package
    (name "rust-cookie")
    (version "0.17.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "cookie" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "096c52jg9iq4lfcps2psncswv33fc30mmnaa2sbzzcfcw71kgyvy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-aes-gcm" ,rust-aes-gcm-0.10)
                       ("rust-base64" ,rust-base64-0.21)
                       ("rust-hkdf" ,rust-hkdf-0.12)
                       ("rust-hmac" ,rust-hmac-0.12)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-sha2" ,rust-sha2-0.10)
                       ("rust-subtle" ,rust-subtle-2)
                       ("rust-time" ,rust-time-0.3)
                       ("rust-version-check" ,rust-version-check-0.9))))
    (home-page "https://github.com/SergioBenitez/cookie-rs")
    (synopsis
     "HTTP cookie parsing and cookie jar management. Supports signed and private
(encrypted, authenticated) jars.
")
    (description
     "HTTP cookie parsing and cookie jar management.  Supports signed and private
(encrypted, authenticated) jars.")
    (license (list license:expat license:asl2.0))))

(define-public rust-rocket-http-0.5
  (package
    (name "rust-rocket-http")
    (version "0.5.0-rc.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rocket_http" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1x4h411ldb59c6bq05r7dzi65xiqz7akd63zydkkm832j74i4q4k"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cookie" ,rust-cookie-0.17)
                       ("rust-either" ,rust-either-1)
                       ("rust-futures" ,rust-futures-0.3)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-hyper" ,rust-hyper-0.14)
                       ("rust-indexmap" ,rust-indexmap-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-pear" ,rust-pear-0.2)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-ref-cast" ,rust-ref-cast-1)
                       ("rust-rustls" ,rust-rustls-0.20)
                       ("rust-rustls-pemfile" ,rust-rustls-pemfile-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-stable-pattern" ,rust-stable-pattern-0.1)
                       ("rust-state" ,rust-state-0.5)
                       ("rust-time" ,rust-time-0.3)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-rustls" ,rust-tokio-rustls-0.23)
                       ("rust-uncased" ,rust-uncased-0.9)
                       ("rust-uuid" ,rust-uuid-1)
                       ("rust-x509-parser" ,rust-x509-parser-0.13))))
    (home-page "https://rocket.rs")
    (synopsis
     "Types, traits, and parsers for HTTP requests, responses, and headers.
")
    (description
     "Types, traits, and parsers for HTTP requests, responses, and headers.")
    (license (list license:expat license:asl2.0))))

(define-public rust-devise-core-0.4
  (package
    (name "rust-devise-core")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "devise_core" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0sp5idq0idng9i5kwjd8slvc724s97r28arrhyqq1jpx1ax0vd9m"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-proc-macro2-diagnostics" ,rust-proc-macro2-diagnostics-0.10)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/SergioBenitez/Devise")
    (synopsis "A library for devising derives and other procedural macros.")
    (description
     "This package provides a library for devising derives and other procedural
macros.")
    (license (list license:expat license:asl2.0))))

(define-public rust-devise-codegen-0.4
  (package
    (name "rust-devise-codegen")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "devise_codegen" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1mpy5mmsigkj5f72gby82yk4advcqj97am2wzn0dwkj8vnwg934w"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-devise-core" ,rust-devise-core-0.4)
                       ("rust-quote" ,rust-quote-1))))
    (home-page "https://github.com/SergioBenitez/Devise")
    (synopsis "A library for devising derives and other procedural macros.")
    (description
     "This package provides a library for devising derives and other procedural
macros.")
    (license (list license:expat license:asl2.0))))

(define-public rust-devise-0.4
  (package
    (name "rust-devise")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "devise" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1y45iag4hyvspkdsf6d856hf0ihf9vjnaga3c7y6c72l7zywxsnn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-devise-codegen" ,rust-devise-codegen-0.4)
                       ("rust-devise-core" ,rust-devise-core-0.4))))
    (home-page "https://github.com/SergioBenitez/Devise")
    (synopsis "A library for devising derives and other procedural macros.")
    (description
     "This package provides a library for devising derives and other procedural
macros.")
    (license (list license:expat license:asl2.0))))

(define-public rust-rocket-codegen-0.5
  (package
    (name "rust-rocket-codegen")
    (version "0.5.0-rc.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rocket_codegen" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "12shzkr9zmc0v3r190nhcfavly28nngja2g4h94p93122hzkb4vh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-devise" ,rust-devise-0.4)
                       ("rust-glob" ,rust-glob-0.3)
                       ("rust-indexmap" ,rust-indexmap-1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-rocket-http" ,rust-rocket-http-0.5)
                       ("rust-syn" ,rust-syn-2)
                       ("rust-unicode-xid" ,rust-unicode-xid-0.2))))
    (home-page "https://rocket.rs")
    (synopsis "Procedural macros for the Rocket web framework.")
    (description "Procedural macros for the Rocket web framework.")
    (license (list license:expat license:asl2.0))))

(define-public rust-rmp-0.8
  (package
    (name "rust-rmp")
    (version "0.8.11")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rmp" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "17rw803xv84csxgd654g7q64kqf9zgkvhsn8as3dbmlg6mr92la4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-byteorder" ,rust-byteorder-1)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-paste" ,rust-paste-1))))
    (home-page "https://github.com/3Hren/msgpack-rust")
    (synopsis "Pure Rust MessagePack serialization implementation")
    (description "Pure Rust MessagePack serialization implementation")
    (license license:expat)))

(define-public rust-rmp-serde-1
  (package
    (name "rust-rmp-serde")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rmp-serde" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0glisa0pcj56dhsaqp5vkqkcqqnb2dcal8kjzf50n8p0jbhkpcf5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-byteorder" ,rust-byteorder-1)
                       ("rust-rmp" ,rust-rmp-0.8)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/3Hren/msgpack-rust")
    (synopsis "Serde bindings for RMP")
    (description "Serde bindings for RMP")
    (license license:expat)))

(define-public rust-linux-raw-sys-0.3
  (package
    (name "rust-linux-raw-sys")
    (version "0.3.8")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "linux-raw-sys" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "068mbigb3frrxvbi5g61lx25kksy98f2qgkvc4xg8zxznwp98lzg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                       ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/sunfishcode/linux-raw-sys")
    (synopsis "Generated bindings for Linux's userspace API")
    (description "Generated bindings for Linux's userspace API")
    (license (list license:asl2.0 license:asl2.0
                   license:expat))))

(define-public rust-libc-0.2
  (package
    (name "rust-libc")
    (version "0.2.144")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "libc" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1qfzrwhncsradwvdzd8vsj4mc31fh0rb5rvny3884rwa48fcq01b"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/rust-lang/libc")
    (synopsis "Raw FFI bindings to platform libraries like libc.
")
    (description "Raw FFI bindings to platform libraries like libc.")
    (license (list license:expat license:asl2.0))))

(define-public rust-io-lifetimes-1
  (package
    (name "rust-io-lifetimes")
    (version "1.0.10")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "io-lifetimes" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "08625nsz0lgbd7c9lly6b6l45viqpsnj9jbsixd9mrz7596wfrlw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-std" ,rust-async-std-1)
                       ("rust-fs-err" ,rust-fs-err-2)
                       ("rust-hermit-abi" ,rust-hermit-abi-0.3)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-mio" ,rust-mio-0.8)
                       ("rust-os-pipe" ,rust-os-pipe-1)
                       ("rust-socket2" ,rust-socket2-0.4)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-windows-sys" ,rust-windows-sys-0.48))))
    (home-page "https://github.com/sunfishcode/io-lifetimes")
    (synopsis "A low-level I/O ownership and borrowing library")
    (description
     "This package provides a low-level I/O ownership and borrowing library")
    (license (list license:asl2.0  license:asl2.0
                   license:expat))))

(define-public rust-windows-x86-64-msvc-0.48
  (package
    (name "rust-windows-x86-64-msvc")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows_x86_64_msvc" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "12ipr1knzj2rwjygyllfi5mkd0ihnbi3r61gag5n2jgyk5bmyl8s"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "Import lib for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-gnullvm-0.48
  (package
    (name "rust-windows-x86-64-gnullvm")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows_x86_64_gnullvm" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0lxryz3ysx0145bf3i38jkr7f9nxiym8p3syklp8f20yyk0xp5kq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "Import lib for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-gnu-0.48
  (package
    (name "rust-windows-x86-64-gnu")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows_x86_64_gnu" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1cblz5m6a8q6ha09bz4lz233dnq5sw2hpra06k9cna3n3xk8laya"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "Import lib for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-msvc-0.48
  (package
    (name "rust-windows-i686-msvc")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows_i686_msvc" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "004fkyqv3if178xx9ksqc4qqv8sz8n72mpczsr2vy8ffckiwchj5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "Import lib for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-gnu-0.48
  (package
    (name "rust-windows-i686-gnu")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows_i686_gnu" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0hd2v9kp8fss0rzl83wzhw0s5z8q1b4875m6s1phv0yvlxi1jak2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "Import lib for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-aarch64-msvc-0.48
  (package
    (name "rust-windows-aarch64-msvc")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows_aarch64_msvc" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1wvwipchhywcjaw73h998vzachf668fpqccbhrxzrz5xszh2gvxj"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "Import lib for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-aarch64-gnullvm-0.48
  (package
    (name "rust-windows-aarch64-gnullvm")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows_aarch64_gnullvm" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1g71yxi61c410pwzq05ld7si4p9hyx6lf5fkw21sinvr3cp5gbli"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "Import lib for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-targets-0.48
  (package
    (name "rust-windows-targets")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows-targets" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1mfzg94w0c8h4ya9sva7rra77f3iy1712af9b6bwg03wrpqbc7kv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-aarch64-gnullvm" ,rust-windows-aarch64-gnullvm-0.48)
                       ("rust-windows-aarch64-msvc" ,rust-windows-aarch64-msvc-0.48)
                       ("rust-windows-i686-gnu" ,rust-windows-i686-gnu-0.48)
                       ("rust-windows-i686-msvc" ,rust-windows-i686-msvc-0.48)
                       ("rust-windows-x86-64-gnu" ,rust-windows-x86-64-gnu-0.48)
                       ("rust-windows-x86-64-gnullvm" ,rust-windows-x86-64-gnullvm-0.48)
                       ("rust-windows-x86-64-msvc" ,rust-windows-x86-64-msvc-0.48))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import libs for Windows")
    (description "Import libs for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-sys-0.48
  (package
    (name "rust-windows-sys")
    (version "0.48.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "windows-sys" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1aan23v5gs7gya1lc46hqn9mdh8yph3fhxmhxlw36pn6pqc28zb7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.48))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Rust for Windows")
    (description "Rust for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-errno-0.3
  (package
    (name "rust-errno")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "errno" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0fp7qy6fwagrnmi45msqnl01vksqwdb2qbbv60n9cz7rf0xfrksb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-errno-dragonfly" ,rust-errno-dragonfly-0.1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-windows-sys" ,rust-windows-sys-0.48))))
    (home-page "https://github.com/lambda-fairy/rust-errno")
    (synopsis "Cross-platform interface to the `errno` variable.")
    (description "Cross-platform interface to the `errno` variable.")
    (license (list license:expat license:asl2.0))))

(define-public rust-rustix-0.37
  (package
    (name "rust-rustix")
    (version "0.37.19")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rustix" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0gb12rp992bh2h5msqcbpdsx6h1gslsb0zpp5hdnyxj2hnfp5y5c"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1)
                       ("rust-cc" ,rust-cc-1)
                       ("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                       ("rust-errno" ,rust-errno-0.3)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-1)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-linux-raw-sys" ,rust-linux-raw-sys-0.3)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
                       ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
                       ("rust-windows-sys" ,rust-windows-sys-0.48))))
    (home-page "https://github.com/bytecodealliance/rustix")
    (synopsis "Safe Rust bindings to POSIX/Unix/Linux/Winsock2-like syscalls")
    (description
     "Safe Rust bindings to POSIX/Unix/Linux/Winsock2-like syscalls")
    (license (list license:asl2.0  license:asl2.0
                   license:expat))))

(define-public rust-hermit-abi-0.3
  (package
    (name "rust-hermit-abi")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "hermit-abi" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "11j2v3q58kmi5mhjvh6hfrb7il2yzg7gmdf5lpwnwwv6qj04im7y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                       ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
                       ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/hermitcore/rusty-hermit")
    (synopsis "Hermit system calls definitions.")
    (description "Hermit system calls definitions.")
    (license (list license:expat license:asl2.0))))

(define-public rust-is-terminal-0.4
  (package
    (name "rust-is-terminal")
    (version "0.4.7")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "is-terminal" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "07xyfla3f2jjb666s72la5jvl9zq7mixbqkjvyfi5j018rhr7kxd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-hermit-abi" ,rust-hermit-abi-0.3)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-1)
                       ("rust-rustix" ,rust-rustix-0.37)
                       ("rust-windows-sys" ,rust-windows-sys-0.48))))
    (home-page "https://github.com/sunfishcode/is-terminal")
    (synopsis "Test whether a given stream is a terminal")
    (description "Test whether a given stream is a terminal")
    (license license:expat)))

(define-public rust-proc-macro2-diagnostics-0.10
  (package
    (name "rust-proc-macro2-diagnostics")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "proc-macro2-diagnostics" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0fs9plv7xw3c986mfp5fkssladmb3gammxca60m95qhpb2ilnv30"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2)
                       ("rust-version-check" ,rust-version-check-0.9)
                       ("rust-yansi" ,rust-yansi-0.5))))
    (home-page "https://github.com/SergioBenitez/proc-macro2-diagnostics")
    (synopsis "Diagnostics for proc-macro2.")
    (description "Diagnostics for proc-macro2.")
    (license (list license:expat license:asl2.0))))

(define-public rust-pear-codegen-0.2
  (package
    (name "rust-pear-codegen")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "pear_codegen" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0g4xhy6gsxh40rva42fqaqlzzxl8gi6qw0c2m0p9zw4k7yjs6qcn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-proc-macro2-diagnostics" ,rust-proc-macro2-diagnostics-0.10)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "")
    (synopsis "A (codegen) pear is a fruit.")
    (description "This package provides a (codegen) pear is a fruit.")
    (license (list license:expat license:asl2.0))))

(define-public rust-inlinable-string-0.1
  (package
    (name "rust-inlinable-string")
    (version "0.1.15")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "inlinable_string" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1ysjci8yfvxgf51z0ny2nnwhxrclhmb3vbngin8v4bznhr3ybyn8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/fitzgen/inlinable_string")
    (synopsis
     "The `inlinable_string` crate provides the `InlinableString` type -- an owned, grow-able UTF-8 string that stores small strings inline and avoids heap-allocation -- and the `StringExt` trait which abstracts string operations over both `std::string::String` and `InlinableString` (or even your own custom string type).")
    (description
     "The `inlinable_string` crate provides the `InlinableString` type -- an owned,
grow-able UTF-8 string that stores small strings inline and avoids
heap-allocation -- and the `StringExt` trait which abstracts string operations
over both `std::string::String` and `InlinableString` (or even your own custom
string type).")
    (license (list license:asl2.0 license:expat))))

(define-public rust-pear-0.2
  (package
    (name "rust-pear")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "pear" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1s17f54y0qf6xvffardhq2lvg55n2hz0drc4a9bh6x88ly05dj8f"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-inlinable-string" ,rust-inlinable-string-0.1)
                       ("rust-pear-codegen" ,rust-pear-codegen-0.2)
                       ("rust-yansi" ,rust-yansi-0.5))))
    (home-page "")
    (synopsis "A pear is a fruit.")
    (description "This package provides a pear is a fruit.")
    (license (list license:expat license:asl2.0))))

(define-public rust-figment-0.10
  (package
    (name "rust-figment")
    (version "0.10.8")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "figment" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1jbcq7y8695bjs61pkcpxrhqg6ssximacrpc1m0028lv8qmn0mjf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-atomic" ,rust-atomic-0.5)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-pear" ,rust-pear-0.2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-serde-yaml" ,rust-serde-yaml-0.9)
                       ("rust-tempfile" ,rust-tempfile-3)
                       ("rust-toml" ,rust-toml-0.5)
                       ("rust-uncased" ,rust-uncased-0.9)
                       ("rust-version-check" ,rust-version-check-0.9))))
    (home-page "https://github.com/SergioBenitez/Figment")
    (synopsis "A configuration library so con-free, it's unreal.")
    (description
     "This package provides a configuration library so con-free, it's unreal.")
    (license (list license:expat license:asl2.0))))

(define-public rust-binascii-0.1
  (package
    (name "rust-binascii")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "binascii" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0wnaglgl72pn5ilv61q6y34w76gbg7crb8ifqk6lsxnq2gajjg9q"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/naim94a/binascii-rs")
    (synopsis
     "Useful no-std binascii operations including base64, base32 and base16 (hex)")
    (description
     "Useful no-std binascii operations including base64, base32 and base16 (hex)")
    (license license:expat)))

(define-public rust-rocket-0.5
  (package
    (name "rust-rocket")
    (version "0.5.0-rc.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rocket" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1jcwrkqvmbh1gwvg55kv6mdp8c9331hqzd45jq9gsp5f05s4ywsq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-stream" ,rust-async-stream-0.3)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-atomic" ,rust-atomic-0.5)
                       ("rust-binascii" ,rust-binascii-0.1)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-either" ,rust-either-1)
                       ("rust-figment" ,rust-figment-0.10)
                       ("rust-futures" ,rust-futures-0.3)
                       ("rust-indexmap" ,rust-indexmap-1)
                       ("rust-is-terminal" ,rust-is-terminal-0.4)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-multer" ,rust-multer-2)
                       ("rust-num-cpus" ,rust-num-cpus-1)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-ref-cast" ,rust-ref-cast-1)
                       ("rust-rmp-serde" ,rust-rmp-serde-1)
                       ("rust-rocket-codegen" ,rust-rocket-codegen-0.5)
                       ("rust-rocket-http" ,rust-rocket-http-0.5)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-state" ,rust-state-0.5)
                       ("rust-tempfile" ,rust-tempfile-3)
                       ("rust-time" ,rust-time-0.3)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-stream" ,rust-tokio-stream-0.1)
                       ("rust-tokio-util" ,rust-tokio-util-0.7)
                       ("rust-ubyte" ,rust-ubyte-0.10)
                       ("rust-uuid" ,rust-uuid-1)
                       ("rust-version-check" ,rust-version-check-0.9)
                       ("rust-yansi" ,rust-yansi-0.5))))
    (home-page "https://rocket.rs")
    (synopsis
     "Web framework with a focus on usability, security, extensibility, and speed.
")
    (description
     "Web framework with a focus on usability, security, extensibility, and speed.")
    (license (list license:expat license:asl2.0))))

(define-public rust-tokio-stream-0.1
  (package
    (name "rust-tokio-stream")
    (version "0.1.14")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tokio-stream" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0hi8hcwavh5sdi1ivc9qc4yvyr32f153c212dpd7sb366y6rhz1r"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-util" ,rust-tokio-util-0.7))))
    (home-page "https://tokio.rs")
    (synopsis "Utilities to work with `Stream` and `tokio`.
")
    (description "Utilities to work with `Stream` and `tokio`.")
    (license license:expat)))

(define-public rust-tokio-openssl-0.6
  (package
    (name "rust-tokio-openssl")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tokio-openssl" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "12l7a01sid095zmdkcmjnds9hwfcyjn9539r3c6b5w89g3xrz3y0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-openssl" ,rust-openssl-0.10)
                       ("rust-openssl-sys" ,rust-openssl-sys-0.9)
                       ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://github.com/sfackler/tokio-openssl")
    (synopsis "An implementation of SSL streams for Tokio backed by OpenSSL
")
    (description
     "An implementation of SSL streams for Tokio backed by OpenSSL")
    (license (list license:expat license:asl2.0))))

(define-public rust-tokio-metrics-0.1
  (package
    (name "rust-tokio-metrics")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tokio-metrics" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1pawfs6gsgv0k950mz84fcf0vhsfk1am4bg2hhb1flwv0sh8bddw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://tokio.rs")
    (synopsis "Runtime and task level metrics for Tokio applications.
")
    (description "Runtime and task level metrics for Tokio applications.")
    (license license:expat)))

(define-public rust-futures-codec-0.4
  (package
    (name "rust-futures-codec")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "futures_codec" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0nzadpxhdxdlnlk2f0gfn0qbifqc3pbnzm10v4z04x8ciczxcm6f"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bytes" ,rust-bytes-0.5)
                       ("rust-futures" ,rust-futures-0.3)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-pin-project" ,rust-pin-project-0.4)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-cbor" ,rust-serde-cbor-0.11)
                       ("rust-serde-json" ,rust-serde-json-1))))
    (home-page "https://github.com/matthunz/futures-codec")
    (synopsis "Utilities for encoding and decoding frames using `async/await`")
    (description
     "Utilities for encoding and decoding frames using `async/await`")
    (license license:expat)))

(define-public rust-sse-codec-0.3
  (package
    (name "rust-sse-codec")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sse-codec" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0nh8b1y2k5lsvcva15da4by935bavirfpavs0d54pi2h2f0rz9c4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-0.4)
                       ("rust-bytes" ,rust-bytes-0.5)
                       ("rust-futures-io" ,rust-futures-io-0.3)
                       ("rust-futures-codec" ,rust-futures-codec-0.4)
                       ("rust-memchr" ,rust-memchr-2))))
    (home-page "https://github.com/goto-bus-stop/sse-codec")
    (synopsis "async Server-Sent Events protocol encoder/decoder")
    (description "async Server-Sent Events protocol encoder/decoder")
    (license license:mpl2.0)))

(define-public rust-unsafe-libyaml-0.2
  (package
    (name "rust-unsafe-libyaml")
    (version "0.2.8")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "unsafe-libyaml" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "19l0v20x83dvxbr68rqvs9hvawaqd929hia1nldfahlhamm80r8q"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/dtolnay/unsafe-libyaml")
    (synopsis "libyaml transpiled to rust by c2rust")
    (description "libyaml transpiled to rust by c2rust")
    (license license:expat)))

(define-public rust-serde-yaml-0.9
  (package
    (name "rust-serde-yaml")
    (version "0.9.21")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "serde_yaml" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1714w6f5b2g4svha9r96cirz05mc0d9xfaxkcrabzqvxxkiq9mnr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-indexmap" ,rust-indexmap-1)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-ryu" ,rust-ryu-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-unsafe-libyaml" ,rust-unsafe-libyaml-0.2))))
    (home-page "https://github.com/dtolnay/serde-yaml")
    (synopsis "YAML data format for Serde")
    (description "YAML data format for Serde")
    (license (list license:expat license:asl2.0))))

(define-public rust-rfc7239-0.1
  (package
    (name "rust-rfc7239")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rfc7239" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0ixsyn8y2jfhfqnhwivgil3cvdr4jdr5s0nr7gqq3d3yryrifwq8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-uncased" ,rust-uncased-0.9))))
    (home-page "https://github.com/icewind1991/rfc7239")
    (synopsis "Parser for rfc7239 formatted Forwarded headers")
    (description "Parser for rfc7239 formatted Forwarded headers")
    (license (list license:expat license:asl2.0))))

(define-public rust-crc16-0.4
  (package
    (name "rust-crc16")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "crc16" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1zzwb5iv51wnh96532cxkk4aa8ys47rhzrjy98wqcys25ks8k01k"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/blackbeam/rust-crc16")
    (synopsis "A CRC16 implementation")
    (description "This package provides a CRC16 implementation")
    (license license:expat)))

(define-public rust-async-native-tls-0.4
  (package
    (name "rust-async-native-tls")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "async-native-tls" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1zhkka5azpr03wg2bswabmwcwcqbdia17h2d17hk4wk47kn4qzfm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-native-tls" ,rust-native-tls-0.2)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-url" ,rust-url-2))))
    (home-page "https://docs.rs/crate/async-native-tls/")
    (synopsis "Native TLS using futures
")
    (description "Native TLS using futures")
    (license (list license:expat license:asl2.0))))

(define-public rust-ahash-0.7
  (package
    (name "rust-ahash")
    (version "0.7.6")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "ahash" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0isw672fiwx8cjl040jrck6pi85xcszkz6q0xsqkiy6qjl31mdgw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-const-random" ,rust-const-random-0.1)
                       ("rust-getrandom" ,rust-getrandom-0.2)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-version-check" ,rust-version-check-0.9))))
    (home-page "https://github.com/tkaitchuck/ahash")
    (synopsis
     "A non-cryptographic hash function using AES-NI for high performance")
    (description
     "This package provides a non-cryptographic hash function using AES-NI for high
performance")
    (license (list license:expat license:asl2.0))))

(define-public rust-redis-0.22
  (package
    (name "rust-redis")
    (version "0.22.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "redis" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1ps6bgm3b01nrk3ydchpl1ygac85x9kdwij9a4fb9xi16vx5b15a"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-ahash" ,rust-ahash-0.7)
                       ("rust-arc-swap" ,rust-arc-swap-1)
                       ("rust-async-native-tls" ,rust-async-native-tls-0.4)
                       ("rust-async-std" ,rust-async-std-1)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-combine" ,rust-combine-4)
                       ("rust-crc16" ,rust-crc16-0.4)
                       ("rust-futures" ,rust-futures-0.3)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-native-tls" ,rust-native-tls-0.2)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-r2d2" ,rust-r2d2)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-ryu" ,rust-ryu-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-sha1-smol" ,rust-sha1-smol-1)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-native-tls" ,rust-tokio-native-tls-0.3)
                       ("rust-tokio-util" ,rust-tokio-util-0.7)
                       ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/redis-rs/redis-rs")
    (synopsis "Redis driver for Rust.")
    (description "Redis driver for Rust.")
    (license license:bsd-3)))

(define-public rust-yasna-0.5
  (package
    (name "rust-yasna")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "yasna" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1ka4ixrplnrfqyl1kymdj8cwpdp2k0kdr73b57hilcn1kiab6yz1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bit-vec" ,rust-bit-vec-0.6)
                       ("rust-num-bigint" ,rust-num-bigint-0.4)
                       ("rust-time" ,rust-time-0.3))))
    (home-page "https://github.com/qnighy/yasna.rs")
    (synopsis "ASN.1 library for Rust")
    (description "ASN.1 library for Rust")
    (license (list license:expat license:asl2.0))))

(define-public rust-oid-registry-0.6
  (package
    (name "rust-oid-registry")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "oid-registry" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1zwvjp3ad6gzn8g8w2hcn9a2xdap0lkzckhlnwp6rabbzdpz7vcv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-asn1-rs" ,rust-asn1-rs-0.5))))
    (home-page "https://github.com/rusticata/oid-registry")
    (synopsis "Object Identifier (OID) database")
    (description "Object Identifier (OID) database")
    (license (list license:expat license:asl2.0))))

(define-public rust-der-parser-8
  (package
    (name "rust-der-parser")
    (version "8.2.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "der-parser" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "07mnz9y395zyxwj7nam2dbzkqdngfraxp2i7y2714dxmpbxpdmnv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-asn1-rs" ,rust-asn1-rs-0.5)
                       ("rust-cookie-factory" ,rust-cookie-factory-0.3)
                       ("rust-displaydoc" ,rust-displaydoc-0.2)
                       ("rust-nom" ,rust-nom-7)
                       ("rust-num-bigint" ,rust-num-bigint-0.4)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-rusticata-macros" ,rust-rusticata-macros-4))))
    (home-page "https://github.com/rusticata/der-parser")
    (synopsis "Parser/encoder for ASN.1 BER/DER data")
    (description "Parser/encoder for ASN.1 BER/DER data")
    (license (list license:expat license:asl2.0))))

(define-public rust-asn1-rs-impl-0.1
  (package
    (name "rust-asn1-rs-impl")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "asn1-rs-impl" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1va27bn7qxqp4wanzjlkagnynv6jnrhnwmcky2ahzb1r405p6xr7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/rusticata/asn1-rs")
    (synopsis "Implementation details for the `asn1-rs` crate")
    (description "Implementation details for the `asn1-rs` crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-asn1-rs-derive-0.4
  (package
    (name "rust-asn1-rs-derive")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "asn1-rs-derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0v7fgmnzk7jjxv51grhwzcx5bf167nlqwk3vcmq7xblf5s4karbj"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1)
                       ("rust-synstructure" ,rust-synstructure-0.12))))
    (home-page "https://github.com/rusticata/asn1-rs")
    (synopsis "Derive macros for the `asn1-rs` crate")
    (description "Derive macros for the `asn1-rs` crate")
    (license (list license:expat license:asl2.0))))

(define-public rust-asn1-rs-0.5
  (package
    (name "rust-asn1-rs")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "asn1-rs" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1w7zq0392qs7kkv0nzw50bfqvq7q9zxv48fsp3sxyl83mzfxavvz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-asn1-rs-derive" ,rust-asn1-rs-derive-0.4)
                       ("rust-asn1-rs-impl" ,rust-asn1-rs-impl-0.1)
                       ("rust-bitvec" ,rust-bitvec-1)
                       ("rust-cookie-factory" ,rust-cookie-factory-0.3)
                       ("rust-displaydoc" ,rust-displaydoc-0.2)
                       ("rust-nom" ,rust-nom-7)
                       ("rust-num-bigint" ,rust-num-bigint-0.4)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-rusticata-macros" ,rust-rusticata-macros-4)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-time" ,rust-time-0.3))))
    (home-page "https://github.com/rusticata/asn1-rs")
    (synopsis "Parser/encoder for ASN.1 BER/DER data")
    (description "Parser/encoder for ASN.1 BER/DER data")
    (license (list license:expat license:asl2.0))))

(define-public rust-x509-parser-0.14
  (package
    (name "rust-x509-parser")
    (version "0.14.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "x509-parser" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1j7b3xxpwik38y9rajglmhis551gj3zz5irw1vj1bqkwnsvvxv70"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-asn1-rs" ,rust-asn1-rs-0.5)
                       ("rust-base64" ,rust-base64-0.13)
                       ("rust-data-encoding" ,rust-data-encoding-2)
                       ("rust-der-parser" ,rust-der-parser-8)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-nom" ,rust-nom-7)
                       ("rust-oid-registry" ,rust-oid-registry-0.6)
                       ("rust-ring" ,rust-ring-0.16)
                       ("rust-rusticata-macros" ,rust-rusticata-macros-4)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-time" ,rust-time-0.3))))
    (home-page "https://github.com/rusticata/x509-parser")
    (synopsis "Parser for the X.509 v3 format (RFC 5280 certificates)")
    (description "Parser for the X.509 v3 format (RFC 5280 certificates)")
    (license (list license:expat license:asl2.0))))

(define-public rust-rcgen-0.10
  (package
    (name "rust-rcgen")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "rcgen" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0nvqgr697xzdzaavkcwcl59kxw7xfx9zdhdzx49fm3gkwbpq9gpz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-pem" ,rust-pem-1)
                       ("rust-ring" ,rust-ring-0.16)
                       ("rust-time" ,rust-time-0.3)
                       ("rust-x509-parser" ,rust-x509-parser-0.14)
                       ("rust-yasna" ,rust-yasna-0.5)
                       ("rust-zeroize" ,rust-zeroize-1))))
    (home-page "https://github.com/est31/rcgen")
    (synopsis "Rust X.509 certificate generator")
    (description "Rust X.509 certificate generator")
    (license (list license:expat license:asl2.0))))

(define-public rust-quick-xml-0.26
  (package
    (name "rust-quick-xml")
    (version "0.26.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "quick-xml" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1kckgj8qscpi23y62zrfmni73k6h78nvhs3z9myiwq9q7g3b2l3z"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-document-features" ,rust-document-features-0.2)
                       ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://github.com/tafia/quick-xml")
    (synopsis "High performance xml reader and writer")
    (description "High performance xml reader and writer")
    (license license:expat)))

(define-public rust-priority-queue-1
  (package
    (name "rust-priority-queue")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "priority-queue" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0rv2r1ww2hr1rvd8hjmcgx22icz4hcnnrf3f2cdd52frf2zcdaaw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1)
                       ("rust-indexmap" ,rust-indexmap-1)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/garro95/priority-queue")
    (synopsis
     "A Priority Queue implemented as a heap with a function to efficiently change the priority of an item.")
    (description
     "This package provides a Priority Queue implemented as a heap with a function to
efficiently change the priority of an item.")
    (license (list license:lgpl3 license:mpl2.0))))

(define-public rust-poem-derive-1
  (package
    (name "rust-poem-derive")
    (version "1.3.55")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "poem-derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1k1ki8n3zr30kl3qxx6ywcq62ja4g89bs6lh03fk7abshynrp0rv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro-crate" ,rust-proc-macro-crate-1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/poem-web/poem")
    (synopsis "Macros for poem")
    (description "Macros for poem")
    (license (list license:expat license:asl2.0))))

(define-public rust-opentelemetry-semantic-conventions-0.10
  (package
    (name "rust-opentelemetry-semantic-conventions")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "opentelemetry-semantic-conventions" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1swyxkrhm3n1r8639092fxiyl0r9l27vmqhqdmivc2mv18iy00lv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-opentelemetry" ,rust-opentelemetry-0.18))))
    (home-page
     "https://github.com/open-telemetry/opentelemetry-rust/tree/main/opentelemetry-semantic-conventions")
    (synopsis "Semantic conventions for OpenTelemetry")
    (description "Semantic conventions for OpenTelemetry")
    (license license:asl2.0)))

(define-public rust-procfs-0.14
  (package
    (name "rust-procfs")
    (version "0.14.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "procfs" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0sdv4r3gikcz12qzb4020rlcq7vn8kh72vgwmvk7fgw7n2n8vpmi"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-backtrace" ,rust-backtrace-0.3)
                       ("rust-bitflags" ,rust-bitflags-1)
                       ("rust-byteorder" ,rust-byteorder-1)
                       ("rust-chrono" ,rust-chrono-0.4)
                       ("rust-flate2" ,rust-flate2-1)
                       ("rust-hex" ,rust-hex-0.4)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-rustix" ,rust-rustix-0.36)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/eminence/procfs")
    (synopsis "Interface to the linux procfs pseudo-filesystem")
    (description "Interface to the linux procfs pseudo-filesystem")
    (license (list license:expat license:asl2.0))))

(define-public rust-prometheus-0.13
  (package
    (name "rust-prometheus")
    (version "0.13.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "prometheus" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "136gpgkh52kg3w6cxj1fdqqq5kr9ch31ci0lq6swxxdxbz8i3624"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-fnv" ,rust-fnv-1)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-procfs" ,rust-procfs-0.14)
                       ("rust-protobuf" ,rust-protobuf-2)
                       ("rust-protobuf-codegen-pure" ,rust-protobuf-codegen-pure-2)
                       ("rust-reqwest" ,rust-reqwest-0.11)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/tikv/rust-prometheus")
    (synopsis "Prometheus instrumentation library for Rust applications.")
    (description "Prometheus instrumentation library for Rust applications.")
    (license license:asl2.0)))

(define-public rust-opentelemetry-prometheus-0.11
  (package
    (name "rust-opentelemetry-prometheus")
    (version "0.11.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "opentelemetry-prometheus" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1a4didl33avr3y5g0c8z4saml7qjx4kznb0x6f8wylsshcrxihq6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-opentelemetry" ,rust-opentelemetry-0.18)
                       ("rust-prometheus" ,rust-prometheus-0.13)
                       ("rust-protobuf" ,rust-protobuf-2))))
    (home-page "https://github.com/open-telemetry/opentelemetry-rust")
    (synopsis "Prometheus exporter for OpenTelemetry")
    (description "Prometheus exporter for OpenTelemetry")
    (license license:asl2.0)))

(define-public rust-sluice-0.5
  (package
    (name "rust-sluice")
    (version "0.5.5")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sluice" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1d9ywr5039ibgaby8sc72f8fs5lpp8j5y6p3npya4jplxz000x3d"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-channel" ,rust-async-channel-1)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-futures-io" ,rust-futures-io-0.3))))
    (home-page "https://github.com/sagebind/sluice")
    (synopsis
     "Efficient ring buffer for byte buffers, FIFO queues, and SPSC channels")
    (description
     "Efficient ring buffer for byte buffers, FIFO queues, and SPSC channels")
    (license license:expat)))

(define-public rust-castaway-0.1
  (package
    (name "rust-castaway")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "castaway" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1xhspwy477qy5yg9c3jp713asxckjpx0vfrmz5l7r5zg7naqysd2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/sagebind/castaway")
    (synopsis
     "Safe, zero-cost downcasting for limited compile-time specialization.")
    (description
     "Safe, zero-cost downcasting for limited compile-time specialization.")
    (license license:expat)))

(define-public rust-isahc-1
  (package
    (name "rust-isahc")
    (version "1.7.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "isahc" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1scfgyv3dpjbkqa9im25cd12cs6rbd8ygcaw67f3dx41sys08kik"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-channel" ,rust-async-channel-1)
                       ("rust-castaway" ,rust-castaway-0.1)
                       ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
                       ("rust-curl" ,rust-curl-0.4)
                       ("rust-curl-sys" ,rust-curl-sys-0.4)
                       ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-event-listener" ,rust-event-listener-2)
                       ("rust-futures-lite" ,rust-futures-lite-1)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-httpdate" ,rust-httpdate-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-mime" ,rust-mime-0.3)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-parking-lot" ,rust-parking-lot-0.11)
                       ("rust-polling" ,rust-polling-2)
                       ("rust-publicsuffix" ,rust-publicsuffix-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-slab" ,rust-slab-0.4)
                       ("rust-sluice" ,rust-sluice-0.5)
                       ("rust-tracing" ,rust-tracing-0.1)
                       ("rust-tracing-futures" ,rust-tracing-futures-0.2)
                       ("rust-url" ,rust-url-2)
                       ("rust-waker-fn" ,rust-waker-fn-1))))
    (home-page "https://github.com/sagebind/isahc")
    (synopsis "The practical HTTP client that is fun to use.")
    (description "The practical HTTP client that is fun to use.")
    (license license:expat)))

(define-public rust-opentelemetry-http-0.7
  (package
    (name "rust-opentelemetry-http")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "opentelemetry-http" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0pc20cbs7xxqylr750303i1fd4x55icl4i8srqz1hr33sjnpkp0y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-hyper" ,rust-hyper-0.14)
                       ("rust-isahc" ,rust-isahc-1)
                       ("rust-opentelemetry-api" ,rust-opentelemetry-api-0.18)
                       ("rust-reqwest" ,rust-reqwest-0.11)
                       ("rust-surf" ,rust-surf-2)
                       ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://github.com/open-telemetry/opentelemetry-rust")
    (synopsis
     "Helper implementations for exchange of traces and metrics over HTTP")
    (description
     "Helper implementations for exchange of traces and metrics over HTTP")
    (license license:asl2.0)))

(define-public rust-dashmap-5
  (package
    (name "rust-dashmap")
    (version "5.4.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "dashmap" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1p2f5kr5hy7h4w3y2abprnxsaq36r685zfx1s8v0nfw2vbgpcw4h"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-hashbrown" ,rust-hashbrown-0.12)
                       ("rust-lock-api" ,rust-lock-api-0.4)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-parking-lot-core" ,rust-parking-lot-core-0.9)
                       ("rust-rayon" ,rust-rayon-1)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/xacrimon/dashmap")
    (synopsis "Blazing fast concurrent HashMap for Rust.")
    (description "Blazing fast concurrent HashMap for Rust.")
    (license license:expat)))

(define-public rust-opentelemetry-sdk-0.18
  (package
    (name "rust-opentelemetry-sdk")
    (version "0.18.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "opentelemetry_sdk" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "04wiq0jsdxr8r1760hq5r57az68ljcbby57jlb1626rp6d4ir90w"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-std" ,rust-async-std-1)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
                       ("rust-dashmap" ,rust-dashmap-5)
                       ("rust-fnv" ,rust-fnv-1)
                       ("rust-futures-channel" ,rust-futures-channel-0.3)
                       ("rust-futures-executor" ,rust-futures-executor-0.3)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-opentelemetry-http" ,rust-opentelemetry-http-0.7)
                       ("rust-opentelemetry-api" ,rust-opentelemetry-api-0.18)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-stream" ,rust-tokio-stream-0.1)
                       ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/open-telemetry/opentelemetry-rust")
    (synopsis
     "The SDK for the OpenTelemetry metrics collection and distributed tracing framework")
    (description
     "The SDK for the OpenTelemetry metrics collection and distributed tracing
framework")
    (license license:asl2.0)))

(define-public rust-opentelemetry-api-0.18
  (package
    (name "rust-opentelemetry-api")
    (version "0.18.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "opentelemetry_api" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "08hcfvvjnqgw2i86pks6rhmxnac9jyafx543g8y83k3s3vi9cky2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-fnv" ,rust-fnv-1)
                       ("rust-futures-channel" ,rust-futures-channel-0.3)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-indexmap" ,rust-indexmap-1)
                       ("rust-js-sys" ,rust-js-sys-0.3)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-tokio-stream" ,rust-tokio-stream-0.1))))
    (home-page "https://github.com/open-telemetry/opentelemetry-rust")
    (synopsis
     "OpenTelemetry is a metrics collection and distributed tracing framework")
    (description
     "OpenTelemetry is a metrics collection and distributed tracing framework")
    (license license:asl2.0)))

(define-public rust-opentelemetry-0.18
  (package
    (name "rust-opentelemetry")
    (version "0.18.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "opentelemetry" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0vh8xzzigx1n95pv3vxd09lxan40626hwjry6q56q44a53bw7mk9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-opentelemetry-api" ,rust-opentelemetry-api-0.18)
                       ("rust-opentelemetry-sdk" ,rust-opentelemetry-sdk-0.18))))
    (home-page "https://github.com/open-telemetry/opentelemetry-rust")
    (synopsis "A metrics collection and distributed tracing framework")
    (description
     "This package provides a metrics collection and distributed tracing framework")
    (license license:asl2.0)))

(define-public rust-fluent-pseudo-0.3
  (package
    (name "rust-fluent-pseudo")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "fluent-pseudo" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0byldssmzjdmynbh1yvdrxcj0xmhqznlmmgwnh8a1fhla7wn5vgx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-regex" ,rust-regex-1))))
    (home-page "http://www.projectfluent.org")
    (synopsis
     "Pseudolocalization transformation API for use with Project Fluent API.
")
    (description
     "Pseudolocalization transformation API for use with Project Fluent API.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-self-cell-0.10
  (package
    (name "rust-self-cell")
    (version "0.10.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "self_cell" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1by8h3axgpbiph5nbq80z6a41hd4cqlqc66hgnngs57y42j6by8y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-rustversion" ,rust-rustversion-1))))
    (home-page "https://github.com/Voultapher/self_cell")
    (synopsis
     "Safe-to-use proc-macro-free self-referential structs in stable Rust.")
    (description
     "Safe-to-use proc-macro-free self-referential structs in stable Rust.")
    (license license:asl2.0)))

(define-public rust-intl-pluralrules-7
  (package
    (name "rust-intl-pluralrules")
    (version "7.0.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "intl_pluralrules" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0wprd3h6h8nfj62d8xk71h178q7zfn3srxm787w4sawsqavsg3h7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-unic-langid" ,rust-unic-langid-0.9))))
    (home-page "https://github.com/zbraniecki/pluralrules")
    (synopsis "Unicode Plural Rules categorizer for numeric input.")
    (description "Unicode Plural Rules categorizer for numeric input.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-type-map-0.4
  (package
    (name "rust-type-map")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "type-map" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0ilsqq7pcl3k9ggxv2x5fbxxfd6x7ljsndrhc38jmjwnbr63dlxn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-rustc-hash" ,rust-rustc-hash-1))))
    (home-page "https://github.com/kardeiz/type-map")
    (synopsis "Provides a typemap container with FxHashMap")
    (description "This package provides a typemap container with FxHashMap")
    (license (list license:expat license:asl2.0))))

(define-public rust-intl-memoizer-0.5
  (package
    (name "rust-intl-memoizer")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "intl-memoizer" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0vx6cji8ifw77zrgipwmvy1i3v43dcm58hwjxpb1h29i98z46463"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-type-map" ,rust-type-map-0.4)
                       ("rust-unic-langid" ,rust-unic-langid-0.9))))
    (home-page "http://www.projectfluent.org")
    (synopsis "A memoizer specifically tailored for storing lazy-initialized
intl formatters.
")
    (description
     "This package provides a memoizer specifically tailored for storing
lazy-initialized intl formatters.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-fluent-syntax-0.11
  (package
    (name "rust-fluent-syntax")
    (version "0.11.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "fluent-syntax" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0y6ac7z7sbv51nsa6km5z8rkjj4nvqk91vlghq1ck5c3cjbyvay0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "http://www.projectfluent.org")
    (synopsis "Parser/Serializer tools for Fluent Syntax. 
")
    (description "Parser/Serializer tools for Fluent Syntax.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-unic-langid-macros-impl-0.9
  (package
    (name "rust-unic-langid-macros-impl")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "unic-langid-macros-impl" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1n74gi3l8j8k94535psn3azbx9g69i7kbx23d0plwzwhbg0dwp0z"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro-hack" ,rust-proc-macro-hack-0.5)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1)
                       ("rust-unic-langid-impl" ,rust-unic-langid-impl-0.9))))
    (home-page "https://github.com/zbraniecki/unic-locale")
    (synopsis "API for managing Unicode Language Identifiers")
    (description "API for managing Unicode Language Identifiers")
    (license (list license:expat license:asl2.0))))

(define-public rust-unic-langid-macros-0.9
  (package
    (name "rust-unic-langid-macros")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "unic-langid-macros" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1zn4pm72n7w0jy78i8bbkz2yv9g1yg79ava6y3ziy5llys5n2ph5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro-hack" ,rust-proc-macro-hack-0.5)
                       ("rust-tinystr" ,rust-tinystr-0.7)
                       ("rust-unic-langid-impl" ,rust-unic-langid-impl-0.9)
                       ("rust-unic-langid-macros-impl" ,rust-unic-langid-macros-impl-0.9))))
    (home-page "https://github.com/zbraniecki/unic-locale")
    (synopsis "API for managing Unicode Language Identifiers")
    (description "API for managing Unicode Language Identifiers")
    (license (list license:expat license:asl2.0))))

(define-public rust-zerovec-derive-0.9
  (package
    (name "rust-zerovec-derive")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "zerovec-derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1b0vwmc6mwzmp94wj96r772ipchvgi83cafbz3811pjx5mrmhra8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1)
                       ("rust-synstructure" ,rust-synstructure-0.12))))
    (home-page "https://github.com/unicode-org/icu4x")
    (synopsis "Custom derive for the zerovec crate")
    (description "Custom derive for the zerovec crate")
    (license license:expat)))

(define-public rust-zerofrom-derive-0.1
  (package
    (name "rust-zerofrom-derive")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "zerofrom-derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "16f4l6sk5h121p2k3bl110jjzp4x8iqhgg16wpyfmf6lyz0ygsml"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1)
                       ("rust-synstructure" ,rust-synstructure-0.12))))
    (home-page "https://github.com/unicode-org/icu4x")
    (synopsis "Custom derive for the zerofrom crate")
    (description "Custom derive for the zerofrom crate")
    (license license:expat)))

(define-public rust-zerofrom-0.1
  (package
    (name "rust-zerofrom")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "zerofrom" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "18mylrn6zii17vcpzka94pxxlwn16vk23kpwbmhjgpji69ndfm6z"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-zerofrom-derive" ,rust-zerofrom-derive-0.1))))
    (home-page "https://github.com/unicode-org/icu4x")
    (synopsis "ZeroFrom trait for constructing")
    (description "ZeroFrom trait for constructing")
    (license license:expat)))

(define-public rust-yoke-derive-0.7
  (package
    (name "rust-yoke-derive")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "yoke-derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "18mpypz6xpcxni3bx3j5aygj46v5s9b2p8qaxxp53mryj9lw2img"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1)
                       ("rust-synstructure" ,rust-synstructure-0.12))))
    (home-page "https://github.com/unicode-org/icu4x")
    (synopsis "Custom derive for the yoke crate")
    (description "Custom derive for the yoke crate")
    (license license:expat)))

(define-public rust-yoke-0.7
  (package
    (name "rust-yoke")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "yoke" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1plmwim3rcqa455gik60z3abmz2qrzra1scf95rrg3x24dd0fj0q"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1)
                       ("rust-stable-deref-trait" ,rust-stable-deref-trait-1)
                       ("rust-yoke-derive" ,rust-yoke-derive-0.7)
                       ("rust-zerofrom" ,rust-zerofrom-0.1))))
    (home-page "https://github.com/unicode-org/icu4x")
    (synopsis
     "Abstraction allowing borrowed data to be carried along with the backing data it borrows from")
    (description
     "Abstraction allowing borrowed data to be carried along with the backing data it
borrows from")
    (license license:expat)))

(define-public rust-t1ha-0.1
  (package
    (name "rust-t1ha")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "t1ha" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1k4w9fc3wkxq67sicj1q44gmjh5fajx332536ln4wm0smr8sli7s"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-0.1)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-rustc-version" ,rust-rustc-version-0.2))))
    (home-page "https://github.com/flier/rust-t1ha")
    (synopsis
     "An implementation of the T1AH (Fast Positive Hash) hash function.")
    (description
     "An implementation of the T1AH (Fast Positive Hash) hash function.")
    (license license:zlib)))

(define-public rust-zerovec-0.9
  (package
    (name "rust-zerovec")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "zerovec" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1sn8czjxh5fx9i21n5pfd17ay66m18yv98qah8vz8rfq9h9m93qr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-databake" ,rust-databake-0.1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-t1ha" ,rust-t1ha-0.1)
                       ("rust-yoke" ,rust-yoke-0.7)
                       ("rust-zerofrom" ,rust-zerofrom-0.1)
                       ("rust-zerovec-derive" ,rust-zerovec-derive-0.9))))
    (home-page "https://github.com/unicode-org/icu4x")
    (synopsis "Zero-copy vector backed by a byte array")
    (description "Zero-copy vector backed by a byte array")
    (license license:expat)))

(define-public rust-displaydoc-0.2
  (package
    (name "rust-displaydoc")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "displaydoc" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0p8pyg10csc782qlwx3znr6qx46ni96m1qh597kmyrf6s3s8axa8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/yaahc/displaydoc")
    (synopsis
     "A derive macro for implementing the display Trait via a doc comment and string interpolation
")
    (description
     "This package provides a derive macro for implementing the display Trait via a
doc comment and string interpolation")
    (license (list license:expat license:asl2.0))))

(define-public rust-databake-derive-0.1
  (package
    (name "rust-databake-derive")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "databake-derive" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0paxmjmlgc19650nrxfnnp57bibsfx7wnzghw3v27kksv61qmgzx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1)
                       ("rust-synstructure" ,rust-synstructure-0.12))))
    (home-page "https://github.com/unicode-org/icu4x")
    (synopsis "Custom derive for the databake crate")
    (description "Custom derive for the databake crate")
    (license license:expat)))

(define-public rust-databake-0.1
  (package
    (name "rust-databake")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "databake" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1sa8k4vc9f7199z7r99661j37c9cvq9zma42amzrw00wwx8hhaql"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-databake-derive" ,rust-databake-derive-0.1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/unicode-org/icu4x")
    (synopsis
     "Trait that lets structs represent themselves as (const) Rust expressions")
    (description
     "Trait that lets structs represent themselves as (const) Rust expressions")
    (license license:expat)))

(define-public rust-tinystr-0.7
  (package
    (name "rust-tinystr")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tinystr" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1vx5jy0pirx79xnibyb5ka13jlh4r2c8wivvw0aix4vfhnvgbhvs"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-databake" ,rust-databake-0.1)
                       ("rust-displaydoc" ,rust-displaydoc-0.2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-zerovec" ,rust-zerovec-0.9))))
    (home-page "https://github.com/unicode-org/icu4x")
    (synopsis "A small ASCII-only bounded length string representation.")
    (description
     "This package provides a small ASCII-only bounded length string representation.")
    (license license:expat)))

(define-public rust-unic-langid-impl-0.9
  (package
    (name "rust-unic-langid-impl")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "unic-langid-impl" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1zrm390npybzrclbrj6il1l3yqd0i4zgvlypamdm95l75cpzsnz3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-tinystr" ,rust-tinystr-0.7))))
    (home-page "https://github.com/zbraniecki/unic-locale")
    (synopsis "API for managing Unicode Language Identifiers")
    (description "API for managing Unicode Language Identifiers")
    (license (list license:expat license:asl2.0))))

(define-public rust-unic-langid-0.9
  (package
    (name "rust-unic-langid")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "unic-langid" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0byg9pqm4vywfx82lcw080sphbgj5z8niq0gz384zd4x4gbrm3rr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-unic-langid-impl" ,rust-unic-langid-impl-0.9)
                       ("rust-unic-langid-macros" ,rust-unic-langid-macros-0.9))))
    (home-page "https://github.com/zbraniecki/unic-locale")
    (synopsis "API for managing Unicode Language Identifiers")
    (description "API for managing Unicode Language Identifiers")
    (license (list license:expat license:asl2.0))))

(define-public rust-fluent-langneg-0.13
  (package
    (name "rust-fluent-langneg")
    (version "0.13.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "fluent-langneg" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "152yxplc11vmxkslvmaqak9x86xnavnhdqyhrh38ym37jscd0jic"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-unic-langid" ,rust-unic-langid-0.9))))
    (home-page "http://projectfluent.org/")
    (synopsis "A library for language and locale negotiation.
")
    (description
     "This package provides a library for language and locale negotiation.")
    (license license:asl2.0)))

(define-public rust-fluent-bundle-0.15
  (package
    (name "rust-fluent-bundle")
    (version "0.15.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "fluent-bundle" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1zbzm13rfz7fay7bps7jd4j1pdnlxmdzzfymyq2iawf9vq0wchp2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-fluent-langneg" ,rust-fluent-langneg-0.13)
                       ("rust-fluent-syntax" ,rust-fluent-syntax-0.11)
                       ("rust-intl-memoizer" ,rust-intl-memoizer-0.5)
                       ("rust-intl-pluralrules" ,rust-intl-pluralrules-7)
                       ("rust-rustc-hash" ,rust-rustc-hash-1)
                       ("rust-self-cell" ,rust-self-cell-0.10)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-unic-langid" ,rust-unic-langid-0.9))))
    (home-page "http://www.projectfluent.org")
    (synopsis
     "A localization system designed to unleash the entire expressive power of
natural language translations.
")
    (description
     "This package provides a localization system designed to unleash the entire
expressive power of natural language translations.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-fluent-0.16
  (package
    (name "rust-fluent")
    (version "0.16.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "fluent" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "19s7z0gw95qdsp9hhc00xcy11nwhnx93kknjmdvdnna435w97xk1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-fluent-bundle" ,rust-fluent-bundle-0.15)
                       ("rust-fluent-pseudo" ,rust-fluent-pseudo-0.3)
                       ("rust-unic-langid" ,rust-unic-langid-0.9))))
    (home-page "http://www.projectfluent.org")
    (synopsis
     "A localization system designed to unleash the entire expressive power of
natural language translations.
")
    (description
     "This package provides a localization system designed to unleash the entire
expressive power of natural language translations.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-chacha20-0.7
  (package
    (name "rust-chacha20")
    (version "0.7.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "chacha20" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1c8h4sp9zh13v8p9arydjcj92xc6j3mccrjc4mizrvq7fzx9717h"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-cipher" ,rust-cipher-0.3)
                       ("rust-cpufeatures" ,rust-cpufeatures-0.2)
                       ("rust-rand-core" ,rust-rand-core-0.6)
                       ("rust-zeroize" ,rust-zeroize-1))))
    (home-page "https://github.com/RustCrypto/stream-ciphers")
    (synopsis
     "The ChaCha20 stream cipher (RFC 8439) implemented in pure Rust using traits
from the RustCrypto `cipher` crate, with optional architecture-specific
hardware acceleration (AVX2, SSE2). Additionally provides the ChaCha8, ChaCha12,
XChaCha20, XChaCha12 and XChaCha8 stream ciphers, and also optional
rand_core-compatible RNGs based on those ciphers.
")
    (description
     "The ChaCha20 stream cipher (RFC 8439) implemented in pure Rust using traits from
the RustCrypto `cipher` crate, with optional architecture-specific hardware
acceleration (AVX2, SSE2).  Additionally provides the ChaCha8, ChaCha12,
XChaCha20, XChaCha12 and XChaCha8 stream ciphers, and also optional
rand_core-compatible RNGs based on those ciphers.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-chacha20poly1305-0.8
  (package
    (name "rust-chacha20poly1305")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "chacha20poly1305" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "18mb6k1w71dqv5q50an4rvp19l6yg8ssmvfrmknjfh2z0az7lm5n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-aead" ,rust-aead-0.4)
                       ("rust-chacha20" ,rust-chacha20-0.7)
                       ("rust-cipher" ,rust-cipher-0.3)
                       ("rust-poly1305" ,rust-poly1305-0.7)
                       ("rust-zeroize" ,rust-zeroize-1))))
    (home-page
     "https://github.com/RustCrypto/AEADs/tree/master/chacha20poly1305")
    (synopsis
     "Pure Rust implementation of the ChaCha20Poly1305 Authenticated Encryption
with Additional Data Cipher (RFC 8439) with optional architecture-specific
hardware acceleration. Also contains implementations of the XChaCha20Poly1305
extended nonce variant of ChaCha20Poly1305, and the reduced-round
ChaCha8Poly1305 and ChaCha12Poly1305 lightweight variants.
")
    (description
     "Pure Rust implementation of the ChaCha20Poly1305 Authenticated Encryption with
Additional Data Cipher (RFC 8439) with optional architecture-specific hardware
acceleration.  Also contains implementations of the XChaCha20Poly1305 extended
nonce variant of ChaCha20Poly1305, and the reduced-round ChaCha8Poly1305 and
ChaCha12Poly1305 lightweight variants.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-zeroize-1
  (package
    (name "rust-zeroize")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "zeroize" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1z8yix823b6lz878qwg6bvwhg3lb0cbw3c9yij9p8mbv7zdzfmj7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-zeroize-derive" ,rust-zeroize-derive-1))))
    (home-page "https://github.com/RustCrypto/utils/tree/master/zeroize")
    (synopsis "Securely clear secrets from memory with a simple trait built on
stable Rust primitives which guarantee memory is zeroed using an
operation will not be 'optimized away' by the compiler.
Uses a portable pure Rust implementation that works everywhere,
even WASM!
")
    (description
     "Securely clear secrets from memory with a simple trait built on stable Rust
primitives which guarantee memory is zeroed using an operation will not be
optimized away by the compiler.  Uses a portable pure Rust implementation that
works everywhere, even WASM!")
    (license (list license:asl2.0 license:expat))))

(define-public rust-polyval-0.5
  (package
    (name "rust-polyval")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "polyval" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1890wqvc0csc9y9k9k4gsbz91rgdnhn6xnfmy9pqkh674fvd46c4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-cpufeatures" ,rust-cpufeatures-0.2)
                       ("rust-opaque-debug" ,rust-opaque-debug-0.3)
                       ("rust-universal-hash" ,rust-universal-hash-0.4)
                       ("rust-zeroize" ,rust-zeroize-1))))
    (home-page "https://github.com/RustCrypto/universal-hashes")
    (synopsis
     "POLYVAL is a GHASH-like universal hash over GF(2^128) useful for constructing
a Message Authentication Code (MAC)
")
    (description
     "POLYVAL is a GHASH-like universal hash over GF(2^128) useful for constructing a
Message Authentication Code (MAC)")
    (license (list license:asl2.0 license:expat))))

(define-public rust-ghash-0.4
  (package
    (name "rust-ghash")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "ghash" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "169wvrc2k9lw776x3pmqp76kc0w5717wz01bfg9rz0ypaqbcr0qm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-opaque-debug" ,rust-opaque-debug-0.3)
                       ("rust-polyval" ,rust-polyval-0.5)
                       ("rust-zeroize" ,rust-zeroize-1))))
    (home-page "https://github.com/RustCrypto/universal-hashes")
    (synopsis
     "Universal hash over GF(2^128) useful for constructing a Message Authentication Code (MAC),
as in the AES-GCM authenticated encryption cipher.
")
    (description
     "Universal hash over GF(2^128) useful for constructing a Message Authentication
Code (MAC), as in the AES-GCM authenticated encryption cipher.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-aes-gcm-0.9
  (package
    (name "rust-aes-gcm")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "aes-gcm" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1xndncn1phjb7pjam63vl0yp7h8jh95m0yxanr1092vx7al8apyz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-aead" ,rust-aead-0.4)
                       ("rust-aes" ,rust-aes-0.7)
                       ("rust-cipher" ,rust-cipher-0.3)
                       ("rust-ctr" ,rust-ctr-0.8)
                       ("rust-ghash" ,rust-ghash-0.4)
                       ("rust-subtle" ,rust-subtle-2)
                       ("rust-zeroize" ,rust-zeroize-1))))
    (home-page "https://github.com/RustCrypto/AEADs")
    (synopsis "Pure Rust implementation of the AES-GCM (Galois/Counter Mode)
Authenticated Encryption with Associated Data (AEAD) Cipher
with optional architecture-specific hardware acceleration
")
    (description
     "Pure Rust implementation of the AES-GCM (Galois/Counter Mode) Authenticated
Encryption with Associated Data (AEAD) Cipher with optional
architecture-specific hardware acceleration")
    (license (list license:asl2.0 license:expat))))

(define-public rust-csrf-0.4
  (package
    (name "rust-csrf")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "csrf" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1q7ixhshj6a7x2vgsr4d4iqa5mgp4fwkr4lx2hgvnj9xcy1py9dh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-aead" ,rust-aead-0.4)
                       ("rust-aes-gcm" ,rust-aes-gcm-0.9)
                       ("rust-byteorder" ,rust-byteorder-1)
                       ("rust-chacha20poly1305" ,rust-chacha20poly1305-0.8)
                       ("rust-chrono" ,rust-chrono-0.4)
                       ("rust-data-encoding" ,rust-data-encoding-2)
                       ("rust-generic-array" ,rust-generic-array-0.14)
                       ("rust-hmac" ,rust-hmac-0.11)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-sha2" ,rust-sha2-0.9)
                       ("rust-typemap" ,rust-typemap-0.3))))
    (home-page "https://github.com/heartsucker/rust-csrf")
    (synopsis "CSRF protection primitives")
    (description "CSRF protection primitives")
    (license license:expat)))

(define-public rust-poem-1
  (package
    (name "rust-poem")
    (version "1.3.55")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "poem" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "18dgkm0kxsdm9wvcvdq0gf7kmrzjccb2dzwxsh13r74rsilq0q60"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-async-compression" ,rust-async-compression-0.3)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-base64" ,rust-base64-0.21)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-chrono" ,rust-chrono-0.4)
                       ("rust-cookie" ,rust-cookie-0.16)
                       ("rust-csrf" ,rust-csrf-0.4)
                       ("rust-eyre" ,rust-eyre-0.6)
                       ("rust-fluent" ,rust-fluent-0.16)
                       ("rust-fluent-langneg" ,rust-fluent-langneg-0.13)
                       ("rust-fluent-syntax" ,rust-fluent-syntax-0.11)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-headers" ,rust-headers-0.3)
                       ("rust-hex" ,rust-hex-0.4)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-httpdate" ,rust-httpdate-1)
                       ("rust-hyper" ,rust-hyper-0.14)
                       ("rust-hyper-rustls" ,rust-hyper-rustls-0.23)
                       ("rust-intl-memoizer" ,rust-intl-memoizer-0.5)
                       ("rust-mime" ,rust-mime-0.3)
                       ("rust-mime-guess" ,rust-mime-guess-2)
                       ("rust-multer" ,rust-multer-2)
                       ("rust-openssl" ,rust-openssl-0.10)
                       ("rust-opentelemetry" ,rust-opentelemetry-0.18)
                       ("rust-opentelemetry-http" ,rust-opentelemetry-http-0.7)
                       ("rust-opentelemetry-prometheus" ,rust-opentelemetry-prometheus-0.11)
                       ("rust-opentelemetry-semantic-conventions" ,rust-opentelemetry-semantic-conventions-0.10)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-poem-derive" ,rust-poem-derive-1)
                       ("rust-priority-queue" ,rust-priority-queue-1)
                       ("rust-prometheus" ,rust-prometheus-0.13)
                       ("rust-quick-xml" ,rust-quick-xml-0.26)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-rcgen" ,rust-rcgen-0.10)
                       ("rust-redis" ,rust-redis-0.22)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-rfc7239" ,rust-rfc7239-0.1)
                       ("rust-ring" ,rust-ring-0.16)
                       ("rust-rust-embed" ,rust-rust-embed-6)
                       ("rust-rustls-pemfile" ,rust-rustls-pemfile-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-serde-urlencoded" ,rust-serde-urlencoded-0.7)
                       ("rust-serde-yaml" ,rust-serde-yaml-0.9)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-sse-codec" ,rust-sse-codec-0.3)
                       ("rust-tempfile" ,rust-tempfile-3)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-time" ,rust-time-0.3)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-metrics" ,rust-tokio-metrics-0.1)
                       ("rust-tokio-native-tls" ,rust-tokio-native-tls-0.3)
                       ("rust-tokio-openssl" ,rust-tokio-openssl-0.6)
                       ("rust-tokio-rustls" ,rust-tokio-rustls-0.23)
                       ("rust-tokio-stream" ,rust-tokio-stream-0.1)
                       ("rust-tokio-tungstenite" ,rust-tokio-tungstenite-0.18)
                       ("rust-tokio-util" ,rust-tokio-util-0.7)
                       ("rust-tower" ,rust-tower-0.4)
                       ("rust-tracing" ,rust-tracing-0.1)
                       ("rust-unic-langid" ,rust-unic-langid-0.9)
                       ("rust-x509-parser" ,rust-x509-parser-0.14))))
    (home-page "https://github.com/poem-web/poem")
    (synopsis
     "Poem is a full-featured and easy-to-use web framework with the Rust programming language.")
    (description
     "Poem is a full-featured and easy-to-use web framework with the Rust programming
language.")
    (license (list license:expat license:asl2.0))))

(define-public rust-tower-layer-0.3
  (package
    (name "rust-tower-layer")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tower-layer" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1l7i17k9vlssrdg4s3b0ia5jjkmmxsvv8s9y9ih0jfi8ssz8s362"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/tower-rs/tower")
    (synopsis
     "Decorates a `Service` to allow easy composition between `Service`s.
")
    (description
     "Decorates a `Service` to allow easy composition between `Service`s.")
    (license license:expat)))

(define-public rust-tower-service-0.3
  (package
    (name "rust-tower-service")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tower-service" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0lmfzmmvid2yp2l36mbavhmqgsvzqf7r2wiwz73ml4xmwaf1rg5n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/tower-rs/tower")
    (synopsis
     "Trait representing an asynchronous, request / response based, client or server.
")
    (description
     "Trait representing an asynchronous, request / response based, client or server.")
    (license license:expat)))

(define-public rust-hdrhistogram-7
  (package
    (name "rust-hdrhistogram")
    (version "7.5.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "hdrhistogram" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1a1al1rfxcqmx0n9h100ggvg036f4rv69fq12kimazvw9zsvj6bz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-base64" ,rust-base64-0.13)
                       ("rust-byteorder" ,rust-byteorder-1)
                       ("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
                       ("rust-flate2" ,rust-flate2-1)
                       ("rust-nom" ,rust-nom-7)
                       ("rust-num-traits" ,rust-num-traits-0.2))))
    (home-page "https://github.com/HdrHistogram/HdrHistogram_rust")
    (synopsis "A port of HdrHistogram to Rust")
    (description "This package provides a port of HdrHistogram to Rust")
    (license (list license:expat license:asl2.0))))

(define-public rust-tower-0.4
  (package
    (name "rust-tower")
    (version "0.4.13")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tower" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "073wncyqav4sak1p755hf6vl66njgfc1z1g1di9rxx3cvvh9pymq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-hdrhistogram" ,rust-hdrhistogram-7)
                       ("rust-indexmap" ,rust-indexmap-1)
                       ("rust-pin-project" ,rust-pin-project-1)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-slab" ,rust-slab-0.4)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-stream" ,rust-tokio-stream-0.1)
                       ("rust-tokio-util" ,rust-tokio-util-0.7)
                       ("rust-tower-layer" ,rust-tower-layer-0.3)
                       ("rust-tower-service" ,rust-tower-service-0.3)
                       ("rust-tracing" ,rust-tracing-0.1))))
    (home-page "https://github.com/tower-rs/tower")
    (synopsis
     "Tower is a library of modular and reusable components for building robust
clients and servers.
")
    (description
     "Tower is a library of modular and reusable components for building robust
clients and servers.")
    (license license:expat)))

(define-public rust-tungstenite-0.18
  (package
    (name "rust-tungstenite")
    (version "0.18.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tungstenite" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1207jv8ciklgnqwjhxc1c1xhplrfab231191apyz0k6d56vnmvih"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-base64" ,rust-base64-0.13)
                       ("rust-byteorder" ,rust-byteorder-1)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-httparse" ,rust-httparse-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-native-tls" ,rust-native-tls-0.2)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-rustls" ,rust-rustls-0.20)
                       ("rust-rustls-native-certs" ,rust-rustls-native-certs-0.6)
                       ("rust-sha1" ,rust-sha1-0.10)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-url" ,rust-url-2)
                       ("rust-utf-8" ,rust-utf-8-0.7)
                       ("rust-webpki" ,rust-webpki-0.22)
                       ("rust-webpki-roots" ,rust-webpki-roots-0.22))))
    (home-page "https://github.com/snapview/tungstenite-rs")
    (synopsis "Lightweight stream-based WebSocket implementation")
    (description "Lightweight stream-based WebSocket implementation")
    (license (list license:expat license:asl2.0))))

(define-public rust-tokio-tungstenite-0.18
  (package
    (name "rust-tokio-tungstenite")
    (version "0.18.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tokio-tungstenite" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1z8bxhq6d1ndh4x914wwk72l93ha1sl0jmnb6knvqiqi869rqcal"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-native-tls" ,rust-native-tls-0.2)
                       ("rust-rustls" ,rust-rustls-0.20)
                       ("rust-rustls-native-certs" ,rust-rustls-native-certs-0.6)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-native-tls" ,rust-tokio-native-tls-0.3)
                       ("rust-tokio-rustls" ,rust-tokio-rustls-0.23)
                       ("rust-tungstenite" ,rust-tungstenite-0.18)
                       ("rust-webpki" ,rust-webpki-0.22)
                       ("rust-webpki-roots" ,rust-webpki-roots-0.22))))
    (home-page "https://github.com/snapview/tokio-tungstenite")
    (synopsis
     "Tokio binding for Tungstenite, the Lightweight stream-based WebSocket implementation")
    (description
     "Tokio binding for Tungstenite, the Lightweight stream-based WebSocket
implementation")
    (license license:expat)))

(define-public rust-sync-wrapper-0.1
  (package
    (name "rust-sync-wrapper")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sync_wrapper" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0q01lyj0gr9a93n10nxsn8lwbzq97jqd6b768x17c8f7v7gccir0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3))))
    (home-page "https://docs.rs/sync_wrapper")
    (synopsis
     "A tool for enlisting the compilerâs help in proving the absence of concurrency")
    (description
     "This package provides a tool for enlisting the compilerâs help in proving the
absence of concurrency")
    (license license:asl2.0)))

(define-public rust-multer-2
  (package
    (name "rust-multer")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "multer" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1hjiphaypj3phqaj5igrzcia9xfmf4rr4ddigbh8zzb96k1bvb01"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                       ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-httparse" ,rust-httparse-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-mime" ,rust-mime-0.3)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-spin" ,rust-spin-0.9)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-util" ,rust-tokio-util-0.7)
                       ("rust-version-check" ,rust-version-check-0.9))))
    (home-page "https://github.com/rousan/multer-rs")
    (synopsis
     "An async parser for `multipart/form-data` content-type in Rust.")
    (description
     "An async parser for `multipart/form-data` content-type in Rust.")
    (license license:expat)))

(define-public rust-matchit-0.7
  (package
    (name "rust-matchit")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "matchit" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0h7a1a57wamz0305dipj20shv2b5dw47jjp6dsgfaxmpmznlhwmq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/ibraheemdev/matchit")
    (synopsis "A blazing fast URL router.")
    (description "This package provides a blazing fast URL router.")
    (license license:expat)))

(define-public rust-itoa-1
  (package
    (name "rust-itoa")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "itoa" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "19jc2sa3wvdc29zhgbwf3bayikq4rq18n20dbyg9ahd4hbsxjfj5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-no-panic" ,rust-no-panic-0.1))))
    (home-page "https://github.com/dtolnay/itoa")
    (synopsis "Fast integer primitive to string conversion")
    (description "Fast integer primitive to string conversion")
    (license (list license:expat license:asl2.0))))

(define-public rust-headers-0.3
  (package
    (name "rust-headers")
    (version "0.3.8")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "headers" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "11258p6q2md68sfhmqrgrx23vjiapqcbxffh1hz223awivdp5qzk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-base64" ,rust-base64-0.13)
                       ("rust-bitflags" ,rust-bitflags-1)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-headers-core" ,rust-headers-core-0.2)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-httpdate" ,rust-httpdate-1)
                       ("rust-mime" ,rust-mime-0.3)
                       ("rust-sha1" ,rust-sha1-0.10))))
    (home-page "https://hyper.rs")
    (synopsis "typed HTTP headers")
    (description "typed HTTP headers")
    (license license:expat)))

(define-public rust-axum-macros-0.3
  (package
    (name "rust-axum-macros")
    (version "0.3.7")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "axum-macros" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0xrjwwq3adyzfk1lw27gypvqry8pn3vpjwhb52g96ig67dhj9d9b"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-heck" ,rust-heck-0.4)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/tokio-rs/axum")
    (synopsis "Macros for axum")
    (description "Macros for axum")
    (license license:expat)))

(define-public rust-tracing-core-0.1
  (package
    (name "rust-tracing-core")
    (version "0.1.31")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tracing-core" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "16pp28izw9c41m7c55qsghlz07r9ark8lzd3x6ig3xhxg89vhm89"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-once-cell" ,rust-once-cell-1)
                       ("rust-valuable" ,rust-valuable-0.1))))
    (home-page "https://tokio.rs")
    (synopsis "Core primitives for application-level tracing.
")
    (description "Core primitives for application-level tracing.")
    (license license:expat)))

(define-public rust-tracing-attributes-0.1
  (package
    (name "rust-tracing-attributes")
    (version "0.1.24")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tracing-attributes" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0x3spb5h4m56035lrvrchbyhg8pxrg4sk0qij8d0ni815b5f6mqg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://tokio.rs")
    (synopsis
     "Procedural macro attributes for automatically instrumenting functions.
")
    (description
     "Procedural macro attributes for automatically instrumenting functions.")
    (license license:expat)))

(define-public rust-tracing-0.1
  (package
    (name "rust-tracing")
    (version "0.1.38")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tracing" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0kc1mpsh00l2zd9wryf1jyzwvilmbjdg5dmnn240rx6k2flgd76g"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-log" ,rust-log-0.4)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-tracing-attributes" ,rust-tracing-attributes-0.1)
                       ("rust-tracing-core" ,rust-tracing-core-0.1))))
    (home-page "https://tokio.rs")
    (synopsis "Application-level tracing for Rust.
")
    (description "Application-level tracing for Rust.")
    (license license:expat)))

(define-public rust-iri-string-0.7
  (package
    (name "rust-iri-string")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "iri-string" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1h07hkfkkjjvgzlaqpr5fia7hrgv7qxqdw4xrpdc3936gmk9p191"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-memchr" ,rust-memchr-2)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/lo48576/iri-string")
    (synopsis "IRI as string types")
    (description "IRI as string types")
    (license (list license:expat license:asl2.0))))

(define-public rust-http-range-header-0.3
  (package
    (name "rust-http-range-header")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "http-range-header" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0aas8c5dagfhcqpmqq9xw6a8nkl3lfg4g4mpddvyz1cj1bnqxzhb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/MarcusGrass/parse-range-headers")
    (synopsis "No-dep range header parser")
    (description "No-dep range header parser")
    (license license:expat)))

(define-public rust-tower-http-0.4
  (package
    (name "rust-tower-http")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tower-http" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0n5n98fcszjq92jhc2ppk6hjwn8lxim3g3cfhax4dv7knfll47ax"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-compression" ,rust-async-compression-0.3)
                       ("rust-base64" ,rust-base64-0.20)
                       ("rust-bitflags" ,rust-bitflags-1)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-http-body" ,rust-http-body-0.4)
                       ("rust-http-range-header" ,rust-http-range-header-0.3)
                       ("rust-httpdate" ,rust-httpdate-1)
                       ("rust-iri-string" ,rust-iri-string-0.7)
                       ("rust-mime" ,rust-mime-0.3)
                       ("rust-mime-guess" ,rust-mime-guess-2)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-util" ,rust-tokio-util-0.7)
                       ("rust-tower" ,rust-tower-0.4)
                       ("rust-tower-layer" ,rust-tower-layer-0.3)
                       ("rust-tower-service" ,rust-tower-service-0.3)
                       ("rust-tracing" ,rust-tracing-0.1)
                       ("rust-uuid" ,rust-uuid-1))))
    (home-page "https://github.com/tower-rs/tower-http")
    (synopsis "Tower middleware and utilities for HTTP clients and servers")
    (description "Tower middleware and utilities for HTTP clients and servers")
    (license license:expat)))

(define-public rust-http-body-0.4
  (package
    (name "rust-http-body")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "http-body" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1l967qwwlvhp198xdrnc0p5d7jwfcp6q2lm510j6zqw4s4b8zwym"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2))))
    (home-page "https://github.com/hyperium/http-body")
    (synopsis
     "Trait representing an asynchronous, streaming, HTTP request or response body.
")
    (description
     "Trait representing an asynchronous, streaming, HTTP request or response body.")
    (license license:expat)))

(define-public rust-axum-core-0.3
  (package
    (name "rust-axum-core")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "axum-core" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0b1d9nkqb8znaba4qqzxzc968qwj4ybn4vgpyz9lz4a7l9vsb7vm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-http-body" ,rust-http-body-0.4)
                       ("rust-mime" ,rust-mime-0.3)
                       ("rust-rustversion" ,rust-rustversion-1)
                       ("rust-tower-http" ,rust-tower-http-0.4)
                       ("rust-tower-layer" ,rust-tower-layer-0.3)
                       ("rust-tower-service" ,rust-tower-service-0.3)
                       ("rust-tracing" ,rust-tracing-0.1))))
    (home-page "https://github.com/tokio-rs/axum")
    (synopsis "Core types and traits for axum")
    (description "Core types and traits for axum")
    (license license:expat)))

(define-public rust-proc-macro2-1
  (package
    (name "rust-proc-macro2")
    (version "1.0.58")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "proc-macro2" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1a2w01q4pfnw823sr5kvjspixgpbf6vnc6qhf6bdv0f2q0pvh7zs"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-unicode-ident" ,rust-unicode-ident-1))))
    (home-page "https://github.com/dtolnay/proc-macro2")
    (synopsis
     "A substitute implementation of the compiler's `proc_macro` API to decouple token-based libraries from the procedural macro use case.")
    (description
     "This package provides a substitute implementation of the compiler's `proc_macro`
API to decouple token-based libraries from the procedural macro use case.")
    (license (list license:expat license:asl2.0))))

(define-public rust-syn-2
  (package
    (name "rust-syn")
    (version "2.0.16")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "syn" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "00fg96sqsswq7nwc8yxxhj3dyf96zrksxh0rxjnqxnzznpa73xm6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-unicode-ident" ,rust-unicode-ident-1))))
    (home-page "https://github.com/dtolnay/syn")
    (synopsis "Parser for Rust source code")
    (description "Parser for Rust source code")
    (license (list license:expat license:asl2.0))))

(define-public rust-async-trait-0.1
  (package
    (name "rust-async-trait")
    (version "0.1.68")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "async-trait" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0hp8ysdjr8c43avm7bkj73cd22ra3dpzag82bjyyj6qn5a7xvk5r"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/dtolnay/async-trait")
    (synopsis "Type erasure for async trait methods")
    (description "Type erasure for async trait methods")
    (license (list license:expat license:asl2.0))))

(define-public rust-axum-0.6
  (package
    (name "rust-axum")
    (version "0.6.18")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "axum" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0ffzv20n4f68qa7d9cp4am0l7np0wxp5ixkv3lf3694i4mwmj5zq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-axum-core" ,rust-axum-core-0.3)
                       ("rust-axum-macros" ,rust-axum-macros-0.3)
                       ("rust-base64" ,rust-base64-0.21)
                       ("rust-bitflags" ,rust-bitflags-1)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-headers" ,rust-headers-0.3)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-http-body" ,rust-http-body-0.4)
                       ("rust-hyper" ,rust-hyper-0.14)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-matchit" ,rust-matchit-0.7)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-mime" ,rust-mime-0.3)
                       ("rust-multer" ,rust-multer-2)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-rustversion" ,rust-rustversion-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-serde-path-to-error" ,rust-serde-path-to-error-0.1)
                       ("rust-serde-urlencoded" ,rust-serde-urlencoded-0.7)
                       ("rust-sha1" ,rust-sha1-0.10)
                       ("rust-sync-wrapper" ,rust-sync-wrapper-0.1)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-tungstenite" ,rust-tokio-tungstenite-0.18)
                       ("rust-tower" ,rust-tower-0.4)
                       ("rust-tower-http" ,rust-tower-http-0.4)
                       ("rust-tower-layer" ,rust-tower-layer-0.3)
                       ("rust-tower-service" ,rust-tower-service-0.3)
                       ("rust-tracing" ,rust-tracing-0.1))))
    (home-page "https://github.com/tokio-rs/axum")
    (synopsis "Web framework that focuses on ergonomics and modularity")
    (description "Web framework that focuses on ergonomics and modularity")
    (license license:expat)))

(define-public rust-actix-web-codegen-4
  (package
    (name "rust-actix-web-codegen")
    (version "4.2.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "actix-web-codegen" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1javlyvpi010hd355ahnq501ajvn9k01ygsaalak97p2g851cqi2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-actix-router" ,rust-actix-router-0.5)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://actix.rs")
    (synopsis "Routing and runtime macros for Actix Web")
    (description "Routing and runtime macros for Actix Web")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-server-2
  (package
    (name "rust-actix-server")
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "actix-server" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "09wka7fdfiw27g780i5lyz07gmlysls3rviw8xgw836mbnki71iy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-actix-rt" ,rust-actix-rt-2)
                       ("rust-actix-service" ,rust-actix-service-2)
                       ("rust-actix-utils" ,rust-actix-utils-3)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-mio" ,rust-mio-0.8)
                       ("rust-num-cpus" ,rust-num-cpus-1)
                       ("rust-socket2" ,rust-socket2-0.4)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-uring" ,rust-tokio-uring-0.4)
                       ("rust-tracing" ,rust-tracing-0.1))))
    (home-page "https://actix.rs")
    (synopsis "General purpose TCP server built for the Actix ecosystem")
    (description "General purpose TCP server built for the Actix ecosystem")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-router-0.5
  (package
    (name "rust-actix-router")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "actix-router" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "16c7lcis96plz0rl23l44wsq61jpx1bn91m23y361cfj8z9g8vyn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bytestring" ,rust-bytestring-0.1)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-tracing" ,rust-tracing-0.1))))
    (home-page "https://github.com/actix/actix-web.git")
    (synopsis "Resource path matching and router")
    (description "Resource path matching and router")
    (license (list license:expat license:asl2.0))))

(define-public rust-zstd-safe-6
  (package
    (name "rust-zstd-safe")
    (version "6.0.5+zstd.1.5.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "zstd-safe" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0fyj55jkyik3qjaf6i0pn0vwmqyazdjh389qq8384xdinih9wvfm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                       ("rust-zstd-sys" ,rust-zstd-sys-2))))
    (home-page "https://github.com/gyscos/zstd-rs")
    (synopsis "Safe low-level bindings for the zstd compression library.")
    (description "Safe low-level bindings for the zstd compression library.")
    (license (list license:expat license:asl2.0))))

(define-public rust-zstd-0.12
  (package
    (name "rust-zstd")
    (version "0.12.3+zstd.1.5.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "zstd" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "01h8zmdckz1rklpsr0i3lxx9d2jxb5fmsbwwzl9hwkh2zcra3vkn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-zstd-safe" ,rust-zstd-safe-6))))
    (home-page "https://github.com/gyscos/zstd-rs")
    (synopsis "Binding for the zstd compression library.")
    (description "Binding for the zstd compression library.")
    (license license:expat)))

(define-public rust-local-channel-0.1
  (package
    (name "rust-local-channel")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "local-channel" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "177wqgadrlw6m7r6xxafkj58asgpgbpv1ww4gx258v2cx703wc3z"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-futures-sink" ,rust-futures-sink-0.3)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-local-waker" ,rust-local-waker-0.1))))
    (home-page "https://github.com/actix/actix-net.git")
    (synopsis
     "A non-threadsafe multi-producer, single-consumer, futures-aware, FIFO queue")
    (description
     "This package provides a non-threadsafe multi-producer, single-consumer,
futures-aware, FIFO queue")
    (license (list license:expat license:asl2.0))))

(define-public rust-bytestring-1
  (package
    (name "rust-bytestring")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "bytestring" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1blscywg9gaw6zdc5hqsf9zwyqiym57q631nk7wc960dfs34i3i3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://actix.rs")
    (synopsis "An immutable UTF-8 encoded string using Bytes as storage")
    (description "An immutable UTF-8 encoded string using Bytes as storage")
    (license (list license:expat license:asl2.0))))

(define-public rust-brotli-3
  (package
    (name "rust-brotli")
    (version "3.3.4")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "brotli" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0s7z0nrv04wxniwijh5iig1w31sphc6lz38zc8lr7qlarkdv3851"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-alloc-no-stdlib" ,rust-alloc-no-stdlib-2)
                       ("rust-alloc-stdlib" ,rust-alloc-stdlib-0.2)
                       ("rust-brotli-decompressor" ,rust-brotli-decompressor-2)
                       ("rust-packed-simd-2" ,rust-packed-simd-2-0.3)
                       ("rust-sha2" ,rust-sha2-0.8))))
    (home-page "https://github.com/dropbox/rust-brotli")
    (synopsis
     "A brotli compressor and decompressor that with an interface avoiding the rust stdlib. This makes it suitable for embedded devices and kernels. It is designed with a pluggable allocator so that the standard lib's allocator may be employed. The default build also includes a stdlib allocator and stream interface. Disable this with --features=no-stdlib. All included code is safe.")
    (description
     "This package provides a brotli compressor and decompressor that with an
interface avoiding the rust stdlib.  This makes it suitable for embedded devices
and kernels.  It is designed with a pluggable allocator so that the standard
lib's allocator may be employed.  The default build also includes a stdlib
allocator and stream interface.  Disable this with --features=no-stdlib.  All
included code is safe.")
    (license (list license:bsd-3 license:expat))))

(define-public rust-local-waker-0.1
  (package
    (name "rust-local-waker")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "local-waker" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1w9zqlh18mymvb82ya0sailiy5d3wsjamaakgl70x50i6vmpckz3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/actix/actix-net.git")
    (synopsis "A synchronization primitive for thread-local task wakeup")
    (description
     "This package provides a synchronization primitive for thread-local task wakeup")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-utils-3
  (package
    (name "rust-actix-utils")
    (version "3.0.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "actix-utils" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1n05nzwdkx6jhmzr6f9qsh57a8hqlwv5rjz1i0j3qvj6y7gxr8c8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-local-waker" ,rust-local-waker-0.1)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2))))
    (home-page "https://github.com/actix/actix-net")
    (synopsis "Various utilities used in the Actix ecosystem")
    (description "Various utilities used in the Actix ecosystem")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-tls-3
  (package
    (name "rust-actix-tls")
    (version "3.0.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "actix-tls" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "15rj6gn83fzv5w2b2y0s690q80awsjhbjg40f3qcgkgpjbr0rplz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-actix-codec" ,rust-actix-codec-0.5)
                       ("rust-actix-rt" ,rust-actix-rt-2)
                       ("rust-actix-service" ,rust-actix-service-2)
                       ("rust-actix-utils" ,rust-actix-utils-3)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-openssl" ,rust-openssl-0.10)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-tokio-native-tls" ,rust-tokio-native-tls-0.3)
                       ("rust-tokio-openssl" ,rust-tokio-openssl-0.6)
                       ("rust-tokio-rustls" ,rust-tokio-rustls-0.23)
                       ("rust-tokio-util" ,rust-tokio-util-0.7)
                       ("rust-webpki-roots" ,rust-webpki-roots-0.22))))
    (home-page "https://github.com/actix/actix-net.git")
    (synopsis "TLS acceptor and connector services for Actix ecosystem")
    (description "TLS acceptor and connector services for Actix ecosystem")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-service-2
  (package
    (name "rust-actix-service")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "actix-service" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0fipjcc5kma7j47jfrw55qm09dakgvx617jbriydrkqqz10lk29v"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-paste" ,rust-paste-1)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2))))
    (home-page "https://github.com/actix/actix-net")
    (synopsis
     "Service trait and combinators for representing asynchronous request/response operations.")
    (description
     "Service trait and combinators for representing asynchronous request/response
operations.")
    (license (list license:expat license:asl2.0))))

(define-public rust-sc-0.2
  (package
    (name "rust-sc")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "sc" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "12x3c3mn36am3jfamswqfsd0vpr0hz3kdck6wskla7gx7fyih3h1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/japaric/syscall.rs")
    (synopsis "Raw system calls")
    (description "Raw system calls")
    (license (list license:expat license:asl2.0))))

(define-public rust-io-uring-0.5
  (package
    (name "rust-io-uring")
    (version "0.5.13")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "io-uring" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0k4qrzhnc8j50g79ki8n79d4yffvcmwq5dj3bj6gs95rrw0il7nx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.61)
                       ("rust-bitflags" ,rust-bitflags-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-sc" ,rust-sc-0.2))))
    (home-page "https://github.com/tokio-rs/io-uring")
    (synopsis "The low-level `io_uring` userspace interface for Rust")
    (description "The low-level `io_uring` userspace interface for Rust")
    (license (list license:expat license:asl2.0))))

(define-public rust-tokio-uring-0.4
  (package
    (name "rust-tokio-uring")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "tokio-uring" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1vsmw482n01lj33dr7rnjxmdcdhq5yys6rbwahx0n0vy2fxh4phd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                       ("rust-io-uring" ,rust-io-uring-0.5)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-scoped-tls" ,rust-scoped-tls-1)
                       ("rust-slab" ,rust-slab-0.4)
                       ("rust-socket2" ,rust-socket2-0.4)
                       ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://tokio.rs")
    (synopsis "io-uring support for the Tokio asynchronous runtime.
")
    (description "io-uring support for the Tokio asynchronous runtime.")
    (license license:expat)))

(define-public rust-actix-macros-0.2
  (package
    (name "rust-actix-macros")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "actix-macros" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1dhk2bdp6rj67j5zgi4b76hpy2xw567js0hig28n1fb9rxr62nj6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/actix/actix-net.git")
    (synopsis "Macros for Actix system and runtime")
    (description "Macros for Actix system and runtime")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-rt-2
  (package
   (name "rust-actix-rt")
   (version "2.8.0")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "actix-rt" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0gjgh03ygjsz6hpij9sbk6jb822jqz47zi33nc76fir3irmmn9hm"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-actix-macros" ,rust-actix-macros-0.2)
                      ("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-uring" ,rust-tokio-uring-0.4))))
   (home-page "https://actix.rs")

   (synopsis
    "Tokio-based single-threaded async Actix runtime")
   (description
    "This package provides tokio-based single-threaded async runtime for the Actix ecosystem")
   (license (list license:expat license:asl2.0))))

(define-public rust-actix-http-3
  (package
    (name "rust-actix-http")
    (version "3.3.1")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "actix-http" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0x7d7w0p2dxrqw4qw6d4696kyqah1q6f2ji77siv863cb53941y2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-actix-codec" ,rust-actix-codec-0.5)
                       ("rust-actix-rt" ,rust-actix-rt-2)
                       ("rust-actix-service" ,rust-actix-service-2)
                       ("rust-actix-tls" ,rust-actix-tls-3)
                       ("rust-actix-utils" ,rust-actix-utils-3)
                       ("rust-ahash" ,rust-ahash-0.8)
                       ("rust-base64" ,rust-base64-0.21)
                       ("rust-bitflags" ,rust-bitflags-1)
                       ("rust-brotli" ,rust-brotli-3)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-bytestring" ,rust-bytestring-1)
                       ("rust-derive-more" ,rust-derive-more-0.99)
                       ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-flate2" ,rust-flate2-1)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-h2" ,rust-h2-0.3)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-httparse" ,rust-httparse-1)
                       ("rust-httpdate" ,rust-httpdate-1)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-language-tags" ,rust-language-tags-0.3)
                       ("rust-local-channel" ,rust-local-channel-0.1)
                       ("rust-mime" ,rust-mime-0.3)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-sha1" ,rust-sha1-0.10)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-util" ,rust-tokio-util-0.7)
                       ("rust-tracing" ,rust-tracing-0.1)
                       ("rust-zstd" ,rust-zstd-0.12))))
    (home-page "https://actix.rs")
    (synopsis "HTTP primitives for the Actix ecosystem")
    (description "This package provides HTTP primitives for the Actix ecosystem.")
    (license (list license:expat license:asl2.0))))

(define-public rust-actix-codec-0.5
  (package
   (name "rust-actix-codec")
   (version "0.5.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "actix-codec" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "1f749khww3p9a1kw4yzf4w4l1xlylky2bngar7cf2zskwdl84yk1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-futures-sink" ,rust-futures-sink-0.3)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-util" ,rust-tokio-util-0.7)
                      ("rust-tracing" ,rust-tracing-0.1))))
   (home-page "https://github.com/actix/actix-net")
   (synopsis "Codec utilities for working with framed protocols")
   (description "This package provides codec utilities for working with framed protocols.")
   (license (list license:expat license:asl2.0))))

(define-public rust-actix-web-4
  (package
   (name "rust-actix-web")
   (version "4.3.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "actix-web" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "15hw9i6935b00hih3gn6xys6542jjslb7f7h3rp1gav6jlpv8g6d"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-actix-codec" ,rust-actix-codec-0.5)
                      ("rust-actix-http" ,rust-actix-http-3)
                      ("rust-actix-macros" ,rust-actix-macros-0.2)
                      ("rust-actix-router" ,rust-actix-router-0.5)
                      ("rust-actix-rt" ,rust-actix-rt-2)
                      ("rust-actix-server" ,rust-actix-server-2)
                      ("rust-actix-service" ,rust-actix-service-2)
                      ("rust-actix-tls" ,rust-actix-tls-3)
                      ("rust-actix-utils" ,rust-actix-utils-3)
                      ("rust-actix-web-codegen" ,rust-actix-web-codegen-4)
                      ("rust-ahash" ,rust-ahash-0.7)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-bytestring" ,rust-bytestring-1)
                      ("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-cookie" ,rust-cookie-0.16)
                      ("rust-derive-more" ,rust-derive-more-0.99)
                      ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                      ("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-http" ,rust-http-0.2)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-language-tags" ,rust-language-tags-0.3)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-mime" ,rust-mime-0.3)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-serde-urlencoded" ,rust-serde-urlencoded-0.7)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-socket2" ,rust-socket2-0.4)
                      ("rust-time" ,rust-time-0.3)
                      ("rust-url" ,rust-url-2))))
   (home-page "https://actix.rs")
   (synopsis
    "Powerful, pragmatic, and fast web framework for Rust")
   (description
    "Actix Web is a powerful, pragmatic, and extremely fast web framework for Rust")
   (license (list license:expat license:asl2.0))))

(define-public rust-rust-embed-6
  (package
   (name "rust-rust-embed")
   (version "6.6.1")
   (source (origin
            (method url-fetch)
            (uri (crate-uri "rust-embed" version))
            (file-name (string-append name "-" version ".tar.gz"))
            (sha256
             (base32
              "0rmhm91jrqpb46q5w6jpsa21mcdas8r2ia8l6hhmiq97alym8s0v"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-actix-web" ,rust-actix-web-4)
                      ("rust-axum" ,rust-axum-0.6)
                      ("rust-hex" ,rust-hex-0.4)
                      ("rust-include-flate" ,rust-include-flate-0.1)
                      ("rust-mime-guess" ,rust-mime-guess-2)
                      ("rust-poem" ,rust-poem-1)
                      ("rust-rocket" ,rust-rocket-0.5)
                      ("rust-rust-embed-impl" ,rust-rust-embed-impl-6)
                      ("rust-rust-embed-utils" ,rust-rust-embed-utils-7)
                      ("rust-salvo" ,rust-salvo-0.16)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-walkdir" ,rust-walkdir-2)
                      ("rust-warp" ,rust-warp-0.3))))
   (home-page "https://github.com/pyros2097/rust-embed")
       (synopsis "Rust custom @code{Derive} macro")
    (description
     "This package provides a custom @code{Derive} macro which loads files
into the Rust binary at compile time during release and loads the file from
the file-system during development.")
   (license license:expat)))

(define-public ttyper
  (package
    (name "ttyper")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (crate-uri "ttyper" version))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "1qwfa16pb36npkbgik3mr7jnxvx3vzkdikrwi083g6fbras4n8hx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-crossterm" ,rust-crossterm-0.25)
                       ("rust-dirs" ,rust-dirs-4)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-rust-embed" ,rust-rust-embed-6)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-structopt" ,rust-structopt-0.3)
                       ("rust-toml" ,rust-toml-0.5)
                       ("rust-tui" ,rust-tui-0.19))
       #:install-source? #f))
    (home-page "https://github.com/max-niederman/ttyper")
    (synopsis "Terminal-based typing test.")
    (description "Terminal-based typing test.")
    (license license:expat)))
