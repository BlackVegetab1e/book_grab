; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Force_Position_State.msg.html

(cl:defclass <Force_Position_State> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (force
    :reader force
    :initarg :force
    :type cl:float
    :initform 0.0)
   (arm_err
    :reader arm_err
    :initarg :arm_err
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Force_Position_State (<Force_Position_State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Force_Position_State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Force_Position_State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Force_Position_State> is deprecated: use rm_msgs-msg:Force_Position_State instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <Force_Position_State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joint-val is deprecated.  Use rm_msgs-msg:joint instead.")
  (joint m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <Force_Position_State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:force-val is deprecated.  Use rm_msgs-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'arm_err-val :lambda-list '(m))
(cl:defmethod arm_err-val ((m <Force_Position_State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:arm_err-val is deprecated.  Use rm_msgs-msg:arm_err instead.")
  (arm_err m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Force_Position_State>) ostream)
  "Serializes a message object of type '<Force_Position_State>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arm_err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'arm_err)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Force_Position_State>) istream)
  "Deserializes a message object of type '<Force_Position_State>"
  (cl:setf (cl:slot-value msg 'joint) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'joint)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arm_err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'arm_err)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Force_Position_State>)))
  "Returns string type for a message object of type '<Force_Position_State>"
  "rm_msgs/Force_Position_State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Force_Position_State)))
  "Returns string type for a message object of type 'Force_Position_State"
  "rm_msgs/Force_Position_State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Force_Position_State>)))
  "Returns md5sum for a message object of type '<Force_Position_State>"
  "3dfce38cb0562062290b24383d516d1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Force_Position_State)))
  "Returns md5sum for a message object of type 'Force_Position_State"
  "3dfce38cb0562062290b24383d516d1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Force_Position_State>)))
  "Returns full string definition for message of type '<Force_Position_State>"
  (cl:format cl:nil "float32[6] joint~%float32 force~%uint16 arm_err~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Force_Position_State)))
  "Returns full string definition for message of type 'Force_Position_State"
  (cl:format cl:nil "float32[6] joint~%float32 force~%uint16 arm_err~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Force_Position_State>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Force_Position_State>))
  "Converts a ROS message object to a list"
  (cl:list 'Force_Position_State
    (cl:cons ':joint (joint msg))
    (cl:cons ':force (force msg))
    (cl:cons ':arm_err (arm_err msg))
))
