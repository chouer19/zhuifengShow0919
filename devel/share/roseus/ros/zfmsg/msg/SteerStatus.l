;; Auto-generated. Do not edit!


(when (boundp 'zfmsg::SteerStatus)
  (if (not (find-package "ZFMSG"))
    (make-package "ZFMSG"))
  (shadow 'SteerStatus (find-package "ZFMSG")))
(unless (find-package "ZFMSG::STEERSTATUS")
  (make-package "ZFMSG::STEERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SteerStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass zfmsg::SteerStatus
  :super ros::object
  :slots (_header _ts _angle _speed _controlMode _targetAngle _targetSpeed _torque _motorCurrent _errorCode ))

(defmethod zfmsg::SteerStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ts __ts) 0)
    ((:angle __angle) 0.0)
    ((:speed __speed) 0.0)
    ((:controlMode __controlMode) 0)
    ((:targetAngle __targetAngle) 0.0)
    ((:targetSpeed __targetSpeed) 0.0)
    ((:torque __torque) 0.0)
    ((:motorCurrent __motorCurrent) 0.0)
    ((:errorCode __errorCode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ts (round __ts))
   (setq _angle (float __angle))
   (setq _speed (float __speed))
   (setq _controlMode (round __controlMode))
   (setq _targetAngle (float __targetAngle))
   (setq _targetSpeed (float __targetSpeed))
   (setq _torque (float __torque))
   (setq _motorCurrent (float __motorCurrent))
   (setq _errorCode (round __errorCode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ts
   (&optional __ts)
   (if __ts (setq _ts __ts)) _ts)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:controlMode
   (&optional __controlMode)
   (if __controlMode (setq _controlMode __controlMode)) _controlMode)
  (:targetAngle
   (&optional __targetAngle)
   (if __targetAngle (setq _targetAngle __targetAngle)) _targetAngle)
  (:targetSpeed
   (&optional __targetSpeed)
   (if __targetSpeed (setq _targetSpeed __targetSpeed)) _targetSpeed)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:motorCurrent
   (&optional __motorCurrent)
   (if __motorCurrent (setq _motorCurrent __motorCurrent)) _motorCurrent)
  (:errorCode
   (&optional __errorCode)
   (if __errorCode (setq _errorCode __errorCode)) _errorCode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _ts
    8
    ;; float32 _angle
    4
    ;; float32 _speed
    4
    ;; uint8 _controlMode
    1
    ;; float32 _targetAngle
    4
    ;; float32 _targetSpeed
    4
    ;; float32 _torque
    4
    ;; float32 _motorCurrent
    4
    ;; uint8 _errorCode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _ts
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ts (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ts) (= (length (_ts . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ts . bv) 0) 0) s)
              (write-long (ash (elt (_ts . bv) 1) -1) s))
             ((and (class _ts) (= (length (_ts . bv)) 1)) ;; big1
              (write-long (elt (_ts . bv) 0) s)
              (write-long (if (>= _ts 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ts s)(write-long (if (>= _ts 0) 0 #xffffffff) s)))
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _controlMode
       (write-byte _controlMode s)
     ;; float32 _targetAngle
       (sys::poke _targetAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _targetSpeed
       (sys::poke _targetSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _torque
       (sys::poke _torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _motorCurrent
       (sys::poke _motorCurrent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _errorCode
       (write-byte _errorCode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _ts
#+(or :alpha :irix6 :x86_64)
      (setf _ts (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ts (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _controlMode
     (setq _controlMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _targetAngle
     (setq _targetAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _targetSpeed
     (setq _targetSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _torque
     (setq _torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _motorCurrent
     (setq _motorCurrent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _errorCode
     (setq _errorCode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get zfmsg::SteerStatus :md5sum-) "09559d07e1ca45c09200d89a55db2635")
(setf (get zfmsg::SteerStatus :datatype-) "zfmsg/SteerStatus")
(setf (get zfmsg::SteerStatus :definition-)
      "std_msgs/Header      header
int64       ts
float32     angle
float32     speed
uint8       controlMode
float32     targetAngle
float32     targetSpeed
float32     torque
float32     motorCurrent
uint8       errorCode

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :zfmsg/SteerStatus "09559d07e1ca45c09200d89a55db2635")


