; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Joint_Teach.msg.html

(cl:defclass <Joint_Teach> (roslisp-msg-protocol:ros-message)
  ((teach_joint
    :reader teach_joint
    :initarg :teach_joint
    :type cl:fixnum
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform "")
   (v
    :reader v
    :initarg :v
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Joint_Teach (<Joint_Teach>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Joint_Teach>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Joint_Teach)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Joint_Teach> is deprecated: use rm_msgs-msg:Joint_Teach instead.")))

(cl:ensure-generic-function 'teach_joint-val :lambda-list '(m))
(cl:defmethod teach_joint-val ((m <Joint_Teach>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:teach_joint-val is deprecated.  Use rm_msgs-msg:teach_joint instead.")
  (teach_joint m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <Joint_Teach>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:direction-val is deprecated.  Use rm_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <Joint_Teach>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:v-val is deprecated.  Use rm_msgs-msg:v instead.")
  (v m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Joint_Teach>) ostream)
  "Serializes a message object of type '<Joint_Teach>"
  (cl:let* ((signed (cl:slot-value msg 'teach_joint)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
  (cl:let* ((signed (cl:slot-value msg 'v)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Joint_Teach>) istream)
  "Deserializes a message object of type '<Joint_Teach>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'teach_joint) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'v) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Joint_Teach>)))
  "Returns string type for a message object of type '<Joint_Teach>"
  "rm_msgs/Joint_Teach")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Joint_Teach)))
  "Returns string type for a message object of type 'Joint_Teach"
  "rm_msgs/Joint_Teach")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Joint_Teach>)))
  "Returns md5sum for a message object of type '<Joint_Teach>"
  "60cfaf744f64f5ac1ac6f8d51dde58e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Joint_Teach)))
  "Returns md5sum for a message object of type 'Joint_Teach"
  "60cfaf744f64f5ac1ac6f8d51dde58e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Joint_Teach>)))
  "Returns full string definition for message of type '<Joint_Teach>"
  (cl:format cl:nil "int16 teach_joint~%string direction~%int16 v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Joint_Teach)))
  "Returns full string definition for message of type 'Joint_Teach"
  (cl:format cl:nil "int16 teach_joint~%string direction~%int16 v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Joint_Teach>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'direction))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Joint_Teach>))
  "Converts a ROS message object to a list"
  (cl:list 'Joint_Teach
    (cl:cons ':teach_joint (teach_joint msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':v (v msg))
))
