; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude CartePos.msg.html

(cl:defclass <CartePos> (roslisp-msg-protocol:ros-message)
  ((Pose
    :reader Pose
    :initarg :Pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass CartePos (<CartePos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartePos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartePos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<CartePos> is deprecated: use rm_msgs-msg:CartePos instead.")))

(cl:ensure-generic-function 'Pose-val :lambda-list '(m))
(cl:defmethod Pose-val ((m <CartePos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:Pose-val is deprecated.  Use rm_msgs-msg:Pose instead.")
  (Pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartePos>) ostream)
  "Serializes a message object of type '<CartePos>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartePos>) istream)
  "Deserializes a message object of type '<CartePos>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartePos>)))
  "Returns string type for a message object of type '<CartePos>"
  "rm_msgs/CartePos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartePos)))
  "Returns string type for a message object of type 'CartePos"
  "rm_msgs/CartePos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartePos>)))
  "Returns md5sum for a message object of type '<CartePos>"
  "db774e2f8d3bbd66cc277b8a8ce62817")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartePos)))
  "Returns md5sum for a message object of type 'CartePos"
  "db774e2f8d3bbd66cc277b8a8ce62817")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartePos>)))
  "Returns full string definition for message of type '<CartePos>"
  (cl:format cl:nil "geometry_msgs/Pose Pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartePos)))
  "Returns full string definition for message of type 'CartePos"
  (cl:format cl:nil "geometry_msgs/Pose Pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartePos>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartePos>))
  "Converts a ROS message object to a list"
  (cl:list 'CartePos
    (cl:cons ':Pose (Pose msg))
))
