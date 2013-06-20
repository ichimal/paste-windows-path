(cl:defpackage #:paste-windows-path-asd
  (:use :cl :asdf) )

(cl:in-package #:paste-windows-path-asd)

(defsystem paste-windows-path
  :name "paste windows path"
  :version "0.1.0"
  :maintainer "SUZUKI Shingo"
  :author "SUZUKI Shingo"
  :license "MIT"
  :description "enable to paste Windows path string into REPL directly"
  :depends-on (:cl-syntax)
  :components ((:file "reader")) )

