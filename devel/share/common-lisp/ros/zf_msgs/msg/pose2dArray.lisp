; Auto-generated. Do not edit!


(cl:in-package zf_msgs-msg)


;//! \htmlinclude pose2dArray.msg.html

(cl:defclass <pose2dArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D))))
)

(cl:defclass pose2dArray (<pose2dArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose2dArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose2dArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zf_msgs-msg:<pose2dArray> is deprecated: use zf_msgs-msg:pose2dArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <pose2dArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zf_msgs-msg:header-val is deprecated.  Use zf_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <pose2dArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zf_msgs-msg:points-val is deprecated.  Use zf_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose2dArray>) ostream)
  "Serializes a message object of type '<pose2dArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose2dArray>) istream)
  "Deserializes a message object of type '<pose2dArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose2dArray>)))
  "Returns string type for a message object of type '<pose2dArray>"
  "zf_msgs/pose2dArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose2dArray)))
  "Returns string type for a message object of type 'pose2dArray"
  "zf_msgs/pose2dArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose2dArray>)))
  "Returns md5sum for a message object of type '<pose2dArray>"
  "7fe16685deb9e41c592150dcf4ec62cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose2dArray)))
  "Returns md5sum for a message object of type 'pose2dArray"
  "7fe16685deb9e41c592150dcf4ec62cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose2dArray>)))
  "Returns full string definition for message of type '<pose2dArray>"
  (cl:format cl:nil "Header header~%geometry_msgs/Pose2D[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose2dArray)))
  "Returns full string definition for message of type 'pose2dArray"
  (cl:format cl:nil "Header header~%geometry_msgs/Pose2D[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose2dArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose2dArray>))
  "Converts a ROS message object to a list"
  (cl:list 'pose2dArray
    (cl:cons ':header (header msg))
    (cl:cons ':points (points msg))
))
