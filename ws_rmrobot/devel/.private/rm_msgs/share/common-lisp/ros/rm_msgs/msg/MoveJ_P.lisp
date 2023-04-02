; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude MoveJ_P.msg.html

(cl:defclass <MoveJ_P> (roslisp-msg-protocol:ros-message)
  ((Pose
    :reader Pose
    :initarg :Pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveJ_P (<MoveJ_P>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveJ_P>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveJ_P)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<MoveJ_P> is deprecated: use rm_msgs-msg:MoveJ_P instead.")))

(cl:ensure-generic-function 'Pose-val :lambda-list '(m))
(cl:defmethod Pose-val ((m <MoveJ_P>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:Pose-val is deprecated.  Use rm_msgs-msg:Pose instead.")
  (Pose m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MoveJ_P>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:speed-val is deprecated.  Use rm_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveJ_P>) ostream)
  "Serializes a message object of type '<MoveJ_P>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveJ_P>) istream)
  "Deserializes a message object of type '<MoveJ_P>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveJ_P>)))
  "Returns string type for a message object of type '<MoveJ_P>"
  "rm_msgs/MoveJ_P")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveJ_P)))
  "Returns string type for a message object of type 'MoveJ_P"
  "rm_msgs/MoveJ_P")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveJ_P>)))
  "Returns md5sum for a message object of type '<MoveJ_P>"
  "0bdc59c6a7f930de77636565f2d8ae52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveJ_P)))
  "Returns md5sum for a message object of type 'MoveJ_P"
  "0bdc59c6a7f930de77636565f2d8ae52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveJ_P>)))
  "Returns full string definition for message of type '<MoveJ_P>"
  (cl:format cl:nil "geometry_msgs/Pose Pose~%float32 speed~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveJ_P)))
  "Returns full string definition for message of type 'MoveJ_P"
  (cl:format cl:nil "geometry_msgs/Pose Pose~%float32 speed~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveJ_P>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Pose))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveJ_P>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveJ_P
    (cl:cons ':Pose (Pose msg))
    (cl:cons ':speed (speed msg))
))
