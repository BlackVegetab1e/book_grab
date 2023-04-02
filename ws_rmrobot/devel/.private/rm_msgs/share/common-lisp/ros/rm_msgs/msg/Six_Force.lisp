; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Six_Force.msg.html

(cl:defclass <Six_Force> (roslisp-msg-protocol:ros-message)
  ((force
    :reader force
    :initarg :force
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Six_Force (<Six_Force>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Six_Force>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Six_Force)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Six_Force> is deprecated: use rm_msgs-msg:Six_Force instead.")))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <Six_Force>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:force-val is deprecated.  Use rm_msgs-msg:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Six_Force>) ostream)
  "Serializes a message object of type '<Six_Force>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'force))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Six_Force>) istream)
  "Deserializes a message object of type '<Six_Force>"
  (cl:setf (cl:slot-value msg 'force) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'force)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Six_Force>)))
  "Returns string type for a message object of type '<Six_Force>"
  "rm_msgs/Six_Force")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Six_Force)))
  "Returns string type for a message object of type 'Six_Force"
  "rm_msgs/Six_Force")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Six_Force>)))
  "Returns md5sum for a message object of type '<Six_Force>"
  "dfd1d6e819d24bd888c7dcd848ca7122")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Six_Force)))
  "Returns md5sum for a message object of type 'Six_Force"
  "dfd1d6e819d24bd888c7dcd848ca7122")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Six_Force>)))
  "Returns full string definition for message of type '<Six_Force>"
  (cl:format cl:nil "float32[6] force~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Six_Force)))
  "Returns full string definition for message of type 'Six_Force"
  (cl:format cl:nil "float32[6] force~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Six_Force>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'force) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Six_Force>))
  "Converts a ROS message object to a list"
  (cl:list 'Six_Force
    (cl:cons ':force (force msg))
))
