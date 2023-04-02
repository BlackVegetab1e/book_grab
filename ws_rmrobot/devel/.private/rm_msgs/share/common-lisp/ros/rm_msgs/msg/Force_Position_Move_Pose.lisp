; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Force_Position_Move_Pose.msg.html

(cl:defclass <Force_Position_Move_Pose> (roslisp-msg-protocol:ros-message)
  ((Pose
    :reader Pose
    :initarg :Pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (sensor
    :reader sensor
    :initarg :sensor
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (dir
    :reader dir
    :initarg :dir
    :type cl:fixnum
    :initform 0)
   (force
    :reader force
    :initarg :force
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Force_Position_Move_Pose (<Force_Position_Move_Pose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Force_Position_Move_Pose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Force_Position_Move_Pose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Force_Position_Move_Pose> is deprecated: use rm_msgs-msg:Force_Position_Move_Pose instead.")))

(cl:ensure-generic-function 'Pose-val :lambda-list '(m))
(cl:defmethod Pose-val ((m <Force_Position_Move_Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:Pose-val is deprecated.  Use rm_msgs-msg:Pose instead.")
  (Pose m))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <Force_Position_Move_Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sensor-val is deprecated.  Use rm_msgs-msg:sensor instead.")
  (sensor m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Force_Position_Move_Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mode-val is deprecated.  Use rm_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'dir-val :lambda-list '(m))
(cl:defmethod dir-val ((m <Force_Position_Move_Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:dir-val is deprecated.  Use rm_msgs-msg:dir instead.")
  (dir m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <Force_Position_Move_Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:force-val is deprecated.  Use rm_msgs-msg:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Force_Position_Move_Pose>) ostream)
  "Serializes a message object of type '<Force_Position_Move_Pose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dir)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'force)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Force_Position_Move_Pose>) istream)
  "Deserializes a message object of type '<Force_Position_Move_Pose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dir)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'force) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Force_Position_Move_Pose>)))
  "Returns string type for a message object of type '<Force_Position_Move_Pose>"
  "rm_msgs/Force_Position_Move_Pose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Force_Position_Move_Pose)))
  "Returns string type for a message object of type 'Force_Position_Move_Pose"
  "rm_msgs/Force_Position_Move_Pose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Force_Position_Move_Pose>)))
  "Returns md5sum for a message object of type '<Force_Position_Move_Pose>"
  "d767ae12238c9954eb73a3ce727611a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Force_Position_Move_Pose)))
  "Returns md5sum for a message object of type 'Force_Position_Move_Pose"
  "d767ae12238c9954eb73a3ce727611a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Force_Position_Move_Pose>)))
  "Returns full string definition for message of type '<Force_Position_Move_Pose>"
  (cl:format cl:nil "geometry_msgs/Pose Pose~%uint8 sensor~%uint8 mode~%uint8 dir~%int16 force~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Force_Position_Move_Pose)))
  "Returns full string definition for message of type 'Force_Position_Move_Pose"
  (cl:format cl:nil "geometry_msgs/Pose Pose~%uint8 sensor~%uint8 mode~%uint8 dir~%int16 force~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Force_Position_Move_Pose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Pose))
     1
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Force_Position_Move_Pose>))
  "Converts a ROS message object to a list"
  (cl:list 'Force_Position_Move_Pose
    (cl:cons ':Pose (Pose msg))
    (cl:cons ':sensor (sensor msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':dir (dir msg))
    (cl:cons ':force (force msg))
))
