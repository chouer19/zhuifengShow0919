;; Auto-generated. Do not edit!


(when (boundp 'zfmsg::ThrottleGearStatus)
  (if (not (find-package "ZFMSG"))
    (make-package "ZFMSG"))
  (shadow 'ThrottleGearStatus (find-package "ZFMSG")))
(unless (find-package "ZFMSG::THROTTLEGEARSTATUS")
  (make-package "ZFMSG::THROTTLEGEARSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ThrottleGearStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass zfmsg::ThrottleGearStatus
  :super ros::object
  :slots (_header _ts _controlMode _motorSpeed _motorCurrent _motorBreak _throttle _gear _gearLeverPosition _pedalBreak _errorCode ))

(defmethod zfmsg::ThrottleGearStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ts __ts) 0)
    ((:controlMode __controlMode) 0)
    ((:motorSpeed __motorSpeed) 0.0)
    ((:motorCurrent __motorCurrent) 0.0)
    ((:motorBreak __motorBreak) 0)
    ((:throttle __throttle) 0.0)
    ((:gear __gear) "")
    ((:gearLeverPosition __gearLeverPosition) "")
    ((:pedalBreak __pedalBreak) 0)
    ((:errorCode __errorCode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ts (round __ts))
   (setq _controlMode (round __controlMode))
   (setq _motorSpeed (float __motorSpeed))
   (setq _motorCurrent (float __motorCurrent))
   (setq _motorBreak (round __motorBreak))
   (setq _throttle (float __throttle))
   (setq _gear (string __gear))
   (setq _gearLeverPosition (string __gearLeverPosition))
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
  (:motorSpeed
   (&optional __motorSpeed)
   (if __motorSpeed (setq _motorSpeed __motorSpeed)) _motorSpeed)
  (:motorCurrent
   (&optional __motorCurrent)
   (if __motorCurrent (setq _motorCurrent __motorCurrent)) _motorCurrent)
  (:motorBreak
   (&optional __motorBreak)
   (if __motorBreak (setq _motorBreak __motorBreak)) _motorBreak)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:gearLeverPosition
   (&optional __gearLeverPosition)
   (if __gearLeverPosition (setq _gearLeverPosition __gearLeverPosition)) _gearLeverPosition)
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
    ;; float32 _motorSpeed
    4
    ;; float32 _motorCurrent
    4
    ;; uint8 _motorBreak
    1
    ;; float32 _throttle
    4
    ;; string _gear
    4 (length _gear)
    ;; string _gearLeverPosition
    4 (length _gearLeverPosition)
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
     ;; float32 _motorSpeed
       (sys::poke _motorSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _motorCurrent
       (sys::poke _motorCurrent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _motorBreak
       (write-byte _motorBreak s)
     ;; float32 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _gear
       (write-long (length _gear) s) (princ _gear s)
     ;; string _gearLeverPosition
       (write-long (length _gearLeverPosition) s) (princ _gearLeverPosition s)
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
   ;; float32 _motorSpeed
     (setq _motorSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _motorCurrent
     (setq _motorCurrent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _motorBreak
     (setq _motorBreak (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _throttle
     (setq _throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _gear
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gear (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gearLeverPosition
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gearLeverPosition (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _pedalBreak
     (setq _pedalBreak (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _errorCode
     (setq _errorCode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get zfmsg::ThrottleGearStatus :md5sum-) "ea7e7f7f909809e23589ebec1a82490c")
(setf (get zfmsg::ThrottleGearStatus :datatype-) "zfmsg/ThrottleGearStatus")
(setf (get zfmsg::ThrottleGearStatus :definition-)
      "std_msgs/Header      header
int64       ts
uint8       controlMode
float32     motorSpeed
float32     motorCurrent
uint8       motorBreak
float32     throttle
string      gear
string      gearLeverPosition
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



(provide :zfmsg/ThrottleGearStatus "ea7e7f7f909809e23589ebec1a82490c")


