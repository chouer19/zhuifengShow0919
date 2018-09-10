;; Auto-generated. Do not edit!


(when (boundp 'zf_msgs::pos320)
  (if (not (find-package "ZF_MSGS"))
    (make-package "ZF_MSGS"))
  (shadow 'pos320 (find-package "ZF_MSGS")))
(unless (find-package "ZF_MSGS::POS320")
  (make-package "ZF_MSGS::POS320"))

(in-package "ROS")
;;//! \htmlinclude pos320.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass zf_msgs::pos320
  :super ros::object
  :slots (_header _length _mode _time1 _time2 _num _lat _lon _height _v_n _v_e _v_earth _roll _pitch _head _a_n _a_e _a_earth _v_roll _v_pitch _v_head _status1 _status2 _checksum ))

(defmethod zf_msgs::pos320
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:length __length) 0)
    ((:mode __mode) 0)
    ((:time1 __time1) 0)
    ((:time2 __time2) 0)
    ((:num __num) 0)
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:height __height) 0.0)
    ((:v_n __v_n) 0.0)
    ((:v_e __v_e) 0.0)
    ((:v_earth __v_earth) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:head __head) 0.0)
    ((:a_n __a_n) 0.0)
    ((:a_e __a_e) 0.0)
    ((:a_earth __a_earth) 0.0)
    ((:v_roll __v_roll) 0.0)
    ((:v_pitch __v_pitch) 0.0)
    ((:v_head __v_head) 0.0)
    ((:status1 __status1) 0)
    ((:status2 __status2) 0)
    ((:checksum __checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _length (round __length))
   (setq _mode (round __mode))
   (setq _time1 (round __time1))
   (setq _time2 (round __time2))
   (setq _num (round __num))
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _height (float __height))
   (setq _v_n (float __v_n))
   (setq _v_e (float __v_e))
   (setq _v_earth (float __v_earth))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _head (float __head))
   (setq _a_n (float __a_n))
   (setq _a_e (float __a_e))
   (setq _a_earth (float __a_earth))
   (setq _v_roll (float __v_roll))
   (setq _v_pitch (float __v_pitch))
   (setq _v_head (float __v_head))
   (setq _status1 (round __status1))
   (setq _status2 (round __status2))
   (setq _checksum (round __checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:time1
   (&optional __time1)
   (if __time1 (setq _time1 __time1)) _time1)
  (:time2
   (&optional __time2)
   (if __time2 (setq _time2 __time2)) _time2)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:v_n
   (&optional __v_n)
   (if __v_n (setq _v_n __v_n)) _v_n)
  (:v_e
   (&optional __v_e)
   (if __v_e (setq _v_e __v_e)) _v_e)
  (:v_earth
   (&optional __v_earth)
   (if __v_earth (setq _v_earth __v_earth)) _v_earth)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:head
   (&optional __head)
   (if __head (setq _head __head)) _head)
  (:a_n
   (&optional __a_n)
   (if __a_n (setq _a_n __a_n)) _a_n)
  (:a_e
   (&optional __a_e)
   (if __a_e (setq _a_e __a_e)) _a_e)
  (:a_earth
   (&optional __a_earth)
   (if __a_earth (setq _a_earth __a_earth)) _a_earth)
  (:v_roll
   (&optional __v_roll)
   (if __v_roll (setq _v_roll __v_roll)) _v_roll)
  (:v_pitch
   (&optional __v_pitch)
   (if __v_pitch (setq _v_pitch __v_pitch)) _v_pitch)
  (:v_head
   (&optional __v_head)
   (if __v_head (setq _v_head __v_head)) _v_head)
  (:status1
   (&optional __status1)
   (if __status1 (setq _status1 __status1)) _status1)
  (:status2
   (&optional __status2)
   (if __status2 (setq _status2 __status2)) _status2)
  (:checksum
   (&optional __checksum)
   (if __checksum (setq _checksum __checksum)) _checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _length
    1
    ;; uint8 _mode
    1
    ;; int16 _time1
    2
    ;; int32 _time2
    4
    ;; uint8 _num
    1
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _height
    8
    ;; float64 _v_n
    8
    ;; float64 _v_e
    8
    ;; float64 _v_earth
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _head
    8
    ;; float64 _a_n
    8
    ;; float64 _a_e
    8
    ;; float64 _a_earth
    8
    ;; float64 _v_roll
    8
    ;; float64 _v_pitch
    8
    ;; float64 _v_head
    8
    ;; uint8 _status1
    1
    ;; uint8 _status2
    1
    ;; uint8 _checksum
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _length
       (write-byte _length s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; int16 _time1
       (write-word _time1 s)
     ;; int32 _time2
       (write-long _time2 s)
     ;; uint8 _num
       (write-byte _num s)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_n
       (sys::poke _v_n (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_e
       (sys::poke _v_e (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_earth
       (sys::poke _v_earth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _head
       (sys::poke _head (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a_n
       (sys::poke _a_n (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a_e
       (sys::poke _a_e (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a_earth
       (sys::poke _a_earth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_roll
       (sys::poke _v_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_pitch
       (sys::poke _v_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_head
       (sys::poke _v_head (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _status1
       (write-byte _status1 s)
     ;; uint8 _status2
       (write-byte _status2 s)
     ;; uint8 _checksum
       (write-byte _checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _length
     (setq _length (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _time1
     (setq _time1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _time2
     (setq _time2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _num
     (setq _num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_n
     (setq _v_n (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_e
     (setq _v_e (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_earth
     (setq _v_earth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _head
     (setq _head (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a_n
     (setq _a_n (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a_e
     (setq _a_e (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a_earth
     (setq _a_earth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_roll
     (setq _v_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_pitch
     (setq _v_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_head
     (setq _v_head (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _status1
     (setq _status1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _status2
     (setq _status2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _checksum
     (setq _checksum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get zf_msgs::pos320 :md5sum-) "90a0b5614d459b65b16442e42c81a2f7")
(setf (get zf_msgs::pos320 :datatype-) "zf_msgs/pos320")
(setf (get zf_msgs::pos320 :definition-)
      "Header header
uint8 length
uint8 mode
int16 time1
int32 time2
uint8 num
float64 lat
float64 lon
float64 height
float64 v_n
float64 v_e
float64 v_earth
float64 roll
float64 pitch
float64 head
float64 a_n
float64 a_e
float64 a_earth
float64 v_roll
float64 v_pitch
float64 v_head
uint8 status1
uint8 status2
uint8 checksum

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



(provide :zf_msgs/pos320 "90a0b5614d459b65b16442e42c81a2f7")


