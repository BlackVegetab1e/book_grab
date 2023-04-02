; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Start_Multi_Drag_Teach.msg.html

(cl:defclass <Start_Multi_Drag_Teach> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Start_Multi_Drag_Teach (<Start_Multi_Drag_Teach>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Start_Multi_Drag_Teach>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Start_Multi_Drag_Teach)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Start_Multi_Drag_Teach> is deprecated: use rm_msgs-msg:Start_Multi_Drag_Teach instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Start_Multi_Drag_Teach>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mode-val is deprecated.  Use rm_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Start_Multi_Drag_Teach>) ostream)
  "Serializes a message object of type '<Start_Multi_Drag_Teach>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Start_Multi_Drag_Teach>) istream)
  "Deserializes a message object of type '<Start_Multi_Drag_Teach>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Start_Multi_Drag_Teach>)))
  "Returns string type for a message object of type '<Start_Multi_Drag_Teach>"
  "rm_msgs/Start_Multi_Drag_Teach")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Start_Multi_Drag_Teach)))
  "Returns string type for a message object of type 'Start_Multi_Drag_Teach"
  "rm_msgs/Start_Multi_Drag_Teach")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Start_Multi_Drag_Teach>)))
  "Returns md5sum for a message object of type '<Start_Multi_Drag_Teach>"
  "89b81386720be1cd0ce7a3953fcd1b19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Start_Multi_Drag_Teach)))
  "Returns md5sum for a message object of type 'Start_Multi_Drag_Teach"
  "89b81386720be1cd0ce7a3953fcd1b19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Start_Multi_Drag_Teach>)))
  "Returns full string definition for message of type '<Start_Multi_Drag_Teach>"
  (cl:format cl:nil "uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Start_Multi_Drag_Teach)))
  "Returns full string definition for message of type 'Start_Multi_Drag_Teach"
  (cl:format cl:nil "uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Start_Multi_Drag_Teach>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Start_Multi_Drag_Teach>))
  "Converts a ROS message object to a list"
  (cl:list 'Start_Multi_Drag_Teach
    (cl:cons ':mode (mode msg))
))
