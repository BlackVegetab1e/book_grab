; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Arm_Digital_Output.msg.html

(cl:defclass <Arm_Digital_Output> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Arm_Digital_Output (<Arm_Digital_Output>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Arm_Digital_Output>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Arm_Digital_Output)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Arm_Digital_Output> is deprecated: use rm_msgs-msg:Arm_Digital_Output instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <Arm_Digital_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:num-val is deprecated.  Use rm_msgs-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Arm_Digital_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:state-val is deprecated.  Use rm_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Arm_Digital_Output>) ostream)
  "Serializes a message object of type '<Arm_Digital_Output>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Arm_Digital_Output>) istream)
  "Deserializes a message object of type '<Arm_Digital_Output>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Arm_Digital_Output>)))
  "Returns string type for a message object of type '<Arm_Digital_Output>"
  "rm_msgs/Arm_Digital_Output")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm_Digital_Output)))
  "Returns string type for a message object of type 'Arm_Digital_Output"
  "rm_msgs/Arm_Digital_Output")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Arm_Digital_Output>)))
  "Returns md5sum for a message object of type '<Arm_Digital_Output>"
  "65c6f886a7277e2391d226ec90152e72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Arm_Digital_Output)))
  "Returns md5sum for a message object of type 'Arm_Digital_Output"
  "65c6f886a7277e2391d226ec90152e72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Arm_Digital_Output>)))
  "Returns full string definition for message of type '<Arm_Digital_Output>"
  (cl:format cl:nil "uint8 num~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Arm_Digital_Output)))
  "Returns full string definition for message of type 'Arm_Digital_Output"
  (cl:format cl:nil "uint8 num~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Arm_Digital_Output>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Arm_Digital_Output>))
  "Converts a ROS message object to a list"
  (cl:list 'Arm_Digital_Output
    (cl:cons ':num (num msg))
    (cl:cons ':state (state msg))
))
