; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Joint_Step.msg.html

(cl:defclass <Joint_Step> (roslisp-msg-protocol:ros-message)
  ((joint_num
    :reader joint_num
    :initarg :joint_num
    :type cl:fixnum
    :initform 0)
   (step_angle
    :reader step_angle
    :initarg :step_angle
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass Joint_Step (<Joint_Step>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Joint_Step>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Joint_Step)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Joint_Step> is deprecated: use rm_msgs-msg:Joint_Step instead.")))

(cl:ensure-generic-function 'joint_num-val :lambda-list '(m))
(cl:defmethod joint_num-val ((m <Joint_Step>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joint_num-val is deprecated.  Use rm_msgs-msg:joint_num instead.")
  (joint_num m))

(cl:ensure-generic-function 'step_angle-val :lambda-list '(m))
(cl:defmethod step_angle-val ((m <Joint_Step>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:step_angle-val is deprecated.  Use rm_msgs-msg:step_angle instead.")
  (step_angle m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Joint_Step>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:speed-val is deprecated.  Use rm_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Joint_Step>) ostream)
  "Serializes a message object of type '<Joint_Step>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joint_num)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'step_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Joint_Step>) istream)
  "Deserializes a message object of type '<Joint_Step>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joint_num)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Joint_Step>)))
  "Returns string type for a message object of type '<Joint_Step>"
  "rm_msgs/Joint_Step")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Joint_Step)))
  "Returns string type for a message object of type 'Joint_Step"
  "rm_msgs/Joint_Step")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Joint_Step>)))
  "Returns md5sum for a message object of type '<Joint_Step>"
  "2dcc5aafa7a7fc210418ee32285e489e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Joint_Step)))
  "Returns md5sum for a message object of type 'Joint_Step"
  "2dcc5aafa7a7fc210418ee32285e489e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Joint_Step>)))
  "Returns full string definition for message of type '<Joint_Step>"
  (cl:format cl:nil "uint8 joint_num~%float32 step_angle~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Joint_Step)))
  "Returns full string definition for message of type 'Joint_Step"
  (cl:format cl:nil "uint8 joint_num~%float32 step_angle~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Joint_Step>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Joint_Step>))
  "Converts a ROS message object to a list"
  (cl:list 'Joint_Step
    (cl:cons ':joint_num (joint_num msg))
    (cl:cons ':step_angle (step_angle msg))
    (cl:cons ':speed (speed msg))
))
