(define-module (personal services i2p)
  #:use-module (gnu services)
  #:use-module (gnu services base)
  #:use-module (gnu services configuration)
  #:use-module (gnu services shepherd)
  #:use-module (gnu packages i2p)
  #:use-module (guix gexp)
  #:use-module (guix records)
  #:use-module (srfi srfi-9)
  #:export (i2pd-service-type
	    i2pd-configuration
	    i2pd-configuration?))

(define-record-type* <i2pd-configuration>
  i2pd-configuration make-i2pd-configuration
  ip2d-configuration?
  (package i2pd-configuration-package
	   (default i2pd))
  ;; List of strings
  (tunnels i2pd-configuration-tunnels
	   (default '())))

(define-record-type <i2pd-tunnel>
  (i2pd-tunnel type)
  i2pd-tunnel?
  (type i2pd-tunnel-type))

(define-record-type )

(define (i2pd-configuration->string config)
  "")

(define (i2pd-shepherd-service config)
  (match-record config <i2pd-configuration>
    (package)
    (let ((i2pd.conf (plain-file "i2pd.conf" (i2pd-configuration->string config))))
      (list (shepherd-service
	     (provision '(i2pd))
	     (documentation "TODO")
	     (requirement '(user-processes networking))
	     (start #~(make-forkexec-constructor
		       (list (string-append #$package "/bin/i2pd")
			     "-conf" #$i2pd.conf)
		       #:log-file "/var/log/i2pd.log"))
	     (stop #~(make-kill-destructor))
	     (actions (list (shepherd-configuration-action i2pd.conf))))))))

(define  i2pd-service-type
  (service-type (name 'i2pd)
		(extensions
		 (list (service-extension shepherd-root-service-type
					  i2pd-shepherd-service)))
		(default-value (i2pd-configuration))
		(description "TODO")))
