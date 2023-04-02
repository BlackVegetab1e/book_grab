; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Hand_Seq.msg.html

(cl:defclass <Hand_Seq> (roslisp-msg-protocol:ros-message)
  ((seq_num
    :reader seq_num
    :initarg :seq_num
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Hand_Seq (<Hand_Seq>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Hand_Seq>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Hand_Seq)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Hand_Seq> is deprecated: use rm_msgs-msg:Hand_Seq instead.")))

(cl:ensure-generic-function 'seq_num-val :lambda-list '(m))
(cl:defmethod seq_num-val ((m <Hand_Seq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:seq_num-val is deprecated.  Use rm_msgs-msg:seq_num instead.")
  (seq_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Hand_Seq>) ostream)
  "Serializes a message object of type '<Hand_Seq>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq_num)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Hand_Seq>) istream)
  "Deserializes a message object of type '<Hand_Seq>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq_num)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Hand_Seq>)))
  "Returns string type for a message object of type '<Hand_Seq>"
  "rm_msgs/Hand_Seq")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Hand_Seq)))
  "Returns string type for a message object of type 'Hand_Seq"
  "rm_msgs/Hand_Seq")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Hand_Seq>)))
  "Returns md5sum for a message object of type '<Hand_Seq>"
  "278fab2dc396c27b061e225e520f4d8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Hand_Seq)))
  "Returns md5sum for a message object of type 'Hand_Seq"
  "278fab2dc396c27b061e225e520f4d8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Hand_Seq>)))
  "Returns full string definition for message of type '<Hand_Seq>"
  (cl:format cl:nil "#设置灵巧手动作序列~%uint16 seq_num         #预先保存在灵巧手内的序列序号，范围：1~~40~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Hand_Seq)))
  "Returns full string definition for message of type 'Hand_Seq"
  (cl:format cl:nil "#设置灵巧手动作序列~%uint16 seq_num         #预先保存在灵巧手内的序列序号，范围：1~~40~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Hand_Seq>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Hand_Seq>))
  "Converts a ROS message object to a list"
  (cl:list 'Hand_Seq
    (cl:cons ':seq_num (seq_num msg))
))
