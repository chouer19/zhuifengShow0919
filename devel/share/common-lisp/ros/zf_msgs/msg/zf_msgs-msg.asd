
(cl:in-package :asdf)

(defsystem "zf_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "pos320" :depends-on ("_package_pos320"))
    (:file "_package_pos320" :depends-on ("_package"))
  ))