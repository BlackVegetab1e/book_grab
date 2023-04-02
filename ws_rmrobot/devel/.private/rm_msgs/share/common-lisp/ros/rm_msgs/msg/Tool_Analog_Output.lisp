; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Tool_Analog_Output.msg.html

(cl:defclass <Tool_Analog_Output> (roslisp-msg-protocol:ros-message)
  ((voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0))
)

(cl:defclass Tool_Analog_Output (<Tool_Analog_Output>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tool_Analog_Output>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tool_Analog_Output)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Tool_Analog_Output> is deprecated: use rm_msgs-msg:Tool_Analog_Output instead.")))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <Tool_Analog_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:voltage-val is deprecated.  Use rm_msgs-msg:voltage instead.")
  (voltage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tool_Analog_Output>) ostream)
  "Serializes a message object of type '<Tool_Analog_Output>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tool_Analog_Output>) istream)
  "Deserializes a message object of type '<Tool_Analog_Output>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tool_Analog_Output>)))
  "Returns string type for a message object of type '<Tool_Analog_Output>"
  "rm_msgs/Tool_Analog_Output")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tool_Analog_Output)))
  "Returns string type for a message object of type 'Tool_Analog_Output"
  "rm_msgs/Tool_Analog_Output")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tool_Analog_Output>)))
  "Returns md5sum for a message object of type '<Tool_Analog_Output>"
  "403c816563820ece8af98cc50c8ea1ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tool_Analog_Output)))
  "Returns md5sum for a message object of type 'Tool_Analog_Output"
  "403c816563820ece8af98cc50c8ea1ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tool_Analog_Output>)))
  "Returns full string definition for message of type '<Tool_Analog_Output>"
  (cl:format cl:nil "~%float32 voltage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tool_Analog_Output)))
  "Returns full string definition for message of type 'Tool_Analog_Output"
  (cl:format cl:nil "~%float32 voltage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tool_Analog_Output>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tool_Analog_Output>))
  "Converts a ROS message object to a list"
  (cl:list 'Tool_Analog_Output
    (cl:cons ':voltage (voltage msg))
))
