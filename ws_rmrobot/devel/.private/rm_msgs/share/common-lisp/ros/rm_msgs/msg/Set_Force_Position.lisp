; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Set_Force_Position.msg.html

(cl:defclass <Set_Force_Position> (roslisp-msg-protocol:ros-message)
  ((sensor
    :reader sensor
    :initarg :sensor
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (N
    :reader N
    :initarg :N
    :type cl:fixnum
    :initform 0)
   (load
    :reader load
    :initarg :load
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Set_Force_Position (<Set_Force_Position>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Set_Force_Position>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Set_Force_Position)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Set_Force_Position> is deprecated: use rm_msgs-msg:Set_Force_Position instead.")))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <Set_Force_Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sensor-val is deprecated.  Use rm_msgs-msg:sensor instead.")
  (sensor m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Set_Force_Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mode-val is deprecated.  Use rm_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'N-val :lambda-list '(m))
(cl:defmethod N-val ((m <Set_Force_Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:N-val is deprecated.  Use rm_msgs-msg:N instead.")
  (N m))

(cl:ensure-generic-function 'load-val :lambda-list '(m))
(cl:defmethod load-val ((m <Set_Force_Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:load-val is deprecated.  Use rm_msgs-msg:load instead.")
  (load m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Set_Force_Position>) ostream)
  "Serializes a message object of type '<Set_Force_Position>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'N)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'load)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Set_Force_Position>) istream)
  "Deserializes a message object of type '<Set_Force_Position>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'N) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'load)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Set_Force_Position>)))
  "Returns string type for a message object of type '<Set_Force_Position>"
  "rm_msgs/Set_Force_Position")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Set_Force_Position)))
  "Returns string type for a message object of type 'Set_Force_Position"
  "rm_msgs/Set_Force_Position")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Set_Force_Position>)))
  "Returns md5sum for a message object of type '<Set_Force_Position>"
  "53a9f39d19bfb21fb905a51b86a97f5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Set_Force_Position)))
  "Returns md5sum for a message object of type 'Set_Force_Position"
  "53a9f39d19bfb21fb905a51b86a97f5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Set_Force_Position>)))
  "Returns full string definition for message of type '<Set_Force_Position>"
  (cl:format cl:nil "uint8 sensor~%uint8 mode~%int16 N~%uint8 load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Set_Force_Position)))
  "Returns full string definition for message of type 'Set_Force_Position"
  (cl:format cl:nil "uint8 sensor~%uint8 mode~%int16 N~%uint8 load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Set_Force_Position>))
  (cl:+ 0
     1
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Set_Force_Position>))
  "Converts a ROS message object to a list"
  (cl:list 'Set_Force_Position
    (cl:cons ':sensor (sensor msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':N (N msg))
    (cl:cons ':load (load msg))
))
