; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Joint_Current.msg.html

(cl:defclass <Joint_Current> (roslisp-msg-protocol:ros-message)
  ((joint_current
    :reader joint_current
    :initarg :joint_current
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Joint_Current (<Joint_Current>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Joint_Current>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Joint_Current)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Joint_Current> is deprecated: use rm_msgs-msg:Joint_Current instead.")))

(cl:ensure-generic-function 'joint_current-val :lambda-list '(m))
(cl:defmethod joint_current-val ((m <Joint_Current>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joint_current-val is deprecated.  Use rm_msgs-msg:joint_current instead.")
  (joint_current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Joint_Current>) ostream)
  "Serializes a message object of type '<Joint_Current>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint_current))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Joint_Current>) istream)
  "Deserializes a message object of type '<Joint_Current>"
  (cl:setf (cl:slot-value msg 'joint_current) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'joint_current)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Joint_Current>)))
  "Returns string type for a message object of type '<Joint_Current>"
  "rm_msgs/Joint_Current")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Joint_Current)))
  "Returns string type for a message object of type 'Joint_Current"
  "rm_msgs/Joint_Current")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Joint_Current>)))
  "Returns md5sum for a message object of type '<Joint_Current>"
  "369b310bf518537d26269558081c8067")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Joint_Current)))
  "Returns md5sum for a message object of type 'Joint_Current"
  "369b310bf518537d26269558081c8067")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Joint_Current>)))
  "Returns full string definition for message of type '<Joint_Current>"
  (cl:format cl:nil "float32[6] joint_current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Joint_Current)))
  "Returns full string definition for message of type 'Joint_Current"
  (cl:format cl:nil "float32[6] joint_current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Joint_Current>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_current) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Joint_Current>))
  "Converts a ROS message object to a list"
  (cl:list 'Joint_Current
    (cl:cons ':joint_current (joint_current msg))
))
