; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ArmState.msg.html

(cl:defclass <ArmState> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (Pose
    :reader Pose
    :initarg :Pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (arm_err
    :reader arm_err
    :initarg :arm_err
    :type cl:fixnum
    :initform 0)
   (sys_err
    :reader sys_err
    :initarg :sys_err
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ArmState (<ArmState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ArmState> is deprecated: use rm_msgs-msg:ArmState instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <ArmState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joint-val is deprecated.  Use rm_msgs-msg:joint instead.")
  (joint m))

(cl:ensure-generic-function 'Pose-val :lambda-list '(m))
(cl:defmethod Pose-val ((m <ArmState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:Pose-val is deprecated.  Use rm_msgs-msg:Pose instead.")
  (Pose m))

(cl:ensure-generic-function 'arm_err-val :lambda-list '(m))
(cl:defmethod arm_err-val ((m <ArmState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:arm_err-val is deprecated.  Use rm_msgs-msg:arm_err instead.")
  (arm_err m))

(cl:ensure-generic-function 'sys_err-val :lambda-list '(m))
(cl:defmethod sys_err-val ((m <ArmState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sys_err-val is deprecated.  Use rm_msgs-msg:sys_err instead.")
  (sys_err m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmState>) ostream)
  "Serializes a message object of type '<ArmState>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arm_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'arm_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sys_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sys_err)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmState>) istream)
  "Deserializes a message object of type '<ArmState>"
  (cl:setf (cl:slot-value msg 'joint) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'joint)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arm_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'arm_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sys_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sys_err)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmState>)))
  "Returns string type for a message object of type '<ArmState>"
  "rm_msgs/ArmState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmState)))
  "Returns string type for a message object of type 'ArmState"
  "rm_msgs/ArmState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmState>)))
  "Returns md5sum for a message object of type '<ArmState>"
  "a5a77ad1525ad39c09016c8aea0c863f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmState)))
  "Returns md5sum for a message object of type 'ArmState"
  "a5a77ad1525ad39c09016c8aea0c863f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmState>)))
  "Returns full string definition for message of type '<ArmState>"
  (cl:format cl:nil "float32[6] joint~%geometry_msgs/Pose Pose~%uint16 arm_err~%uint16 sys_err~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmState)))
  "Returns full string definition for message of type 'ArmState"
  (cl:format cl:nil "float32[6] joint~%geometry_msgs/Pose Pose~%uint16 arm_err~%uint16 sys_err~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmState>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Pose))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmState>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmState
    (cl:cons ':joint (joint msg))
    (cl:cons ':Pose (Pose msg))
    (cl:cons ':arm_err (arm_err msg))
    (cl:cons ':sys_err (sys_err msg))
))
