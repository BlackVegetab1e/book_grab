; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Arm_Current_State.msg.html

(cl:defclass <Arm_Current_State> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (Pose
    :reader Pose
    :initarg :Pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
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

(cl:defclass Arm_Current_State (<Arm_Current_State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Arm_Current_State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Arm_Current_State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Arm_Current_State> is deprecated: use rm_msgs-msg:Arm_Current_State instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <Arm_Current_State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joint-val is deprecated.  Use rm_msgs-msg:joint instead.")
  (joint m))

(cl:ensure-generic-function 'Pose-val :lambda-list '(m))
(cl:defmethod Pose-val ((m <Arm_Current_State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:Pose-val is deprecated.  Use rm_msgs-msg:Pose instead.")
  (Pose m))

(cl:ensure-generic-function 'arm_err-val :lambda-list '(m))
(cl:defmethod arm_err-val ((m <Arm_Current_State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:arm_err-val is deprecated.  Use rm_msgs-msg:arm_err instead.")
  (arm_err m))

(cl:ensure-generic-function 'sys_err-val :lambda-list '(m))
(cl:defmethod sys_err-val ((m <Arm_Current_State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sys_err-val is deprecated.  Use rm_msgs-msg:sys_err instead.")
  (sys_err m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Arm_Current_State>) ostream)
  "Serializes a message object of type '<Arm_Current_State>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'Pose))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arm_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'arm_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sys_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sys_err)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Arm_Current_State>) istream)
  "Deserializes a message object of type '<Arm_Current_State>"
  (cl:setf (cl:slot-value msg 'joint) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'joint)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'Pose) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'Pose)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arm_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'arm_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sys_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sys_err)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Arm_Current_State>)))
  "Returns string type for a message object of type '<Arm_Current_State>"
  "rm_msgs/Arm_Current_State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm_Current_State)))
  "Returns string type for a message object of type 'Arm_Current_State"
  "rm_msgs/Arm_Current_State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Arm_Current_State>)))
  "Returns md5sum for a message object of type '<Arm_Current_State>"
  "42a09082c0b59ceb3d0516bf8bf50e90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Arm_Current_State)))
  "Returns md5sum for a message object of type 'Arm_Current_State"
  "42a09082c0b59ceb3d0516bf8bf50e90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Arm_Current_State>)))
  "Returns full string definition for message of type '<Arm_Current_State>"
  (cl:format cl:nil "float32[6] joint~%float32[6] Pose~%uint16 arm_err~%uint16 sys_err~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Arm_Current_State)))
  "Returns full string definition for message of type 'Arm_Current_State"
  (cl:format cl:nil "float32[6] joint~%float32[6] Pose~%uint16 arm_err~%uint16 sys_err~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Arm_Current_State>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'Pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Arm_Current_State>))
  "Converts a ROS message object to a list"
  (cl:list 'Arm_Current_State
    (cl:cons ':joint (joint msg))
    (cl:cons ':Pose (Pose msg))
    (cl:cons ':arm_err (arm_err msg))
    (cl:cons ':sys_err (sys_err msg))
))
