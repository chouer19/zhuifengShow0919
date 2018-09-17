; Auto-generated. Do not edit!


(cl:in-package zfmsg-msg)


;//! \htmlinclude SteerStatus.msg.html

(cl:defclass <SteerStatus> (roslisp-msg-protocol:ros-message)
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
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (controlMode
    :reader controlMode
    :initarg :controlMode
    :type cl:fixnum
    :initform 0)
   (targetAngle
    :reader targetAngle
    :initarg :targetAngle
    :type cl:float
    :initform 0.0)
   (targetSpeed
    :reader targetSpeed
    :initarg :targetSpeed
    :type cl:float
    :initform 0.0)
   (torque
    :reader torque
    :initarg :torque
    :type cl:float
    :initform 0.0)
   (motorCurrent
    :reader motorCurrent
    :initarg :motorCurrent
    :type cl:float
    :initform 0.0)
   (errorCode
    :reader errorCode
    :initarg :errorCode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SteerStatus (<SteerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zfmsg-msg:<SteerStatus> is deprecated: use zfmsg-msg:SteerStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SteerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:header-val is deprecated.  Use zfmsg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ts-val :lambda-list '(m))
(cl:defmethod ts-val ((m <SteerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:ts-val is deprecated.  Use zfmsg-msg:ts instead.")
  (ts m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <SteerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:angle-val is deprecated.  Use zfmsg-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <SteerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:speed-val is deprecated.  Use zfmsg-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'controlMode-val :lambda-list '(m))
(cl:defmethod controlMode-val ((m <SteerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:controlMode-val is deprecated.  Use zfmsg-msg:controlMode instead.")
  (controlMode m))

(cl:ensure-generic-function 'targetAngle-val :lambda-list '(m))
(cl:defmethod targetAngle-val ((m <SteerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:targetAngle-val is deprecated.  Use zfmsg-msg:targetAngle instead.")
  (targetAngle m))

(cl:ensure-generic-function 'targetSpeed-val :lambda-list '(m))
(cl:defmethod targetSpeed-val ((m <SteerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:targetSpeed-val is deprecated.  Use zfmsg-msg:targetSpeed instead.")
  (targetSpeed m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <SteerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:torque-val is deprecated.  Use zfmsg-msg:torque instead.")
  (torque m))

(cl:ensure-generic-function 'motorCurrent-val :lambda-list '(m))
(cl:defmethod motorCurrent-val ((m <SteerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:motorCurrent-val is deprecated.  Use zfmsg-msg:motorCurrent instead.")
  (motorCurrent m))

(cl:ensure-generic-function 'errorCode-val :lambda-list '(m))
(cl:defmethod errorCode-val ((m <SteerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:errorCode-val is deprecated.  Use zfmsg-msg:errorCode instead.")
  (errorCode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteerStatus>) ostream)
  "Serializes a message object of type '<SteerStatus>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'controlMode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targetAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targetSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motorCurrent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteerStatus>) istream)
  "Deserializes a message object of type '<SteerStatus>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'controlMode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targetAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targetSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'torque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motorCurrent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errorCode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteerStatus>)))
  "Returns string type for a message object of type '<SteerStatus>"
  "zfmsg/SteerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteerStatus)))
  "Returns string type for a message object of type 'SteerStatus"
  "zfmsg/SteerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteerStatus>)))
  "Returns md5sum for a message object of type '<SteerStatus>"
  "09559d07e1ca45c09200d89a55db2635")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteerStatus)))
  "Returns md5sum for a message object of type 'SteerStatus"
  "09559d07e1ca45c09200d89a55db2635")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteerStatus>)))
  "Returns full string definition for message of type '<SteerStatus>"
  (cl:format cl:nil "std_msgs/Header      header~%int64       ts~%float32     angle~%float32     speed~%uint8       controlMode~%float32     targetAngle~%float32     targetSpeed~%float32     torque~%float32     motorCurrent~%uint8       errorCode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteerStatus)))
  "Returns full string definition for message of type 'SteerStatus"
  (cl:format cl:nil "std_msgs/Header      header~%int64       ts~%float32     angle~%float32     speed~%uint8       controlMode~%float32     targetAngle~%float32     targetSpeed~%float32     torque~%float32     motorCurrent~%uint8       errorCode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteerStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     4
     1
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SteerStatus
    (cl:cons ':header (header msg))
    (cl:cons ':ts (ts msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':controlMode (controlMode msg))
    (cl:cons ':targetAngle (targetAngle msg))
    (cl:cons ':targetSpeed (targetSpeed msg))
    (cl:cons ':torque (torque msg))
    (cl:cons ':motorCurrent (motorCurrent msg))
    (cl:cons ':errorCode (errorCode msg))
))
