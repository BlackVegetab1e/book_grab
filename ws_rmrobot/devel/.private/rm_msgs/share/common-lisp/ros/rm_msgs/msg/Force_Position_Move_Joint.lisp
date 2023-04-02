; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Force_Position_Move_Joint.msg.html

(cl:defclass <Force_Position_Move_Joint> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
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

(cl:defclass Force_Position_Move_Joint (<Force_Position_Move_Joint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Force_Position_Move_Joint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Force_Position_Move_Joint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Force_Position_Move_Joint> is deprecated: use rm_msgs-msg:Force_Position_Move_Joint instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <Force_Position_Move_Joint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joint-val is deprecated.  Use rm_msgs-msg:joint instead.")
  (joint m))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <Force_Position_Move_Joint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sensor-val is deprecated.  Use rm_msgs-msg:sensor instead.")
  (sensor m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Force_Position_Move_Joint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mode-val is deprecated.  Use rm_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'dir-val :lambda-list '(m))
(cl:defmethod dir-val ((m <Force_Position_Move_Joint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:dir-val is deprecated.  Use rm_msgs-msg:dir instead.")
  (dir m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <Force_Position_Move_Joint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:force-val is deprecated.  Use rm_msgs-msg:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Force_Position_Move_Joint>) ostream)
  "Serializes a message object of type '<Force_Position_Move_Joint>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dir)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'force)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Force_Position_Move_Joint>) istream)
  "Deserializes a message object of type '<Force_Position_Move_Joint>"
  (cl:setf (cl:slot-value msg 'joint) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'joint)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dir)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'force) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Force_Position_Move_Joint>)))
  "Returns string type for a message object of type '<Force_Position_Move_Joint>"
  "rm_msgs/Force_Position_Move_Joint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Force_Position_Move_Joint)))
  "Returns string type for a message object of type 'Force_Position_Move_Joint"
  "rm_msgs/Force_Position_Move_Joint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Force_Position_Move_Joint>)))
  "Returns md5sum for a message object of type '<Force_Position_Move_Joint>"
  "289142d2c6dc6949e95e7d291c27112f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Force_Position_Move_Joint)))
  "Returns md5sum for a message object of type 'Force_Position_Move_Joint"
  "289142d2c6dc6949e95e7d291c27112f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Force_Position_Move_Joint>)))
  "Returns full string definition for message of type '<Force_Position_Move_Joint>"
  (cl:format cl:nil "float32[6] joint~%uint8 sensor~%uint8 mode~%uint8 dir~%int16 force~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Force_Position_Move_Joint)))
  "Returns full string definition for message of type 'Force_Position_Move_Joint"
  (cl:format cl:nil "float32[6] joint~%uint8 sensor~%uint8 mode~%uint8 dir~%int16 force~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Force_Position_Move_Joint>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Force_Position_Move_Joint>))
  "Converts a ROS message object to a list"
  (cl:list 'Force_Position_Move_Joint
    (cl:cons ':joint (joint msg))
    (cl:cons ':sensor (sensor msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':dir (dir msg))
    (cl:cons ':force (force msg))
))
