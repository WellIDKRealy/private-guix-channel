#!/usr/bin/env guile
!#
(add-to-load-path ".")

(use-modules (guix packages)
	     (guix lint)
	     (guix scripts lint)
	     (guix ui)
	     (guix store)
	     (gnu packages)
	     (srfi srfi-1)
	     (srfi srfi-11))

(define (list-directory dir)
  (let ([stream (opendir dir)])
    (let loop ([item (readdir stream)])
      (if (eof-object? item)
	  '()
	  (cons item (loop (readdir stream)))))))

(define (filename-extension-split filename)
  (let ([index (string-index-right filename #\.)])
    (if index
	(values (substring filename 0 index)
		(substring filename (+ 1 index) (string-length filename)))
	(values filename #f))))

(define* (lint-packages packages
			#:optional
			(checkers %local-checkers))
  (with-error-handling
    (let ((any-lint-checker-requires-store?
	   (any lint-checker-requires-store? checkers)))

      (define (call-maybe-with-store proc)
	(if any-lint-checker-requires-store?
	    (with-store store
	      (proc store))
	    (proc #f)))

      (call-maybe-with-store
       (lambda (store)
	 (for-each (lambda (package)
		     (run-checkers package checkers
				   #:store store))
		   packages))))))

(lint-packages
 (apply append
	(map (lambda (filename)
	       (let-values ([(name extension)
			     (filename-extension-split filename)])
		 (if (string= extension "scm")
		     (filter (lambda (x) x)
			     (module-map
			      (lambda (name var)
				(let ([val (variable-ref var)])
				  (if (package? val) val #f)))
			      (resolve-module
			       `(personal packages ,(string->symbol name)))))
		     '())))
	     (list-directory "personal/packages/"))))
