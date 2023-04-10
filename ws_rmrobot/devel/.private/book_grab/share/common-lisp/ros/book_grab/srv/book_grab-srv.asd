
(cl:in-package :asdf)

(defsystem "book_grab-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "hh_eye" :depends-on ("_package_hh_eye"))
    (:file "_package_hh_eye" :depends-on ("_package"))
    (:file "try_getin" :depends-on ("_package_try_getin"))
    (:file "_package_try_getin" :depends-on ("_package"))
  ))