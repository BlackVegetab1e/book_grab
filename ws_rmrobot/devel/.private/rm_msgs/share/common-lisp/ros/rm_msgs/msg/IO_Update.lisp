; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude IO_Update.msg.html

(cl:defclass <IO_Update> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass IO_Update (<IO_Update>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IO_Update>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IO_Update)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<IO_Update> is deprecated: use rm_msgs-msg:IO_Update instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <IO_Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:type-val is deprecated.  Use rm_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IO_Update>) ostream)
  "Serializes a message object of type '<IO_Update>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IO_Update>) istream)
  "Deserializes a message object of type '<IO_Update>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IO_Update>)))
  "Returns string type for a message object of type '<IO_Update>"
  "rm_msgs/IO_Update")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IO_Update)))
  "Returns string type for a message object of type 'IO_Update"
  "rm_msgs/IO_Update")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IO_Update>)))
  "Returns md5sum for a message object of type '<IO_Update>"
  "3958533281df6e9cc0a725a386f3b5df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IO_Update)))
  "Returns md5sum for a message object of type 'IO_Update"
  "3958533281df6e9cc0a725a386f3b5df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IO_Update>)))
  "Returns full string definition for message of type '<IO_Update>"
  (cl:format cl:nil "uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IO_Update)))
  "Returns full string definition for message of type 'IO_Update"
  (cl:format cl:nil "uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IO_Update>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IO_Update>))
  "Converts a ROS message object to a list"
  (cl:list 'IO_Update
    (cl:cons ':type (type msg))
))
