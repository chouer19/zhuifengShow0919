; Auto-generated. Do not edit!


(cl:in-package zfmsg-msg)


;//! \htmlinclude CanInfo.msg.html

(cl:defclass <CanInfo> (roslisp-msg-protocol:ros-message)
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
   (brakePressure
    :reader brakePressure
    :initarg :brakePressure
    :type cl:float
    :initform 0.0)
   (brakeSpeed
    :reader brakeSpeed
    :initarg :brakeSpeed
    :type cl:float
    :initform 0.0)
   (targetBrakePressure
    :reader targetBrakePressure
    :initarg :targetBrakePressure
    :type cl:float
    :initform 0.0)
   (targetBrakeSpeed
    :reader targetBrakeSpeed
    :initarg :targetBrakeSpeed
    :type cl:float
    :initform 0.0)
   (targetBrakePosition
    :reader targetBrakePosition
    :initarg :targetBrakePosition
    :type cl:float
    :initform 0.0)
   (brakePosition
    :reader brakePosition
    :initarg :brakePosition
    :type cl:float
    :initform 0.0)
   (breakPedalOn
    :reader breakPedalOn
    :initarg :breakPedalOn
    :type cl:boolean
    :initform cl:nil)
   (breakMotorCurrent
    :reader breakMotorCurrent
    :initarg :breakMotorCurrent
    :type cl:float
    :initform 0.0)
   (breakErrorCode
    :reader breakErrorCode
    :initarg :breakErrorCode
    :type cl:fixnum
    :initform 0)
   (steerAngle
    :reader steerAngle
    :initarg :steerAngle
    :type cl:float
    :initform 0.0)
   (steerSpeed
    :reader steerSpeed
    :initarg :steerSpeed
    :type cl:float
    :initform 0.0)
   (targetSteerAngle
    :reader targetSteerAngle
    :initarg :targetSteerAngle
    :type cl:float
    :initform 0.0)
   (targetSteerSpeed
    :reader targetSteerSpeed
    :initarg :targetSteerSpeed
    :type cl:float
    :initform 0.0)
   (steerMotorTemperature
    :reader steerMotorTemperature
    :initarg :steerMotorTemperature
    :type cl:float
    :initform 0.0)
   (steerMotorCurrent
    :reader steerMotorCurrent
    :initarg :steerMotorCurrent
    :type cl:float
    :initform 0.0)
   (steerTorque
    :reader steerTorque
    :initarg :steerTorque
    :type cl:float
    :initform 0.0)
   (resultSetMiddleZero
    :reader resultSetMiddleZero
    :initarg :resultSetMiddleZero
    :type cl:float
    :initform 0.0)
   (steerErrorCode
    :reader steerErrorCode
    :initarg :steerErrorCode
    :type cl:fixnum
    :initform 0)
   (mainMotorSpeed
    :reader mainMotorSpeed
    :initarg :mainMotorSpeed
    :type cl:float
    :initform 0.0)
   (mainMotorCurrent
    :reader mainMotorCurrent
    :initarg :mainMotorCurrent
    :type cl:float
    :initform 0.0)
   (motorBreakOn
    :reader motorBreakOn
    :initarg :motorBreakOn
    :type cl:fixnum
    :initform 0)
   (throtle
    :reader throtle
    :initarg :throtle
    :type cl:float
    :initform 0.0)
   (gear
    :reader gear
    :initarg :gear
    :type cl:string
    :initform "")
   (targetThrotle
    :reader targetThrotle
    :initarg :targetThrotle
    :type cl:float
    :initform 0.0)
   (targetGear
    :reader targetGear
    :initarg :targetGear
    :type cl:string
    :initform "")
   (gearLeverPosition
    :reader gearLeverPosition
    :initarg :gearLeverPosition
    :type cl:string
    :initform "")
   (mainMotorBreakOn
    :reader mainMotorBreakOn
    :initarg :mainMotorBreakOn
    :type cl:boolean
    :initform cl:nil)
   (throttleErrorCode
    :reader throttleErrorCode
    :initarg :throttleErrorCode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CanInfo (<CanInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CanInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CanInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zfmsg-msg:<CanInfo> is deprecated: use zfmsg-msg:CanInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:header-val is deprecated.  Use zfmsg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ts-val :lambda-list '(m))
(cl:defmethod ts-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:ts-val is deprecated.  Use zfmsg-msg:ts instead.")
  (ts m))

(cl:ensure-generic-function 'controlMode-val :lambda-list '(m))
(cl:defmethod controlMode-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:controlMode-val is deprecated.  Use zfmsg-msg:controlMode instead.")
  (controlMode m))

(cl:ensure-generic-function 'brakePressure-val :lambda-list '(m))
(cl:defmethod brakePressure-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:brakePressure-val is deprecated.  Use zfmsg-msg:brakePressure instead.")
  (brakePressure m))

(cl:ensure-generic-function 'brakeSpeed-val :lambda-list '(m))
(cl:defmethod brakeSpeed-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:brakeSpeed-val is deprecated.  Use zfmsg-msg:brakeSpeed instead.")
  (brakeSpeed m))

(cl:ensure-generic-function 'targetBrakePressure-val :lambda-list '(m))
(cl:defmethod targetBrakePressure-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:targetBrakePressure-val is deprecated.  Use zfmsg-msg:targetBrakePressure instead.")
  (targetBrakePressure m))

(cl:ensure-generic-function 'targetBrakeSpeed-val :lambda-list '(m))
(cl:defmethod targetBrakeSpeed-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:targetBrakeSpeed-val is deprecated.  Use zfmsg-msg:targetBrakeSpeed instead.")
  (targetBrakeSpeed m))

(cl:ensure-generic-function 'targetBrakePosition-val :lambda-list '(m))
(cl:defmethod targetBrakePosition-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:targetBrakePosition-val is deprecated.  Use zfmsg-msg:targetBrakePosition instead.")
  (targetBrakePosition m))

(cl:ensure-generic-function 'brakePosition-val :lambda-list '(m))
(cl:defmethod brakePosition-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:brakePosition-val is deprecated.  Use zfmsg-msg:brakePosition instead.")
  (brakePosition m))

(cl:ensure-generic-function 'breakPedalOn-val :lambda-list '(m))
(cl:defmethod breakPedalOn-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:breakPedalOn-val is deprecated.  Use zfmsg-msg:breakPedalOn instead.")
  (breakPedalOn m))

(cl:ensure-generic-function 'breakMotorCurrent-val :lambda-list '(m))
(cl:defmethod breakMotorCurrent-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:breakMotorCurrent-val is deprecated.  Use zfmsg-msg:breakMotorCurrent instead.")
  (breakMotorCurrent m))

(cl:ensure-generic-function 'breakErrorCode-val :lambda-list '(m))
(cl:defmethod breakErrorCode-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:breakErrorCode-val is deprecated.  Use zfmsg-msg:breakErrorCode instead.")
  (breakErrorCode m))

(cl:ensure-generic-function 'steerAngle-val :lambda-list '(m))
(cl:defmethod steerAngle-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:steerAngle-val is deprecated.  Use zfmsg-msg:steerAngle instead.")
  (steerAngle m))

(cl:ensure-generic-function 'steerSpeed-val :lambda-list '(m))
(cl:defmethod steerSpeed-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:steerSpeed-val is deprecated.  Use zfmsg-msg:steerSpeed instead.")
  (steerSpeed m))

(cl:ensure-generic-function 'targetSteerAngle-val :lambda-list '(m))
(cl:defmethod targetSteerAngle-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:targetSteerAngle-val is deprecated.  Use zfmsg-msg:targetSteerAngle instead.")
  (targetSteerAngle m))

(cl:ensure-generic-function 'targetSteerSpeed-val :lambda-list '(m))
(cl:defmethod targetSteerSpeed-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:targetSteerSpeed-val is deprecated.  Use zfmsg-msg:targetSteerSpeed instead.")
  (targetSteerSpeed m))

(cl:ensure-generic-function 'steerMotorTemperature-val :lambda-list '(m))
(cl:defmethod steerMotorTemperature-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:steerMotorTemperature-val is deprecated.  Use zfmsg-msg:steerMotorTemperature instead.")
  (steerMotorTemperature m))

(cl:ensure-generic-function 'steerMotorCurrent-val :lambda-list '(m))
(cl:defmethod steerMotorCurrent-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:steerMotorCurrent-val is deprecated.  Use zfmsg-msg:steerMotorCurrent instead.")
  (steerMotorCurrent m))

(cl:ensure-generic-function 'steerTorque-val :lambda-list '(m))
(cl:defmethod steerTorque-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:steerTorque-val is deprecated.  Use zfmsg-msg:steerTorque instead.")
  (steerTorque m))

(cl:ensure-generic-function 'resultSetMiddleZero-val :lambda-list '(m))
(cl:defmethod resultSetMiddleZero-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:resultSetMiddleZero-val is deprecated.  Use zfmsg-msg:resultSetMiddleZero instead.")
  (resultSetMiddleZero m))

(cl:ensure-generic-function 'steerErrorCode-val :lambda-list '(m))
(cl:defmethod steerErrorCode-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:steerErrorCode-val is deprecated.  Use zfmsg-msg:steerErrorCode instead.")
  (steerErrorCode m))

(cl:ensure-generic-function 'mainMotorSpeed-val :lambda-list '(m))
(cl:defmethod mainMotorSpeed-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:mainMotorSpeed-val is deprecated.  Use zfmsg-msg:mainMotorSpeed instead.")
  (mainMotorSpeed m))

(cl:ensure-generic-function 'mainMotorCurrent-val :lambda-list '(m))
(cl:defmethod mainMotorCurrent-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:mainMotorCurrent-val is deprecated.  Use zfmsg-msg:mainMotorCurrent instead.")
  (mainMotorCurrent m))

(cl:ensure-generic-function 'motorBreakOn-val :lambda-list '(m))
(cl:defmethod motorBreakOn-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:motorBreakOn-val is deprecated.  Use zfmsg-msg:motorBreakOn instead.")
  (motorBreakOn m))

(cl:ensure-generic-function 'throtle-val :lambda-list '(m))
(cl:defmethod throtle-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:throtle-val is deprecated.  Use zfmsg-msg:throtle instead.")
  (throtle m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:gear-val is deprecated.  Use zfmsg-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'targetThrotle-val :lambda-list '(m))
(cl:defmethod targetThrotle-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:targetThrotle-val is deprecated.  Use zfmsg-msg:targetThrotle instead.")
  (targetThrotle m))

(cl:ensure-generic-function 'targetGear-val :lambda-list '(m))
(cl:defmethod targetGear-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:targetGear-val is deprecated.  Use zfmsg-msg:targetGear instead.")
  (targetGear m))

(cl:ensure-generic-function 'gearLeverPosition-val :lambda-list '(m))
(cl:defmethod gearLeverPosition-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:gearLeverPosition-val is deprecated.  Use zfmsg-msg:gearLeverPosition instead.")
  (gearLeverPosition m))

(cl:ensure-generic-function 'mainMotorBreakOn-val :lambda-list '(m))
(cl:defmethod mainMotorBreakOn-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:mainMotorBreakOn-val is deprecated.  Use zfmsg-msg:mainMotorBreakOn instead.")
  (mainMotorBreakOn m))

(cl:ensure-generic-function 'throttleErrorCode-val :lambda-list '(m))
(cl:defmethod throttleErrorCode-val ((m <CanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zfmsg-msg:throttleErrorCode-val is deprecated.  Use zfmsg-msg:throttleErrorCode instead.")
  (throttleErrorCode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CanInfo>) ostream)
  "Serializes a message object of type '<CanInfo>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brakePressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brakeSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targetBrakePressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targetBrakeSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targetBrakePosition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brakePosition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'breakPedalOn) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'breakMotorCurrent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'breakErrorCode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steerAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steerSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targetSteerAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targetSteerSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steerMotorTemperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steerMotorCurrent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steerTorque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'resultSetMiddleZero))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steerErrorCode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mainMotorSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mainMotorCurrent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motorBreakOn)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throtle))))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targetThrotle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'targetGear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'targetGear))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gearLeverPosition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gearLeverPosition))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mainMotorBreakOn) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'throttleErrorCode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CanInfo>) istream)
  "Deserializes a message object of type '<CanInfo>"
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
    (cl:setf (cl:slot-value msg 'brakePressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brakeSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targetBrakePressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targetBrakeSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targetBrakePosition) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brakePosition) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'breakPedalOn) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'breakMotorCurrent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'breakErrorCode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steerAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steerSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targetSteerAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targetSteerSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steerMotorTemperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steerMotorCurrent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steerTorque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resultSetMiddleZero) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steerErrorCode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mainMotorSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mainMotorCurrent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motorBreakOn)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throtle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gear) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targetThrotle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'targetGear) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'targetGear) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gearLeverPosition) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gearLeverPosition) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'mainMotorBreakOn) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'throttleErrorCode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CanInfo>)))
  "Returns string type for a message object of type '<CanInfo>"
  "zfmsg/CanInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CanInfo)))
  "Returns string type for a message object of type 'CanInfo"
  "zfmsg/CanInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CanInfo>)))
  "Returns md5sum for a message object of type '<CanInfo>"
  "9e711434ed4a101e8ef41cf060e99e89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CanInfo)))
  "Returns md5sum for a message object of type 'CanInfo"
  "9e711434ed4a101e8ef41cf060e99e89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CanInfo>)))
  "Returns full string definition for message of type '<CanInfo>"
  (cl:format cl:nil "std_msgs/Header      header~%int64       ts~%uint8       controlMode~%float32     brakePressure~%float32     brakeSpeed~%float32     targetBrakePressure~%float32     targetBrakeSpeed~%float32      targetBrakePosition~%float32       brakePosition~%bool 	    breakPedalOn~%float32     breakMotorCurrent~%uint8       breakErrorCode~%~%float32     steerAngle~%float32     steerSpeed~%float32     targetSteerAngle~%float32     targetSteerSpeed~%float32     steerMotorTemperature~%float32     steerMotorCurrent~%float32	    steerTorque~%float32     resultSetMiddleZero~%uint8       steerErrorCode~%~%~%~%float32     mainMotorSpeed~%float32     mainMotorCurrent~%uint8       motorBreakOn~%float32     throtle~%string      gear~%float32     targetThrotle~%string      targetGear~%string      gearLeverPosition~%bool       mainMotorBreakOn~%uint8      throttleErrorCode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CanInfo)))
  "Returns full string definition for message of type 'CanInfo"
  (cl:format cl:nil "std_msgs/Header      header~%int64       ts~%uint8       controlMode~%float32     brakePressure~%float32     brakeSpeed~%float32     targetBrakePressure~%float32     targetBrakeSpeed~%float32      targetBrakePosition~%float32       brakePosition~%bool 	    breakPedalOn~%float32     breakMotorCurrent~%uint8       breakErrorCode~%~%float32     steerAngle~%float32     steerSpeed~%float32     targetSteerAngle~%float32     targetSteerSpeed~%float32     steerMotorTemperature~%float32     steerMotorCurrent~%float32	    steerTorque~%float32     resultSetMiddleZero~%uint8       steerErrorCode~%~%~%~%float32     mainMotorSpeed~%float32     mainMotorCurrent~%uint8       motorBreakOn~%float32     throtle~%string      gear~%float32     targetThrotle~%string      targetGear~%string      gearLeverPosition~%bool       mainMotorBreakOn~%uint8      throttleErrorCode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CanInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     4
     4
     4
     4
     4
     4
     1
     4
     1
     4
     4
     4
     4
     4
     4
     4
     4
     1
     4
     4
     1
     4
     4 (cl:length (cl:slot-value msg 'gear))
     4
     4 (cl:length (cl:slot-value msg 'targetGear))
     4 (cl:length (cl:slot-value msg 'gearLeverPosition))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CanInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CanInfo
    (cl:cons ':header (header msg))
    (cl:cons ':ts (ts msg))
    (cl:cons ':controlMode (controlMode msg))
    (cl:cons ':brakePressure (brakePressure msg))
    (cl:cons ':brakeSpeed (brakeSpeed msg))
    (cl:cons ':targetBrakePressure (targetBrakePressure msg))
    (cl:cons ':targetBrakeSpeed (targetBrakeSpeed msg))
    (cl:cons ':targetBrakePosition (targetBrakePosition msg))
    (cl:cons ':brakePosition (brakePosition msg))
    (cl:cons ':breakPedalOn (breakPedalOn msg))
    (cl:cons ':breakMotorCurrent (breakMotorCurrent msg))
    (cl:cons ':breakErrorCode (breakErrorCode msg))
    (cl:cons ':steerAngle (steerAngle msg))
    (cl:cons ':steerSpeed (steerSpeed msg))
    (cl:cons ':targetSteerAngle (targetSteerAngle msg))
    (cl:cons ':targetSteerSpeed (targetSteerSpeed msg))
    (cl:cons ':steerMotorTemperature (steerMotorTemperature msg))
    (cl:cons ':steerMotorCurrent (steerMotorCurrent msg))
    (cl:cons ':steerTorque (steerTorque msg))
    (cl:cons ':resultSetMiddleZero (resultSetMiddleZero msg))
    (cl:cons ':steerErrorCode (steerErrorCode msg))
    (cl:cons ':mainMotorSpeed (mainMotorSpeed msg))
    (cl:cons ':mainMotorCurrent (mainMotorCurrent msg))
    (cl:cons ':motorBreakOn (motorBreakOn msg))
    (cl:cons ':throtle (throtle msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':targetThrotle (targetThrotle msg))
    (cl:cons ':targetGear (targetGear msg))
    (cl:cons ':gearLeverPosition (gearLeverPosition msg))
    (cl:cons ':mainMotorBreakOn (mainMotorBreakOn msg))
    (cl:cons ':throttleErrorCode (throttleErrorCode msg))
))
