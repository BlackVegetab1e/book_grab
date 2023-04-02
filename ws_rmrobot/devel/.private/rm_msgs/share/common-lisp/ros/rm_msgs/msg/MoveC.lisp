; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude MoveC.msg.html

(cl:defclass <MoveC> (roslisp-msg-protocol:ros-message)
  ((Mid_Pose
    :reader Mid_Pose
    :initarg :Mid_Pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (End_Pose
    :reader End_Pose
    :initarg :End_Pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveC (<MoveC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<MoveC> is deprecated: use rm_msgs-msg:MoveC instead.")))

(cl:ensure-generic-function 'Mid_Pose-val :lambda-list '(m))
(cl:defmethod Mid_Pose-val ((m <MoveC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:Mid_Pose-val is deprecated.  Use rm_msgs-msg:Mid_Pose instead.")
  (Mid_Pose m))

(cl:ensure-generic-function 'End_Pose-val :lambda-list '(m))
(cl:defmethod End_Pose-val ((m <MoveC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:End_Pose-val is deprecated.  Use rm_msgs-msg:End_Pose instead.")
  (End_Pose m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MoveC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:speed-val is deprecated.  Use rm_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveC>) ostream)
  "Serializes a message object of type '<MoveC>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Mid_Pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'End_Pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveC>) istream)
  "Deserializes a message object of type '<MoveC>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Mid_Pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'End_Pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveC>)))
  "Returns string type for a message object of type '<MoveC>"
  "rm_msgs/MoveC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveC)))
  "Returns string type for a message object of type 'MoveC"
  "rm_msgs/MoveC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveC>)))
  "Returns md5sum for a message object of type '<MoveC>"
  "6450bf023cd7a5f30a68c51718bc4f21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveC)))
  "Returns md5sum for a message object of type 'MoveC"
  "6450bf023cd7a5f30a68c51718bc4f21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveC>)))
  "Returns full string definition for message of type '<MoveC>"
  (cl:format cl:nil "geometry_msgs/Pose Mid_Pose~%geometry_msgs/Pose End_Pose~%float32 speed~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveC)))
  "Returns full string definition for message of type 'MoveC"
  (cl:format cl:nil "geometry_msgs/Pose Mid_Pose~%geometry_msgs/Pose End_Pose~%float32 speed~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveC>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Mid_Pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'End_Pose))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveC>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveC
    (cl:cons ':Mid_Pose (Mid_Pose msg))
    (cl:cons ':End_Pose (End_Pose msg))
    (cl:cons ':speed (speed msg))
))
