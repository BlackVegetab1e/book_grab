; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Hand_Posture.msg.html

(cl:defclass <Hand_Posture> (roslisp-msg-protocol:ros-message)
  ((posture_num
    :reader posture_num
    :initarg :posture_num
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Hand_Posture (<Hand_Posture>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Hand_Posture>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Hand_Posture)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Hand_Posture> is deprecated: use rm_msgs-msg:Hand_Posture instead.")))

(cl:ensure-generic-function 'posture_num-val :lambda-list '(m))
(cl:defmethod posture_num-val ((m <Hand_Posture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:posture_num-val is deprecated.  Use rm_msgs-msg:posture_num instead.")
  (posture_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Hand_Posture>) ostream)
  "Serializes a message object of type '<Hand_Posture>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'posture_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'posture_num)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Hand_Posture>) istream)
  "Deserializes a message object of type '<Hand_Posture>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'posture_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'posture_num)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Hand_Posture>)))
  "Returns string type for a message object of type '<Hand_Posture>"
  "rm_msgs/Hand_Posture")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Hand_Posture)))
  "Returns string type for a message object of type 'Hand_Posture"
  "rm_msgs/Hand_Posture")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Hand_Posture>)))
  "Returns md5sum for a message object of type '<Hand_Posture>"
  "86dfac3ab8ac2be02ec067def631c96c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Hand_Posture)))
  "Returns md5sum for a message object of type 'Hand_Posture"
  "86dfac3ab8ac2be02ec067def631c96c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Hand_Posture>)))
  "Returns full string definition for message of type '<Hand_Posture>"
  (cl:format cl:nil "#设置灵巧手手势~%uint16 posture_num         #预先保存在灵巧手内的手势序号，范围：1~~40~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Hand_Posture)))
  "Returns full string definition for message of type 'Hand_Posture"
  (cl:format cl:nil "#设置灵巧手手势~%uint16 posture_num         #预先保存在灵巧手内的手势序号，范围：1~~40~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Hand_Posture>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Hand_Posture>))
  "Converts a ROS message object to a list"
  (cl:list 'Hand_Posture
    (cl:cons ':posture_num (posture_num msg))
))
