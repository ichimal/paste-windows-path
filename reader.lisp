(cl:in-package #:windows-path-reader-asd)

(defpackage :windows-path-reader
  (:use :cl)
  (:import-from :syntax #:find-syntax #:define-package-syntax) )

(in-package :windows-path-reader)

(defun windows-path-reader (stream char type)
  (declare (ignore char))
  (let ((raw (with-output-to-string (ost)
               (loop for c = (read-char stream t nil t)
                     until (char= c #\")
                     do (write-char c ost)))))
    (if (or (null type) (= type 0))
      (pathname raw)
      raw )))

(define-package-syntax :windows-path-reader
  (:fuze :current)
  (:dispatch-macro-char #\# #\" #'windows-path-reader) )

