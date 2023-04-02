; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ChangeTool_Name.msg.html

(cl:defclass <ChangeTool_Name> (roslisp-msg-protocol:ros-message)
  ((toolname
    :reader toolname
    :initarg :toolname
    :type cl:string
    :initform ""))
)

(cl:defclass ChangeTool_Name (<ChangeTool_Name>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeTool_Name>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeTool_Name)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ChangeTool_Name> is deprecated: use rm_msgs-msg:ChangeTool_Name instead.")))

(cl:ensure-generic-function 'toolname-val :lambda-list '(m))
(cl:defmethod toolname-val ((m <ChangeTool_Name>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:toolname-val is deprecated.  Use rm_msgs-msg:toolname instead.")
  (toolname m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeTool_Name>) ostream)
  "Serializes a message object of type '<ChangeTool_Name>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'toolname))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'toolname))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeTool_Name>) istream)
  "Deserializes a message object of type '<ChangeTool_Name>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'toolname) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'toolname) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeTool_Name>)))
  "Returns string type for a message object of type '<ChangeTool_Name>"
  "rm_msgs/ChangeTool_Name")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeTool_Name)))
  "Returns string type for a message object of type 'ChangeTool_Name"
  "rm_msgs/ChangeTool_Name")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeTool_Name>)))
  "Returns md5sum for a message object of type '<ChangeTool_Name>"
  "2709e8bad159c90e287065a72644b48d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeTool_Name)))
  "Returns md5sum for a message object of type 'ChangeTool_Name"
  "2709e8bad159c90e287065a72644b48d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeTool_Name>)))
  "Returns full string definition for message of type '<ChangeTool_Name>"
  (cl:format cl:nil "string toolname~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeTool_Name)))
  "Returns full string definition for message of type 'ChangeTool_Name"
  (cl:format cl:nil "string toolname~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeTool_Name>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'toolname))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeTool_Name>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeTool_Name
    (cl:cons ':toolname (toolname msg))
))
