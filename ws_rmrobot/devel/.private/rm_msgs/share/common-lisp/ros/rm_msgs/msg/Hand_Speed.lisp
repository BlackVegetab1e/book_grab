; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Hand_Speed.msg.html

(cl:defclass <Hand_Speed> (roslisp-msg-protocol:ros-message)
  ((hand_speed
    :reader hand_speed
    :initarg :hand_speed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Hand_Speed (<Hand_Speed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Hand_Speed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Hand_Speed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Hand_Speed> is deprecated: use rm_msgs-msg:Hand_Speed instead.")))

(cl:ensure-generic-function 'hand_speed-val :lambda-list '(m))
(cl:defmethod hand_speed-val ((m <Hand_Speed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hand_speed-val is deprecated.  Use rm_msgs-msg:hand_speed instead.")
  (hand_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Hand_Speed>) ostream)
  "Serializes a message object of type '<Hand_Speed>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hand_speed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Hand_Speed>) istream)
  "Deserializes a message object of type '<Hand_Speed>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hand_speed)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Hand_Speed>)))
  "Returns string type for a message object of type '<Hand_Speed>"
  "rm_msgs/Hand_Speed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Hand_Speed)))
  "Returns string type for a message object of type 'Hand_Speed"
  "rm_msgs/Hand_Speed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Hand_Speed>)))
  "Returns md5sum for a message object of type '<Hand_Speed>"
  "2c60da357dfc1989f0a4de469bbeae28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Hand_Speed)))
  "Returns md5sum for a message object of type 'Hand_Speed"
  "2c60da357dfc1989f0a4de469bbeae28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Hand_Speed>)))
  "Returns full string definition for message of type '<Hand_Speed>"
  (cl:format cl:nil "#设置灵巧手关节速度~%uint16 hand_speed         #手指速度，范围：1~~1000~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Hand_Speed)))
  "Returns full string definition for message of type 'Hand_Speed"
  (cl:format cl:nil "#设置灵巧手关节速度~%uint16 hand_speed         #手指速度，范围：1~~1000~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Hand_Speed>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Hand_Speed>))
  "Converts a ROS message object to a list"
  (cl:list 'Hand_Speed
    (cl:cons ':hand_speed (hand_speed msg))
))
