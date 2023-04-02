; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude GetArmState_Command.msg.html

(cl:defclass <GetArmState_Command> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass GetArmState_Command (<GetArmState_Command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetArmState_Command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetArmState_Command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<GetArmState_Command> is deprecated: use rm_msgs-msg:GetArmState_Command instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <GetArmState_Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:command-val is deprecated.  Use rm_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetArmState_Command>) ostream)
  "Serializes a message object of type '<GetArmState_Command>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetArmState_Command>) istream)
  "Deserializes a message object of type '<GetArmState_Command>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetArmState_Command>)))
  "Returns string type for a message object of type '<GetArmState_Command>"
  "rm_msgs/GetArmState_Command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetArmState_Command)))
  "Returns string type for a message object of type 'GetArmState_Command"
  "rm_msgs/GetArmState_Command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetArmState_Command>)))
  "Returns md5sum for a message object of type '<GetArmState_Command>"
  "cba5e21e920a3a2b7b375cb65b64cdea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetArmState_Command)))
  "Returns md5sum for a message object of type 'GetArmState_Command"
  "cba5e21e920a3a2b7b375cb65b64cdea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetArmState_Command>)))
  "Returns full string definition for message of type '<GetArmState_Command>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetArmState_Command)))
  "Returns full string definition for message of type 'GetArmState_Command"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetArmState_Command>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetArmState_Command>))
  "Converts a ROS message object to a list"
  (cl:list 'GetArmState_Command
    (cl:cons ':command (command msg))
))
