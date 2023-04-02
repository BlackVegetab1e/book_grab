; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Turtle_Driver.msg.html

(cl:defclass <Turtle_Driver> (roslisp-msg-protocol:ros-message)
  ((message_type
    :reader message_type
    :initarg :message_type
    :type cl:string
    :initform "")
   (robot_mac_address
    :reader robot_mac_address
    :initarg :robot_mac_address
    :type cl:string
    :initform "")
   (vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0)
   (vtheta
    :reader vtheta
    :initarg :vtheta
    :type cl:float
    :initform 0.0))
)

(cl:defclass Turtle_Driver (<Turtle_Driver>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Turtle_Driver>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Turtle_Driver)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Turtle_Driver> is deprecated: use rm_msgs-msg:Turtle_Driver instead.")))

(cl:ensure-generic-function 'message_type-val :lambda-list '(m))
(cl:defmethod message_type-val ((m <Turtle_Driver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:message_type-val is deprecated.  Use rm_msgs-msg:message_type instead.")
  (message_type m))

(cl:ensure-generic-function 'robot_mac_address-val :lambda-list '(m))
(cl:defmethod robot_mac_address-val ((m <Turtle_Driver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:robot_mac_address-val is deprecated.  Use rm_msgs-msg:robot_mac_address instead.")
  (robot_mac_address m))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <Turtle_Driver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:vx-val is deprecated.  Use rm_msgs-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <Turtle_Driver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:vy-val is deprecated.  Use rm_msgs-msg:vy instead.")
  (vy m))

(cl:ensure-generic-function 'vtheta-val :lambda-list '(m))
(cl:defmethod vtheta-val ((m <Turtle_Driver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:vtheta-val is deprecated.  Use rm_msgs-msg:vtheta instead.")
  (vtheta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Turtle_Driver>) ostream)
  "Serializes a message object of type '<Turtle_Driver>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_mac_address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_mac_address))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vtheta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Turtle_Driver>) istream)
  "Deserializes a message object of type '<Turtle_Driver>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_mac_address) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_mac_address) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vtheta) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Turtle_Driver>)))
  "Returns string type for a message object of type '<Turtle_Driver>"
  "rm_msgs/Turtle_Driver")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Turtle_Driver)))
  "Returns string type for a message object of type 'Turtle_Driver"
  "rm_msgs/Turtle_Driver")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Turtle_Driver>)))
  "Returns md5sum for a message object of type '<Turtle_Driver>"
  "e45b8bb2656522faceb0751bacf648f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Turtle_Driver)))
  "Returns md5sum for a message object of type 'Turtle_Driver"
  "e45b8bb2656522faceb0751bacf648f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Turtle_Driver>)))
  "Returns full string definition for message of type '<Turtle_Driver>"
  (cl:format cl:nil "#对Turtle海龟底盘的操作~%string message_type     #消息类型,\"move\"为移动~%string robot_mac_address    #Turtle底盘的MAC地址~%float32 vx    #X轴方向速度~%float32 vy    #Y轴方向速度~%float32 vtheta    #~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Turtle_Driver)))
  "Returns full string definition for message of type 'Turtle_Driver"
  (cl:format cl:nil "#对Turtle海龟底盘的操作~%string message_type     #消息类型,\"move\"为移动~%string robot_mac_address    #Turtle底盘的MAC地址~%float32 vx    #X轴方向速度~%float32 vy    #Y轴方向速度~%float32 vtheta    #~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Turtle_Driver>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message_type))
     4 (cl:length (cl:slot-value msg 'robot_mac_address))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Turtle_Driver>))
  "Converts a ROS message object to a list"
  (cl:list 'Turtle_Driver
    (cl:cons ':message_type (message_type msg))
    (cl:cons ':robot_mac_address (robot_mac_address msg))
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':vtheta (vtheta msg))
))
