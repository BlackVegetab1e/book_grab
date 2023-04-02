; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude LiftState.msg.html

(cl:defclass <LiftState> (roslisp-msg-protocol:ros-message)
  ((height
    :reader height
    :initarg :height
    :type cl:fixnum
    :initform 0)
   (current
    :reader current
    :initarg :current
    :type cl:fixnum
    :initform 0)
   (err_flag
    :reader err_flag
    :initarg :err_flag
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0))
)

(cl:defclass LiftState (<LiftState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LiftState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LiftState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<LiftState> is deprecated: use rm_msgs-msg:LiftState instead.")))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <LiftState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:height-val is deprecated.  Use rm_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <LiftState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:current-val is deprecated.  Use rm_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'err_flag-val :lambda-list '(m))
(cl:defmethod err_flag-val ((m <LiftState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:err_flag-val is deprecated.  Use rm_msgs-msg:err_flag instead.")
  (err_flag m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <LiftState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mode-val is deprecated.  Use rm_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LiftState>) ostream)
  "Serializes a message object of type '<LiftState>"
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'err_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'err_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LiftState>) istream)
  "Deserializes a message object of type '<LiftState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'err_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'err_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LiftState>)))
  "Returns string type for a message object of type '<LiftState>"
  "rm_msgs/LiftState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LiftState)))
  "Returns string type for a message object of type 'LiftState"
  "rm_msgs/LiftState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LiftState>)))
  "Returns md5sum for a message object of type '<LiftState>"
  "c5ca7de51eef8dade42274475c73f94f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LiftState)))
  "Returns md5sum for a message object of type 'LiftState"
  "c5ca7de51eef8dade42274475c73f94f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LiftState>)))
  "Returns full string definition for message of type '<LiftState>"
  (cl:format cl:nil "int16 height	#当前高度~%int16 current	#当前电流~%uint16 err_flag	#驱动错误代码~%byte mode	#当前升降状态，0-空闲，1-正方向速度运动，2-正方向位置运动，3-负方向速度运动，4-负方向位置运动~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LiftState)))
  "Returns full string definition for message of type 'LiftState"
  (cl:format cl:nil "int16 height	#当前高度~%int16 current	#当前电流~%uint16 err_flag	#驱动错误代码~%byte mode	#当前升降状态，0-空闲，1-正方向速度运动，2-正方向位置运动，3-负方向速度运动，4-负方向位置运动~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LiftState>))
  (cl:+ 0
     2
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LiftState>))
  "Converts a ROS message object to a list"
  (cl:list 'LiftState
    (cl:cons ':height (height msg))
    (cl:cons ':current (current msg))
    (cl:cons ':err_flag (err_flag msg))
    (cl:cons ':mode (mode msg))
))
