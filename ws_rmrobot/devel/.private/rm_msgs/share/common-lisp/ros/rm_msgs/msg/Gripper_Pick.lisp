; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Gripper_Pick.msg.html

(cl:defclass <Gripper_Pick> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (force
    :reader force
    :initarg :force
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Gripper_Pick (<Gripper_Pick>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gripper_Pick>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gripper_Pick)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Gripper_Pick> is deprecated: use rm_msgs-msg:Gripper_Pick instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Gripper_Pick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:speed-val is deprecated.  Use rm_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <Gripper_Pick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:force-val is deprecated.  Use rm_msgs-msg:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gripper_Pick>) ostream)
  "Serializes a message object of type '<Gripper_Pick>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'force)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'force)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gripper_Pick>) istream)
  "Deserializes a message object of type '<Gripper_Pick>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'force)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'force)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gripper_Pick>)))
  "Returns string type for a message object of type '<Gripper_Pick>"
  "rm_msgs/Gripper_Pick")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gripper_Pick)))
  "Returns string type for a message object of type 'Gripper_Pick"
  "rm_msgs/Gripper_Pick")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gripper_Pick>)))
  "Returns md5sum for a message object of type '<Gripper_Pick>"
  "bccee2d260af47427a90b0534ed4c5ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gripper_Pick)))
  "Returns md5sum for a message object of type 'Gripper_Pick"
  "bccee2d260af47427a90b0534ed4c5ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gripper_Pick>)))
  "Returns full string definition for message of type '<Gripper_Pick>"
  (cl:format cl:nil "#手爪以设定的速度力控夹取，当受力超过设定力后，停止运动~%uint16 speed         #1~~1000,代表手爪开合速度，无量纲~%uint16 force         #1～1000,代表手爪夹持力，最大1.5kg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gripper_Pick)))
  "Returns full string definition for message of type 'Gripper_Pick"
  (cl:format cl:nil "#手爪以设定的速度力控夹取，当受力超过设定力后，停止运动~%uint16 speed         #1~~1000,代表手爪开合速度，无量纲~%uint16 force         #1～1000,代表手爪夹持力，最大1.5kg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gripper_Pick>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gripper_Pick>))
  "Converts a ROS message object to a list"
  (cl:list 'Gripper_Pick
    (cl:cons ':speed (speed msg))
    (cl:cons ':force (force msg))
))
