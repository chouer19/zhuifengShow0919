;; Auto-generated. Do not edit!


(when (boundp 'zfmsg::BreakStatus)
  (if (not (find-package "ZFMSG"))
    (make-package "ZFMSG"))
  (shadow 'BreakStatus (find-package "ZFMSG")))
(unless (find-package "ZFMSG::BREAKSTATUS")
  (make-package "ZFMSG::BREAKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude BreakStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass zfmsg::BreakStatus
  :super ros::object
  :slots (_header _ts _controlMode _pressure _speed _targetPressure _targetSpeed _pedalBreak _errorCode ))

(defmethod zfmsg::BreakStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ts __ts) 0)
    ((:controlMode __controlMode) 0)
    ((:pressure __pressure) 0.0)
    ((:speed __speed) 0.0)
    ((:targetPressure __targetPressure) 0.0)
    ((:targetSpeed __targetSpeed) 0.0)
    ((:pedalBreak __pedalBreak) 0)
    ((:errorCode __errorCode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ts (round __ts))
   (setq _controlMode (round __controlMode))
   (setq _pressure (float __pressure))
   (setq _speed (float __speed))
   (setq _targetPressure (float __targetPressure))
   (setq _targetSpeed (float __targetSpeed))
   (setq _pedalBreak (round __pedalBreak))
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
  (:controlMode
   (&optional __controlMode)
   (if __controlMode (setq _controlMode __controlMode)) _controlMode)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:targetPressure
   (&optional __targetPressure)
   (if __targetPressure (setq _targetPressure __targetPressure)) _targetPressure)
  (:targetSpeed
   (&optional __targetSpeed)
   (if __targetSpeed (setq _targetSpeed __targetSpeed)) _targetSpeed)
  (:pedalBreak
   (&optional __pedalBreak)
   (if __pedalBreak (setq _pedalBreak __pedalBreak)) _pedalBreak)
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
    ;; uint8 _controlMode
    1
    ;; float32 _pressure
    4
    ;; float32 _speed
    4
    ;; float32 _targetPressure
    4
    ;; float32 _targetSpeed
    4
    ;; uint8 _pedalBreak
    1
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
     ;; uint8 _controlMode
       (write-byte _controlMode s)
     ;; float32 _pressure
       (sys::poke _pressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _targetPressure
       (sys::poke _targetPressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _targetSpeed
       (sys::poke _targetSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _pedalBreak
       (write-byte _pedalBreak s)
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
   ;; uint8 _controlMode
     (setq _controlMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _pressure
     (setq _pressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _targetPressure
     (setq _targetPressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _targetSpeed
     (setq _targetSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _pedalBreak
     (setq _pedalBreak (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _errorCode
     (setq _errorCode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get zfmsg::BreakStatus :md5sum-) "9f94464581d3b80147ade7f255eccdd3")
(setf (get zfmsg::BreakStatus :datatype-) "zfmsg/BreakStatus")
(setf (get zfmsg::BreakStatus :definition-)
      "std_msgs/Header      header
int64       ts
uint8       controlMode
float32     pressure
float32     speed
float32     targetPressure
float32     targetSpeed
uint8       pedalBreak
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



(provide :zfmsg/BreakStatus "9f94464581d3b80147ade7f255eccdd3")


