; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Tool_IO_State.msg.html

(cl:defclass <Tool_IO_State> (roslisp-msg-protocol:ros-message)
  ((Tool_Digital_Input
    :reader Tool_Digital_Input
    :initarg :Tool_Digital_Input
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 2 :element-type 'cl:boolean :initial-element cl:nil))
   (Tool_Analog_Input
    :reader Tool_Analog_Input
    :initarg :Tool_Analog_Input
    :type cl:float
    :initform 0.0))
)

(cl:defclass Tool_IO_State (<Tool_IO_State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tool_IO_State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tool_IO_State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Tool_IO_State> is deprecated: use rm_msgs-msg:Tool_IO_State instead.")))

(cl:ensure-generic-function 'Tool_Digital_Input-val :lambda-list '(m))
(cl:defmethod Tool_Digital_Input-val ((m <Tool_IO_State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:Tool_Digital_Input-val is deprecated.  Use rm_msgs-msg:Tool_Digital_Input instead.")
  (Tool_Digital_Input m))

(cl:ensure-generic-function 'Tool_Analog_Input-val :lambda-list '(m))
(cl:defmethod Tool_Analog_Input-val ((m <Tool_IO_State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:Tool_Analog_Input-val is deprecated.  Use rm_msgs-msg:Tool_Analog_Input instead.")
  (Tool_Analog_Input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tool_IO_State>) ostream)
  "Serializes a message object of type '<Tool_IO_State>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'Tool_Digital_Input))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Tool_Analog_Input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tool_IO_State>) istream)
  "Deserializes a message object of type '<Tool_IO_State>"
  (cl:setf (cl:slot-value msg 'Tool_Digital_Input) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'Tool_Digital_Input)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Tool_Analog_Input) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tool_IO_State>)))
  "Returns string type for a message object of type '<Tool_IO_State>"
  "rm_msgs/Tool_IO_State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tool_IO_State)))
  "Returns string type for a message object of type 'Tool_IO_State"
  "rm_msgs/Tool_IO_State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tool_IO_State>)))
  "Returns md5sum for a message object of type '<Tool_IO_State>"
  "d7adff68dc996b192b01391906704f92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tool_IO_State)))
  "Returns md5sum for a message object of type 'Tool_IO_State"
  "d7adff68dc996b192b01391906704f92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tool_IO_State>)))
  "Returns full string definition for message of type '<Tool_IO_State>"
  (cl:format cl:nil "bool[2] Tool_Digital_Input~%float32 Tool_Analog_Input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tool_IO_State)))
  "Returns full string definition for message of type 'Tool_IO_State"
  (cl:format cl:nil "bool[2] Tool_Digital_Input~%float32 Tool_Analog_Input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tool_IO_State>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'Tool_Digital_Input) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tool_IO_State>))
  "Converts a ROS message object to a list"
  (cl:list 'Tool_IO_State
    (cl:cons ':Tool_Digital_Input (Tool_Digital_Input msg))
    (cl:cons ':Tool_Analog_Input (Tool_Analog_Input msg))
))
