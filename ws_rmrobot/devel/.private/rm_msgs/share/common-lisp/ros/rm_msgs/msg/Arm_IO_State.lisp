; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Arm_IO_State.msg.html

(cl:defclass <Arm_IO_State> (roslisp-msg-protocol:ros-message)
  ((Arm_Digital_Input
    :reader Arm_Digital_Input
    :initarg :Arm_Digital_Input
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 3 :element-type 'cl:boolean :initial-element cl:nil))
   (Arm_Analog_Input
    :reader Arm_Analog_Input
    :initarg :Arm_Analog_Input
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Arm_IO_State (<Arm_IO_State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Arm_IO_State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Arm_IO_State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Arm_IO_State> is deprecated: use rm_msgs-msg:Arm_IO_State instead.")))

(cl:ensure-generic-function 'Arm_Digital_Input-val :lambda-list '(m))
(cl:defmethod Arm_Digital_Input-val ((m <Arm_IO_State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:Arm_Digital_Input-val is deprecated.  Use rm_msgs-msg:Arm_Digital_Input instead.")
  (Arm_Digital_Input m))

(cl:ensure-generic-function 'Arm_Analog_Input-val :lambda-list '(m))
(cl:defmethod Arm_Analog_Input-val ((m <Arm_IO_State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:Arm_Analog_Input-val is deprecated.  Use rm_msgs-msg:Arm_Analog_Input instead.")
  (Arm_Analog_Input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Arm_IO_State>) ostream)
  "Serializes a message object of type '<Arm_IO_State>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'Arm_Digital_Input))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'Arm_Analog_Input))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Arm_IO_State>) istream)
  "Deserializes a message object of type '<Arm_IO_State>"
  (cl:setf (cl:slot-value msg 'Arm_Digital_Input) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'Arm_Digital_Input)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'Arm_Analog_Input) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'Arm_Analog_Input)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Arm_IO_State>)))
  "Returns string type for a message object of type '<Arm_IO_State>"
  "rm_msgs/Arm_IO_State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Arm_IO_State)))
  "Returns string type for a message object of type 'Arm_IO_State"
  "rm_msgs/Arm_IO_State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Arm_IO_State>)))
  "Returns md5sum for a message object of type '<Arm_IO_State>"
  "dba6b2c7dc8fed61c5893347742c9c44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Arm_IO_State)))
  "Returns md5sum for a message object of type 'Arm_IO_State"
  "dba6b2c7dc8fed61c5893347742c9c44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Arm_IO_State>)))
  "Returns full string definition for message of type '<Arm_IO_State>"
  (cl:format cl:nil "bool[3] Arm_Digital_Input~%float32[4] Arm_Analog_Input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Arm_IO_State)))
  "Returns full string definition for message of type 'Arm_IO_State"
  (cl:format cl:nil "bool[3] Arm_Digital_Input~%float32[4] Arm_Analog_Input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Arm_IO_State>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'Arm_Digital_Input) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'Arm_Analog_Input) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Arm_IO_State>))
  "Converts a ROS message object to a list"
  (cl:list 'Arm_IO_State
    (cl:cons ':Arm_Digital_Input (Arm_Digital_Input msg))
    (cl:cons ':Arm_Analog_Input (Arm_Analog_Input msg))
))
