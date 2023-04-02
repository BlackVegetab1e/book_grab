; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Lift_Height.msg.html

(cl:defclass <Lift_Height> (roslisp-msg-protocol:ros-message)
  ((height
    :reader height
    :initarg :height
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Lift_Height (<Lift_Height>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lift_Height>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lift_Height)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Lift_Height> is deprecated: use rm_msgs-msg:Lift_Height instead.")))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <Lift_Height>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:height-val is deprecated.  Use rm_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Lift_Height>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:speed-val is deprecated.  Use rm_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lift_Height>) ostream)
  "Serializes a message object of type '<Lift_Height>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lift_Height>) istream)
  "Deserializes a message object of type '<Lift_Height>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lift_Height>)))
  "Returns string type for a message object of type '<Lift_Height>"
  "rm_msgs/Lift_Height")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lift_Height)))
  "Returns string type for a message object of type 'Lift_Height"
  "rm_msgs/Lift_Height")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lift_Height>)))
  "Returns md5sum for a message object of type '<Lift_Height>"
  "ce92ed992837df41fa85260a11a529b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lift_Height)))
  "Returns md5sum for a message object of type 'Lift_Height"
  "ce92ed992837df41fa85260a11a529b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lift_Height>)))
  "Returns full string definition for message of type '<Lift_Height>"
  (cl:format cl:nil "#升降机构运行到指定高度~%uint16 height        #目标高度，单位 mm，范围：0~~2600~%uint16 speed         #速度百分比，1~~100~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lift_Height)))
  "Returns full string definition for message of type 'Lift_Height"
  (cl:format cl:nil "#升降机构运行到指定高度~%uint16 height        #目标高度，单位 mm，范围：0~~2600~%uint16 speed         #速度百分比，1~~100~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lift_Height>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lift_Height>))
  "Converts a ROS message object to a list"
  (cl:list 'Lift_Height
    (cl:cons ':height (height msg))
    (cl:cons ':speed (speed msg))
))
