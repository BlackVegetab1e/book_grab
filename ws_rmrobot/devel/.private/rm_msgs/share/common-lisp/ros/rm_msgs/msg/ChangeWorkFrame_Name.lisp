; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ChangeWorkFrame_Name.msg.html

(cl:defclass <ChangeWorkFrame_Name> (roslisp-msg-protocol:ros-message)
  ((WorkFrame_name
    :reader WorkFrame_name
    :initarg :WorkFrame_name
    :type cl:string
    :initform ""))
)

(cl:defclass ChangeWorkFrame_Name (<ChangeWorkFrame_Name>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeWorkFrame_Name>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeWorkFrame_Name)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ChangeWorkFrame_Name> is deprecated: use rm_msgs-msg:ChangeWorkFrame_Name instead.")))

(cl:ensure-generic-function 'WorkFrame_name-val :lambda-list '(m))
(cl:defmethod WorkFrame_name-val ((m <ChangeWorkFrame_Name>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:WorkFrame_name-val is deprecated.  Use rm_msgs-msg:WorkFrame_name instead.")
  (WorkFrame_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeWorkFrame_Name>) ostream)
  "Serializes a message object of type '<ChangeWorkFrame_Name>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'WorkFrame_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'WorkFrame_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeWorkFrame_Name>) istream)
  "Deserializes a message object of type '<ChangeWorkFrame_Name>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'WorkFrame_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'WorkFrame_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeWorkFrame_Name>)))
  "Returns string type for a message object of type '<ChangeWorkFrame_Name>"
  "rm_msgs/ChangeWorkFrame_Name")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeWorkFrame_Name)))
  "Returns string type for a message object of type 'ChangeWorkFrame_Name"
  "rm_msgs/ChangeWorkFrame_Name")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeWorkFrame_Name>)))
  "Returns md5sum for a message object of type '<ChangeWorkFrame_Name>"
  "58a6b74050d8d3918fe8554a7dbbb407")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeWorkFrame_Name)))
  "Returns md5sum for a message object of type 'ChangeWorkFrame_Name"
  "58a6b74050d8d3918fe8554a7dbbb407")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeWorkFrame_Name>)))
  "Returns full string definition for message of type '<ChangeWorkFrame_Name>"
  (cl:format cl:nil "string WorkFrame_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeWorkFrame_Name)))
  "Returns full string definition for message of type 'ChangeWorkFrame_Name"
  (cl:format cl:nil "string WorkFrame_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeWorkFrame_Name>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'WorkFrame_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeWorkFrame_Name>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeWorkFrame_Name
    (cl:cons ':WorkFrame_name (WorkFrame_name msg))
))
