; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Lift_Speed.msg.html

(cl:defclass <Lift_Speed> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Lift_Speed (<Lift_Speed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lift_Speed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lift_Speed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Lift_Speed> is deprecated: use rm_msgs-msg:Lift_Speed instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Lift_Speed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:speed-val is deprecated.  Use rm_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lift_Speed>) ostream)
  "Serializes a message object of type '<Lift_Speed>"
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lift_Speed>) istream)
  "Deserializes a message object of type '<Lift_Speed>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lift_Speed>)))
  "Returns string type for a message object of type '<Lift_Speed>"
  "rm_msgs/Lift_Speed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lift_Speed)))
  "Returns string type for a message object of type 'Lift_Speed"
  "rm_msgs/Lift_Speed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lift_Speed>)))
  "Returns md5sum for a message object of type '<Lift_Speed>"
  "368a599b530468ee137b04eea511a3ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lift_Speed)))
  "Returns md5sum for a message object of type 'Lift_Speed"
  "368a599b530468ee137b04eea511a3ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lift_Speed>)))
  "Returns full string definition for message of type '<Lift_Speed>"
  (cl:format cl:nil "#升降机构速度开环控制~%#Speed < 0:升降机构向下运动~%#Speed > 0:升降机构向上运动~%#Speed = 0:升降机构停止运动~%int16 speed         #速度百分比，-100~~100~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lift_Speed)))
  "Returns full string definition for message of type 'Lift_Speed"
  (cl:format cl:nil "#升降机构速度开环控制~%#Speed < 0:升降机构向下运动~%#Speed > 0:升降机构向上运动~%#Speed = 0:升降机构停止运动~%int16 speed         #速度百分比，-100~~100~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lift_Speed>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lift_Speed>))
  "Converts a ROS message object to a list"
  (cl:list 'Lift_Speed
    (cl:cons ':speed (speed msg))
))
