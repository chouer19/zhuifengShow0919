
(cl:in-package :asdf)

(defsystem "zfmsg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BreakStatus" :depends-on ("_package_BreakStatus"))
    (:file "_package_BreakStatus" :depends-on ("_package"))
    (:file "CanInfo" :depends-on ("_package_CanInfo"))
    (:file "_package_CanInfo" :depends-on ("_package"))
    (:file "CanInfoAW" :depends-on ("_package_CanInfoAW"))
    (:file "_package_CanInfoAW" :depends-on ("_package"))
    (:file "MotionCmd" :depends-on ("_package_MotionCmd"))
    (:file "_package_MotionCmd" :depends-on ("_package"))
    (:file "SteerStatus" :depends-on ("_package_SteerStatus"))
    (:file "_package_SteerStatus" :depends-on ("_package"))
    (:file "ThrottleGearStatus" :depends-on ("_package_ThrottleGearStatus"))
    (:file "_package_ThrottleGearStatus" :depends-on ("_package"))
  ))