;; Auto-generated. Do not edit!


(when (boundp 'zfmsg::CanInfo)
  (if (not (find-package "ZFMSG"))
    (make-package "ZFMSG"))
  (shadow 'CanInfo (find-package "ZFMSG")))
(unless (find-package "ZFMSG::CANINFO")
  (make-package "ZFMSG::CANINFO"))

(in-package "ROS")
;;//! \htmlinclude CanInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass zfmsg::CanInfo
  :super ros::object
  :slots (_header _ts _controlMode _brakePressure _brakeSpeed _targetBrakePressure _targetBrakeSpeed _targetBrakePosition _brakePosition _breakPedalOn _breakMotorCurrent _breakErrorCode _steerAngle _steerSpeed _targetSteerAngle _targetSteerSpeed _steerMotorTemperature _steerMotorCurrent _steerTorque _resultSetMiddleZero _steerErrorCode _mainMotorSpeed _mainMotorCurrent _motorBreakOn _throtle _gear _targetThrotle _targetGear _gearLeverPosition _mainMotorBreakOn _throttleErrorCode ))

(defmethod zfmsg::CanInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ts __ts) 0)
    ((:controlMode __controlMode) 0)
    ((:brakePressure __brakePressure) 0.0)
    ((:brakeSpeed __brakeSpeed) 0.0)
    ((:targetBrakePressure __targetBrakePressure) 0.0)
    ((:targetBrakeSpeed __targetBrakeSpeed) 0.0)
    ((:targetBrakePosition __targetBrakePosition) 0.0)
    ((:brakePosition __brakePosition) 0.0)
    ((:breakPedalOn __breakPedalOn) nil)
    ((:breakMotorCurrent __breakMotorCurrent) 0.0)
    ((:breakErrorCode __breakErrorCode) 0)
    ((:steerAngle __steerAngle) 0.0)
    ((:steerSpeed __steerSpeed) 0.0)
    ((:targetSteerAngle __targetSteerAngle) 0.0)
    ((:targetSteerSpeed __targetSteerSpeed) 0.0)
    ((:steerMotorTemperature __steerMotorTemperature) 0.0)
    ((:steerMotorCurrent __steerMotorCurrent) 0.0)
    ((:steerTorque __steerTorque) 0.0)
    ((:resultSetMiddleZero __resultSetMiddleZero) 0.0)
    ((:steerErrorCode __steerErrorCode) 0)
    ((:mainMotorSpeed __mainMotorSpeed) 0.0)
    ((:mainMotorCurrent __mainMotorCurrent) 0.0)
    ((:motorBreakOn __motorBreakOn) 0)
    ((:throtle __throtle) 0.0)
    ((:gear __gear) "")
    ((:targetThrotle __targetThrotle) 0.0)
    ((:targetGear __targetGear) "")
    ((:gearLeverPosition __gearLeverPosition) "")
    ((:mainMotorBreakOn __mainMotorBreakOn) nil)
    ((:throttleErrorCode __throttleErrorCode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ts (round __ts))
   (setq _controlMode (round __controlMode))
   (setq _brakePressure (float __brakePressure))
   (setq _brakeSpeed (float __brakeSpeed))
   (setq _targetBrakePressure (float __targetBrakePressure))
   (setq _targetBrakeSpeed (float __targetBrakeSpeed))
   (setq _targetBrakePosition (float __targetBrakePosition))
   (setq _brakePosition (float __brakePosition))
   (setq _breakPedalOn __breakPedalOn)
   (setq _breakMotorCurrent (float __breakMotorCurrent))
   (setq _breakErrorCode (round __breakErrorCode))
   (setq _steerAngle (float __steerAngle))
   (setq _steerSpeed (float __steerSpeed))
   (setq _targetSteerAngle (float __targetSteerAngle))
   (setq _targetSteerSpeed (float __targetSteerSpeed))
   (setq _steerMotorTemperature (float __steerMotorTemperature))
   (setq _steerMotorCurrent (float __steerMotorCurrent))
   (setq _steerTorque (float __steerTorque))
   (setq _resultSetMiddleZero (float __resultSetMiddleZero))
   (setq _steerErrorCode (round __steerErrorCode))
   (setq _mainMotorSpeed (float __mainMotorSpeed))
   (setq _mainMotorCurrent (float __mainMotorCurrent))
   (setq _motorBreakOn (round __motorBreakOn))
   (setq _throtle (float __throtle))
   (setq _gear (string __gear))
   (setq _targetThrotle (float __targetThrotle))
   (setq _targetGear (string __targetGear))
   (setq _gearLeverPosition (string __gearLeverPosition))
   (setq _mainMotorBreakOn __mainMotorBreakOn)
   (setq _throttleErrorCode (round __throttleErrorCode))
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
  (:brakePressure
   (&optional __brakePressure)
   (if __brakePressure (setq _brakePressure __brakePressure)) _brakePressure)
  (:brakeSpeed
   (&optional __brakeSpeed)
   (if __brakeSpeed (setq _brakeSpeed __brakeSpeed)) _brakeSpeed)
  (:targetBrakePressure
   (&optional __targetBrakePressure)
   (if __targetBrakePressure (setq _targetBrakePressure __targetBrakePressure)) _targetBrakePressure)
  (:targetBrakeSpeed
   (&optional __targetBrakeSpeed)
   (if __targetBrakeSpeed (setq _targetBrakeSpeed __targetBrakeSpeed)) _targetBrakeSpeed)
  (:targetBrakePosition
   (&optional __targetBrakePosition)
   (if __targetBrakePosition (setq _targetBrakePosition __targetBrakePosition)) _targetBrakePosition)
  (:brakePosition
   (&optional __brakePosition)
   (if __brakePosition (setq _brakePosition __brakePosition)) _brakePosition)
  (:breakPedalOn
   (&optional __breakPedalOn)
   (if __breakPedalOn (setq _breakPedalOn __breakPedalOn)) _breakPedalOn)
  (:breakMotorCurrent
   (&optional __breakMotorCurrent)
   (if __breakMotorCurrent (setq _breakMotorCurrent __breakMotorCurrent)) _breakMotorCurrent)
  (:breakErrorCode
   (&optional __breakErrorCode)
   (if __breakErrorCode (setq _breakErrorCode __breakErrorCode)) _breakErrorCode)
  (:steerAngle
   (&optional __steerAngle)
   (if __steerAngle (setq _steerAngle __steerAngle)) _steerAngle)
  (:steerSpeed
   (&optional __steerSpeed)
   (if __steerSpeed (setq _steerSpeed __steerSpeed)) _steerSpeed)
  (:targetSteerAngle
   (&optional __targetSteerAngle)
   (if __targetSteerAngle (setq _targetSteerAngle __targetSteerAngle)) _targetSteerAngle)
  (:targetSteerSpeed
   (&optional __targetSteerSpeed)
   (if __targetSteerSpeed (setq _targetSteerSpeed __targetSteerSpeed)) _targetSteerSpeed)
  (:steerMotorTemperature
   (&optional __steerMotorTemperature)
   (if __steerMotorTemperature (setq _steerMotorTemperature __steerMotorTemperature)) _steerMotorTemperature)
  (:steerMotorCurrent
   (&optional __steerMotorCurrent)
   (if __steerMotorCurrent (setq _steerMotorCurrent __steerMotorCurrent)) _steerMotorCurrent)
  (:steerTorque
   (&optional __steerTorque)
   (if __steerTorque (setq _steerTorque __steerTorque)) _steerTorque)
  (:resultSetMiddleZero
   (&optional __resultSetMiddleZero)
   (if __resultSetMiddleZero (setq _resultSetMiddleZero __resultSetMiddleZero)) _resultSetMiddleZero)
  (:steerErrorCode
   (&optional __steerErrorCode)
   (if __steerErrorCode (setq _steerErrorCode __steerErrorCode)) _steerErrorCode)
  (:mainMotorSpeed
   (&optional __mainMotorSpeed)
   (if __mainMotorSpeed (setq _mainMotorSpeed __mainMotorSpeed)) _mainMotorSpeed)
  (:mainMotorCurrent
   (&optional __mainMotorCurrent)
   (if __mainMotorCurrent (setq _mainMotorCurrent __mainMotorCurrent)) _mainMotorCurrent)
  (:motorBreakOn
   (&optional __motorBreakOn)
   (if __motorBreakOn (setq _motorBreakOn __motorBreakOn)) _motorBreakOn)
  (:throtle
   (&optional __throtle)
   (if __throtle (setq _throtle __throtle)) _throtle)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:targetThrotle
   (&optional __targetThrotle)
   (if __targetThrotle (setq _targetThrotle __targetThrotle)) _targetThrotle)
  (:targetGear
   (&optional __targetGear)
   (if __targetGear (setq _targetGear __targetGear)) _targetGear)
  (:gearLeverPosition
   (&optional __gearLeverPosition)
   (if __gearLeverPosition (setq _gearLeverPosition __gearLeverPosition)) _gearLeverPosition)
  (:mainMotorBreakOn
   (&optional __mainMotorBreakOn)
   (if __mainMotorBreakOn (setq _mainMotorBreakOn __mainMotorBreakOn)) _mainMotorBreakOn)
  (:throttleErrorCode
   (&optional __throttleErrorCode)
   (if __throttleErrorCode (setq _throttleErrorCode __throttleErrorCode)) _throttleErrorCode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _ts
    8
    ;; uint8 _controlMode
    1
    ;; float32 _brakePressure
    4
    ;; float32 _brakeSpeed
    4
    ;; float32 _targetBrakePressure
    4
    ;; float32 _targetBrakeSpeed
    4
    ;; float32 _targetBrakePosition
    4
    ;; float32 _brakePosition
    4
    ;; bool _breakPedalOn
    1
    ;; float32 _breakMotorCurrent
    4
    ;; uint8 _breakErrorCode
    1
    ;; float32 _steerAngle
    4
    ;; float32 _steerSpeed
    4
    ;; float32 _targetSteerAngle
    4
    ;; float32 _targetSteerSpeed
    4
    ;; float32 _steerMotorTemperature
    4
    ;; float32 _steerMotorCurrent
    4
    ;; float32 _steerTorque
    4
    ;; float32 _resultSetMiddleZero
    4
    ;; uint8 _steerErrorCode
    1
    ;; float32 _mainMotorSpeed
    4
    ;; float32 _mainMotorCurrent
    4
    ;; uint8 _motorBreakOn
    1
    ;; float32 _throtle
    4
    ;; string _gear
    4 (length _gear)
    ;; float32 _targetThrotle
    4
    ;; string _targetGear
    4 (length _targetGear)
    ;; string _gearLeverPosition
    4 (length _gearLeverPosition)
    ;; bool _mainMotorBreakOn
    1
    ;; uint8 _throttleErrorCode
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
     ;; float32 _brakePressure
       (sys::poke _brakePressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brakeSpeed
       (sys::poke _brakeSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _targetBrakePressure
       (sys::poke _targetBrakePressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _targetBrakeSpeed
       (sys::poke _targetBrakeSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _targetBrakePosition
       (sys::poke _targetBrakePosition (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brakePosition
       (sys::poke _brakePosition (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _breakPedalOn
       (if _breakPedalOn (write-byte -1 s) (write-byte 0 s))
     ;; float32 _breakMotorCurrent
       (sys::poke _breakMotorCurrent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _breakErrorCode
       (write-byte _breakErrorCode s)
     ;; float32 _steerAngle
       (sys::poke _steerAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steerSpeed
       (sys::poke _steerSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _targetSteerAngle
       (sys::poke _targetSteerAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _targetSteerSpeed
       (sys::poke _targetSteerSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steerMotorTemperature
       (sys::poke _steerMotorTemperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steerMotorCurrent
       (sys::poke _steerMotorCurrent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steerTorque
       (sys::poke _steerTorque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _resultSetMiddleZero
       (sys::poke _resultSetMiddleZero (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _steerErrorCode
       (write-byte _steerErrorCode s)
     ;; float32 _mainMotorSpeed
       (sys::poke _mainMotorSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mainMotorCurrent
       (sys::poke _mainMotorCurrent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _motorBreakOn
       (write-byte _motorBreakOn s)
     ;; float32 _throtle
       (sys::poke _throtle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _gear
       (write-long (length _gear) s) (princ _gear s)
     ;; float32 _targetThrotle
       (sys::poke _targetThrotle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _targetGear
       (write-long (length _targetGear) s) (princ _targetGear s)
     ;; string _gearLeverPosition
       (write-long (length _gearLeverPosition) s) (princ _gearLeverPosition s)
     ;; bool _mainMotorBreakOn
       (if _mainMotorBreakOn (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _throttleErrorCode
       (write-byte _throttleErrorCode s)
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
   ;; float32 _brakePressure
     (setq _brakePressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brakeSpeed
     (setq _brakeSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _targetBrakePressure
     (setq _targetBrakePressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _targetBrakeSpeed
     (setq _targetBrakeSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _targetBrakePosition
     (setq _targetBrakePosition (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brakePosition
     (setq _brakePosition (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _breakPedalOn
     (setq _breakPedalOn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _breakMotorCurrent
     (setq _breakMotorCurrent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _breakErrorCode
     (setq _breakErrorCode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _steerAngle
     (setq _steerAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steerSpeed
     (setq _steerSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _targetSteerAngle
     (setq _targetSteerAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _targetSteerSpeed
     (setq _targetSteerSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steerMotorTemperature
     (setq _steerMotorTemperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steerMotorCurrent
     (setq _steerMotorCurrent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steerTorque
     (setq _steerTorque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _resultSetMiddleZero
     (setq _resultSetMiddleZero (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _steerErrorCode
     (setq _steerErrorCode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _mainMotorSpeed
     (setq _mainMotorSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mainMotorCurrent
     (setq _mainMotorCurrent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _motorBreakOn
     (setq _motorBreakOn (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _throtle
     (setq _throtle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _gear
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gear (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _targetThrotle
     (setq _targetThrotle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _targetGear
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _targetGear (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gearLeverPosition
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gearLeverPosition (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _mainMotorBreakOn
     (setq _mainMotorBreakOn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _throttleErrorCode
     (setq _throttleErrorCode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get zfmsg::CanInfo :md5sum-) "9e711434ed4a101e8ef41cf060e99e89")
(setf (get zfmsg::CanInfo :datatype-) "zfmsg/CanInfo")
(setf (get zfmsg::CanInfo :definition-)
      "std_msgs/Header      header
int64       ts
uint8       controlMode
float32     brakePressure
float32     brakeSpeed
float32     targetBrakePressure
float32     targetBrakeSpeed
float32      targetBrakePosition
float32       brakePosition
bool 	    breakPedalOn
float32     breakMotorCurrent
uint8       breakErrorCode

float32     steerAngle
float32     steerSpeed
float32     targetSteerAngle
float32     targetSteerSpeed
float32     steerMotorTemperature
float32     steerMotorCurrent
float32	    steerTorque
float32     resultSetMiddleZero
uint8       steerErrorCode



float32     mainMotorSpeed
float32     mainMotorCurrent
uint8       motorBreakOn
float32     throtle
string      gear
float32     targetThrotle
string      targetGear
string      gearLeverPosition
bool       mainMotorBreakOn
uint8      throttleErrorCode

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



(provide :zfmsg/CanInfo "9e711434ed4a101e8ef41cf060e99e89")


