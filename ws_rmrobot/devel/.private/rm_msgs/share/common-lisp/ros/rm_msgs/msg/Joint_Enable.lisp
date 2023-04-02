; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Joint_Enable.msg.html

(cl:defclass <Joint_Enable> (roslisp-msg-protocol:ros-message)
  ((joint_num
    :reader joint_num
    :initarg :joint_num
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Joint_Enable (<Joint_Enable>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Joint_Enable>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Joint_Enable)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Joint_Enable> is deprecated: use rm_msgs-msg:Joint_Enable instead.")))

(cl:ensure-generic-function 'joint_num-val :lambda-list '(m))
(cl:defmethod joint_num-val ((m <Joint_Enable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joint_num-val is deprecated.  Use rm_msgs-msg:joint_num instead.")
  (joint_num m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Joint_Enable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:state-val is deprecated.  Use rm_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Joint_Enable>) ostream)
  "Serializes a message object of type '<Joint_Enable>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joint_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Joint_Enable>) istream)
  "Deserializes a message object of type '<Joint_Enable>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joint_num)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Joint_Enable>)))
  "Returns string type for a message object of type '<Joint_Enable>"
  "rm_msgs/Joint_Enable")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Joint_Enable)))
  "Returns string type for a message object of type 'Joint_Enable"
  "rm_msgs/Joint_Enable")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Joint_Enable>)))
  "Returns md5sum for a message object of type '<Joint_Enable>"
  "ab2d35ff908d2a87842afeb3b5107389")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Joint_Enable)))
  "Returns md5sum for a message object of type 'Joint_Enable"
  "ab2d35ff908d2a87842afeb3b5107389")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Joint_Enable>)))
  "Returns full string definition for message of type '<Joint_Enable>"
  (cl:format cl:nil "#对指定关节进行使能操作~%uint8 joint_num     #对应关节序号，从基座到机械臂手爪端，序号依次为1～6~%bool state          #true-上使能，false-掉使能~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Joint_Enable)))
  "Returns full string definition for message of type 'Joint_Enable"
  (cl:format cl:nil "#对指定关节进行使能操作~%uint8 joint_num     #对应关节序号，从基座到机械臂手爪端，序号依次为1～6~%bool state          #true-上使能，false-掉使能~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Joint_Enable>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Joint_Enable>))
  "Converts a ROS message object to a list"
  (cl:list 'Joint_Enable
    (cl:cons ':joint_num (joint_num msg))
    (cl:cons ':state (state msg))
))
