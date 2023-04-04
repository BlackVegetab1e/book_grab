
(cl:in-package :asdf)

(defsystem "book_grab-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "hh_eye" :depends-on ("_package_hh_eye"))
    (:file "_package_hh_eye" :depends-on ("_package"))
  ))