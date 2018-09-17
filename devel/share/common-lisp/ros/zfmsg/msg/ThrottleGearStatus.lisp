; Auto-generated. Do not edit!


(cl:in-package zfmsg-msg)


;//! \htmlinclude ThrottleGearStatus.msg.html

(cl:defclass <ThrottleGearStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ts
    :reader ts
    :initarg :ts
    :type cl:integer
    :initform 0)
   (controlMode
    :reader controlMode
    :initarg :controlMode
    :type cl:fixnum
    :initform 0)
   (motorSpeed
    :reader motorSpeed
    :initarg :motorSpeed
    :type cl:float
    :initform 0.0)
   (motorCurrent
    :reader motorCurrent
    :initarg :motorCurrent
    :type cl:float
    :initform 0.0)
   (motorBreak
    :reader motorBreak
    :initarg :motorBreak
    :type cl:fixnum
    :initform 0)
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (gear
    :reader gear
    :initarg :gear
    :type cl:string
    :initform "")
   (gearLeverPosition
    :reader gearLeverPosition
    :initarg :gearLeverPosition
    :type cl:string
    :initform "")
   (pedalBreak
    :reader pedalBreak
    :initarg :pedalBreak
    :type cl:fixnum
    :initform 0)
   (errorCode
    :reader errorCode
    :initarg :errorCode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ThrottleGearStatus (<ThrottleGearStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrottleGearStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrottleGearStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zfmsg-msg:<ThrottleGearStatus> is deprecated: use zfmsg-msg:ThrottleGearStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ThrottleGearStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:header-val is deprecated.  Use zfmsg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ts-val :lambda-list '(m))
(cl:defmethod ts-val ((m <ThrottleGearStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:ts-val is deprecated.  Use zfmsg-msg:ts instead.")
  (ts m))

(cl:ensure-generic-function 'controlMode-val :lambda-list '(m))
(cl:defmethod controlMode-val ((m <ThrottleGearStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:controlMode-val is deprecated.  Use zfmsg-msg:controlMode instead.")
  (controlMode m))

(cl:ensure-generic-function 'motorSpeed-val :lambda-list '(m))
(cl:defmethod motorSpeed-val ((m <ThrottleGearStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:motorSpeed-val is deprecated.  Use zfmsg-msg:motorSpeed instead.")
  (motorSpeed m))

(cl:ensure-generic-function 'motorCurrent-val :lambda-list '(m))
(cl:defmethod motorCurrent-val ((m <ThrottleGearStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:motorCurrent-val is deprecated.  Use zfmsg-msg:motorCurrent instead.")
  (motorCurrent m))

(cl:ensure-generic-function 'motorBreak-val :lambda-list '(m))
(cl:defmethod motorBreak-val ((m <ThrottleGearStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:motorBreak-val is deprecated.  Use zfmsg-msg:motorBreak instead.")
  (motorBreak m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <ThrottleGearStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:throttle-val is deprecated.  Use zfmsg-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <ThrottleGearStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:gear-val is deprecated.  Use zfmsg-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'gearLeverPosition-val :lambda-list '(m))
(cl:defmethod gearLeverPosition-val ((m <ThrottleGearStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:gearLeverPosition-val is deprecated.  Use zfmsg-msg:gearLeverPosition instead.")
  (gearLeverPosition m))

(cl:ensure-generic-function 'pedalBreak-val :lambda-list '(m))
(cl:defmethod pedalBreak-val ((m <ThrottleGearStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:pedalBreak-val is deprecated.  Use zfmsg-msg:pedalBreak instead.")
  (pedalBreak m))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <ThrottleGearStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:errorCode-val is deprecated.  Use zfmsg-msg:errorCode instead.")
  (errorCode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrottleGearStatus>) ostream)
  "Serializes a message object of type '<ThrottleGearStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'controlMode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motorSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motorCurrent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motorBreak)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gear))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gearLeverPosition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gearLeverPosition))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pedalBreak)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrottleGearStatus>) istream)
  "Deserializes a message object of type '<ThrottleGearStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ts) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'controlMode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motorSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motorCurrent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motorBreak)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gear) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gearLeverPosition) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gearLeverPosition) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pedalBreak)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrottleGearStatus>)))
  "Returns string type for a message object of type '<ThrottleGearStatus>"
  "zfmsg/ThrottleGearStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrottleGearStatus)))
  "Returns string type for a message object of type 'ThrottleGearStatus"
  "zfmsg/ThrottleGearStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrottleGearStatus>)))
  "Returns md5sum for a message object of type '<ThrottleGearStatus>"
  "ea7e7f7f909809e23589ebec1a82490c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrottleGearStatus)))
  "Returns md5sum for a message object of type 'ThrottleGearStatus"
  "ea7e7f7f909809e23589ebec1a82490c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrottleGearStatus>)))
  "Returns full string definition for message of type '<ThrottleGearStatus>"
  (cl:format cl:nil "std_msgs/Header      header~%int64       ts~%uint8       controlMode~%float32     motorSpeed~%float32     motorCurrent~%uint8       motorBreak~%float32     throttle~%string      gear~%string      gearLeverPosition~%uint8       pedalBreak~%uint8       errorCode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrottleGearStatus)))
  "Returns full string definition for message of type 'ThrottleGearStatus"
  (cl:format cl:nil "std_msgs/Header      header~%int64       ts~%uint8       controlMode~%float32     motorSpeed~%float32     motorCurrent~%uint8       motorBreak~%float32     throttle~%string      gear~%string      gearLeverPosition~%uint8       pedalBreak~%uint8       errorCode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrottleGearStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     4
     4
     1
     4
     4 (cl:length (cl:slot-value msg 'gear))
     4 (cl:length (cl:slot-value msg 'gearLeverPosition))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrottleGearStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrottleGearStatus
    (cl:cons ':header (header msg))
    (cl:cons ':ts (ts msg))
    (cl:cons ':controlMode (controlMode msg))
    (cl:cons ':motorSpeed (motorSpeed msg))
    (cl:cons ':motorCurrent (motorCurrent msg))
    (cl:cons ':motorBreak (motorBreak msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':gearLeverPosition (gearLeverPosition msg))
    (cl:cons ':pedalBreak (pedalBreak msg))
    (cl:cons ':errorCode (errorCode msg))
))
