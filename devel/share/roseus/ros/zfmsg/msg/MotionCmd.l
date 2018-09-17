;; Auto-generated. Do not edit!


(when (boundp 'zfmsg::MotionCmd)
  (if (not (find-package "ZFMSG"))
    (make-package "ZFMSG"))
  (shadow 'MotionCmd (find-package "ZFMSG")))
(unless (find-package "ZFMSG::MOTIONCMD")
  (make-package "ZFMSG::MOTIONCMD"))

(in-package "ROS")
;;//! \htmlinclude MotionCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass zfmsg::MotionCmd
  :super ros::object
  :slots (_header _ts _controlMode _steer _breakPressure _throttle _gear ))

(defmethod zfmsg::MotionCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ts __ts) 0)
    ((:controlMode __controlMode) 0)
    ((:steer __steer) 0.0)
    ((:breakPressure __breakPressure) 0.0)
    ((:throttle __throttle) 0.0)
    ((:gear __gear) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ts (round __ts))
   (setq _controlMode (round __controlMode))
   (setq _steer (float __steer))
   (setq _breakPressure (float __breakPressure))
   (setq _throttle (float __throttle))
   (setq _gear (round __gear))
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
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:breakPressure
   (&optional __breakPressure)
   (if __breakPressure (setq _breakPressure __breakPressure)) _breakPressure)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _ts
    8
    ;; uint8 _controlMode
    1
    ;; float32 _steer
    4
    ;; float32 _breakPressure
    4
    ;; float32 _throttle
    4
    ;; uint8 _gear
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
     ;; float32 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _breakPressure
       (sys::poke _breakPressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _gear
       (write-byte _gear s)
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
   ;; float32 _steer
     (setq _steer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _breakPressure
     (setq _breakPressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle
     (setq _throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get zfmsg::MotionCmd :md5sum-) "a696377e3807ea5be204c7f26e6bdfc6")
(setf (get zfmsg::MotionCmd :datatype-) "zfmsg/MotionCmd")
(setf (get zfmsg::MotionCmd :definition-)
      "std_msgs/Header 	    header
int64       ts
uint8       controlMode
float32     steer
float32     breakPressure
float32     throttle
uint8    gear


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



(provide :zfmsg/MotionCmd "a696377e3807ea5be204c7f26e6bdfc6")


