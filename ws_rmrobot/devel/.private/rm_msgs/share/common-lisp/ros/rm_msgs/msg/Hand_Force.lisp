; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Hand_Force.msg.html

(cl:defclass <Hand_Force> (roslisp-msg-protocol:ros-message)
  ((hand_force
    :reader hand_force
    :initarg :hand_force
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Hand_Force (<Hand_Force>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Hand_Force>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Hand_Force)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Hand_Force> is deprecated: use rm_msgs-msg:Hand_Force instead.")))

(cl:ensure-generic-function 'hand_force-val :lambda-list '(m))
(cl:defmethod hand_force-val ((m <Hand_Force>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hand_force-val is deprecated.  Use rm_msgs-msg:hand_force instead.")
  (hand_force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Hand_Force>) ostream)
  "Serializes a message object of type '<Hand_Force>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_force)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hand_force)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Hand_Force>) istream)
  "Deserializes a message object of type '<Hand_Force>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_force)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hand_force)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Hand_Force>)))
  "Returns string type for a message object of type '<Hand_Force>"
  "rm_msgs/Hand_Force")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Hand_Force)))
  "Returns string type for a message object of type 'Hand_Force"
  "rm_msgs/Hand_Force")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Hand_Force>)))
  "Returns md5sum for a message object of type '<Hand_Force>"
  "9b910d20d2c9bd5f156199fd98e2fdc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Hand_Force)))
  "Returns md5sum for a message object of type 'Hand_Force"
  "9b910d20d2c9bd5f156199fd98e2fdc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Hand_Force>)))
  "Returns full string definition for message of type '<Hand_Force>"
  (cl:format cl:nil "#设置灵巧手关节力阈值~%uint16 hand_force         #手指力，范围：1~~1000~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Hand_Force)))
  "Returns full string definition for message of type 'Hand_Force"
  (cl:format cl:nil "#设置灵巧手关节力阈值~%uint16 hand_force         #手指力，范围：1~~1000~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Hand_Force>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Hand_Force>))
  "Converts a ROS message object to a list"
  (cl:list 'Hand_Force
    (cl:cons ':hand_force (hand_force msg))
))
