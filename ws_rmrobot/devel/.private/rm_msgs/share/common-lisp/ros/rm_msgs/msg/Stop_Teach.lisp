; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Stop_Teach.msg.html

(cl:defclass <Stop_Teach> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass Stop_Teach (<Stop_Teach>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stop_Teach>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stop_Teach)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Stop_Teach> is deprecated: use rm_msgs-msg:Stop_Teach instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Stop_Teach>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:command-val is deprecated.  Use rm_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stop_Teach>) ostream)
  "Serializes a message object of type '<Stop_Teach>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stop_Teach>) istream)
  "Deserializes a message object of type '<Stop_Teach>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stop_Teach>)))
  "Returns string type for a message object of type '<Stop_Teach>"
  "rm_msgs/Stop_Teach")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stop_Teach)))
  "Returns string type for a message object of type 'Stop_Teach"
  "rm_msgs/Stop_Teach")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stop_Teach>)))
  "Returns md5sum for a message object of type '<Stop_Teach>"
  "cba5e21e920a3a2b7b375cb65b64cdea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stop_Teach)))
  "Returns md5sum for a message object of type 'Stop_Teach"
  "cba5e21e920a3a2b7b375cb65b64cdea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stop_Teach>)))
  "Returns full string definition for message of type '<Stop_Teach>"
  (cl:format cl:nil "string command~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stop_Teach)))
  "Returns full string definition for message of type 'Stop_Teach"
  (cl:format cl:nil "string command~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stop_Teach>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stop_Teach>))
  "Converts a ROS message object to a list"
  (cl:list 'Stop_Teach
    (cl:cons ':command (command msg))
))
