; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Socket_Command.msg.html

(cl:defclass <Socket_Command> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Socket_Command (<Socket_Command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Socket_Command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Socket_Command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Socket_Command> is deprecated: use rm_msgs-msg:Socket_Command instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Socket_Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:command-val is deprecated.  Use rm_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Socket_Command>) ostream)
  "Serializes a message object of type '<Socket_Command>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Socket_Command>) istream)
  "Deserializes a message object of type '<Socket_Command>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Socket_Command>)))
  "Returns string type for a message object of type '<Socket_Command>"
  "rm_msgs/Socket_Command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Socket_Command)))
  "Returns string type for a message object of type 'Socket_Command"
  "rm_msgs/Socket_Command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Socket_Command>)))
  "Returns md5sum for a message object of type '<Socket_Command>"
  "c83874a1c49dbf24b2b8f600399430e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Socket_Command)))
  "Returns md5sum for a message object of type 'Socket_Command"
  "c83874a1c49dbf24b2b8f600399430e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Socket_Command>)))
  "Returns full string definition for message of type '<Socket_Command>"
  (cl:format cl:nil "#通过Socket控制无序分拣程序，1代表开始，2代表暂停，3代表继续，4代表结束~%uint16 command   ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Socket_Command)))
  "Returns full string definition for message of type 'Socket_Command"
  (cl:format cl:nil "#通过Socket控制无序分拣程序，1代表开始，2代表暂停，3代表继续，4代表结束~%uint16 command   ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Socket_Command>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Socket_Command>))
  "Converts a ROS message object to a list"
  (cl:list 'Socket_Command
    (cl:cons ':command (command msg))
))
