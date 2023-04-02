; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Arm_Analog_Output.msg.html

(cl:defclass <Arm_Analog_Output> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:fixnum
    :initform 0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0))
)

(cl:defclass Arm_Analog_Output (<Arm_Analog_Output>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Arm_Analog_Output>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Arm_Analog_Output)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Arm_Analog_Output> is deprecated: use rm_msgs-msg:Arm_Analog_Output instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <Arm_Analog_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:num-val is deprecated.  Use rm_msgs-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <Arm_Analog_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:voltage-val is deprecated.  Use rm_msgs-msg:voltage instead.")
  (voltage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Arm_Analog_Output>) ostream)
  "Serializes a message object of type '<Arm_Analog_Output>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Arm_Analog_Output>) istream)
  "Deserializes a message object of type '<Arm_Analog_Output>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Arm_Analog_Output>)))
  "Returns string type for a message object of type '<Arm_Analog_Output>"
  "rm_msgs/Arm_Analog_Output")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm_Analog_Output)))
  "Returns string type for a message object of type 'Arm_Analog_Output"
  "rm_msgs/Arm_Analog_Output")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Arm_Analog_Output>)))
  "Returns md5sum for a message object of type '<Arm_Analog_Output>"
  "1daa7069f6c6dbf96541a8c8a3620c76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Arm_Analog_Output)))
  "Returns md5sum for a message object of type 'Arm_Analog_Output"
  "1daa7069f6c6dbf96541a8c8a3620c76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Arm_Analog_Output>)))
  "Returns full string definition for message of type '<Arm_Analog_Output>"
  (cl:format cl:nil "uint8 num~%float32 voltage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Arm_Analog_Output)))
  "Returns full string definition for message of type 'Arm_Analog_Output"
  (cl:format cl:nil "uint8 num~%float32 voltage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Arm_Analog_Output>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Arm_Analog_Output>))
  "Converts a ROS message object to a list"
  (cl:list 'Arm_Analog_Output
    (cl:cons ':num (num msg))
    (cl:cons ':voltage (voltage msg))
))
