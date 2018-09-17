; Auto-generated. Do not edit!


(cl:in-package zfmsg-msg)


;//! \htmlinclude BreakStatus.msg.html

(cl:defclass <BreakStatus> (roslisp-msg-protocol:ros-message)
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
   (pressure
    :reader pressure
    :initarg :pressure
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (targetPressure
    :reader targetPressure
    :initarg :targetPressure
    :type cl:float
    :initform 0.0)
   (targetSpeed
    :reader targetSpeed
    :initarg :targetSpeed
    :type cl:float
    :initform 0.0)
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

(cl:defclass BreakStatus (<BreakStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BreakStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BreakStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zfmsg-msg:<BreakStatus> is deprecated: use zfmsg-msg:BreakStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BreakStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:header-val is deprecated.  Use zfmsg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ts-val :lambda-list '(m))
(cl:defmethod ts-val ((m <BreakStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:ts-val is deprecated.  Use zfmsg-msg:ts instead.")
  (ts m))

(cl:ensure-generic-function 'controlMode-val :lambda-list '(m))
(cl:defmethod controlMode-val ((m <BreakStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:controlMode-val is deprecated.  Use zfmsg-msg:controlMode instead.")
  (controlMode m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <BreakStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:pressure-val is deprecated.  Use zfmsg-msg:pressure instead.")
  (pressure m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <BreakStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:speed-val is deprecated.  Use zfmsg-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'targetPressure-val :lambda-list '(m))
(cl:defmethod targetPressure-val ((m <BreakStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:targetPressure-val is deprecated.  Use zfmsg-msg:targetPressure instead.")
  (targetPressure m))

(cl:ensure-generic-function 'targetSpeed-val :lambda-list '(m))
(cl:defmethod targetSpeed-val ((m <BreakStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:targetSpeed-val is deprecated.  Use zfmsg-msg:targetSpeed instead.")
  (targetSpeed m))

(cl:ensure-generic-function 'pedalBreak-val :lambda-list '(m))
(cl:defmethod pedalBreak-val ((m <BreakStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:pedalBreak-val is deprecated.  Use zfmsg-msg:pedalBreak instead.")
  (pedalBreak m))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <BreakStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:errorCode-val is deprecated.  Use zfmsg-msg:errorCode instead.")
  (errorCode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BreakStatus>) ostream)
  "Serializes a message object of type '<BreakStatus>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targetPressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targetSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pedalBreak)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BreakStatus>) istream)
  "Deserializes a message object of type '<BreakStatus>"
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
    (cl:setf (cl:slot-value msg 'pressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targetPressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targetSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pedalBreak)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BreakStatus>)))
  "Returns string type for a message object of type '<BreakStatus>"
  "zfmsg/BreakStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BreakStatus)))
  "Returns string type for a message object of type 'BreakStatus"
  "zfmsg/BreakStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BreakStatus>)))
  "Returns md5sum for a message object of type '<BreakStatus>"
  "9f94464581d3b80147ade7f255eccdd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BreakStatus)))
  "Returns md5sum for a message object of type 'BreakStatus"
  "9f94464581d3b80147ade7f255eccdd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BreakStatus>)))
  "Returns full string definition for message of type '<BreakStatus>"
  (cl:format cl:nil "std_msgs/Header      header~%int64       ts~%uint8       controlMode~%float32     pressure~%float32     speed~%float32     targetPressure~%float32     targetSpeed~%uint8       pedalBreak~%uint8       errorCode~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BreakStatus)))
  "Returns full string definition for message of type 'BreakStatus"
  (cl:format cl:nil "std_msgs/Header      header~%int64       ts~%uint8       controlMode~%float32     pressure~%float32     speed~%float32     targetPressure~%float32     targetSpeed~%uint8       pedalBreak~%uint8       errorCode~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BreakStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BreakStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'BreakStatus
    (cl:cons ':header (header msg))
    (cl:cons ':ts (ts msg))
    (cl:cons ':controlMode (controlMode msg))
    (cl:cons ':pressure (pressure msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':targetPressure (targetPressure msg))
    (cl:cons ':targetSpeed (targetSpeed msg))
    (cl:cons ':pedalBreak (pedalBreak msg))
    (cl:cons ':errorCode (errorCode msg))
))
