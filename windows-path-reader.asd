(cl:defpackage #:windows-path-reader-asd
  (:use :cl :asdf) )

(cl:in-package #:windows-path-reader-asd)

(defsystem windows-path-reader
  :name "Windows path reader"
  :version "0.1.0"
  :maintainer "SUZUKI Shingo"
  :author "SUZUKI Shingo"
  :license "MIT"
  :description "enable to paste Windows path string into REPL directly"
  :depends-on (:cl-syntax)
  :components ((:file "reader")) )

