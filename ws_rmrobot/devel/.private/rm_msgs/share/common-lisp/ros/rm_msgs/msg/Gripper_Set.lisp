; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Gripper_Set.msg.html

(cl:defclass <Gripper_Set> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Gripper_Set (<Gripper_Set>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gripper_Set>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gripper_Set)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Gripper_Set> is deprecated: use rm_msgs-msg:Gripper_Set instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Gripper_Set>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:position-val is deprecated.  Use rm_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gripper_Set>) ostream)
  "Serializes a message object of type '<Gripper_Set>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gripper_Set>) istream)
  "Deserializes a message object of type '<Gripper_Set>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gripper_Set>)))
  "Returns string type for a message object of type '<Gripper_Set>"
  "rm_msgs/Gripper_Set")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gripper_Set)))
  "Returns string type for a message object of type 'Gripper_Set"
  "rm_msgs/Gripper_Set")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gripper_Set>)))
  "Returns md5sum for a message object of type '<Gripper_Set>"
  "e6fa9d1b49571c7fff8bae5e451e5e59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gripper_Set)))
  "Returns md5sum for a message object of type 'Gripper_Set"
  "e6fa9d1b49571c7fff8bae5e451e5e59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gripper_Set>)))
  "Returns full string definition for message of type '<Gripper_Set>"
  (cl:format cl:nil "#设置手爪到固定位置，手爪到位置后或者所受力超过阈值后停止~%uint16 position   #手爪目标位置，范围：1～1000,代表手爪开口度：0～70mm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gripper_Set)))
  "Returns full string definition for message of type 'Gripper_Set"
  (cl:format cl:nil "#设置手爪到固定位置，手爪到位置后或者所受力超过阈值后停止~%uint16 position   #手爪目标位置，范围：1～1000,代表手爪开口度：0～70mm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gripper_Set>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gripper_Set>))
  "Converts a ROS message object to a list"
  (cl:list 'Gripper_Set
    (cl:cons ':position (position msg))
))
