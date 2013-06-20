(cl:in-package #:paste-windows-path-asd)

(defpackage :paste-windows-path
  (:use :cl)
  (:import-from :syntax #:find-syntax #:define-package-syntax) )

(in-package :paste-windows-path)

(defun windows-path-reader (stream char type)
  (declare (ignore char))
  (let ((raw (with-output-to-string (ost)
               (loop for c = (read-char stream t nil t)
                     until (char= c #\")
                     do (write-char c ost)))))
    (if (or (null type) (= type 0))
      (pathname raw)
      raw )))

(define-package-syntax :paste-windows-path
  (:fuze :current)
  (:dispatch-macro-char #\# #\" #'windows-path-reader) )

