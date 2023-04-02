; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ChangeWorkFrame_State.msg.html

(cl:defclass <ChangeWorkFrame_State> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeWorkFrame_State (<ChangeWorkFrame_State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeWorkFrame_State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeWorkFrame_State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ChangeWorkFrame_State> is deprecated: use rm_msgs-msg:ChangeWorkFrame_State instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ChangeWorkFrame_State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:state-val is deprecated.  Use rm_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeWorkFrame_State>) ostream)
  "Serializes a message object of type '<ChangeWorkFrame_State>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeWorkFrame_State>) istream)
  "Deserializes a message object of type '<ChangeWorkFrame_State>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeWorkFrame_State>)))
  "Returns string type for a message object of type '<ChangeWorkFrame_State>"
  "rm_msgs/ChangeWorkFrame_State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeWorkFrame_State)))
  "Returns string type for a message object of type 'ChangeWorkFrame_State"
  "rm_msgs/ChangeWorkFrame_State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeWorkFrame_State>)))
  "Returns md5sum for a message object of type '<ChangeWorkFrame_State>"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeWorkFrame_State)))
  "Returns md5sum for a message object of type 'ChangeWorkFrame_State"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeWorkFrame_State>)))
  "Returns full string definition for message of type '<ChangeWorkFrame_State>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeWorkFrame_State)))
  "Returns full string definition for message of type 'ChangeWorkFrame_State"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeWorkFrame_State>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeWorkFrame_State>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeWorkFrame_State
    (cl:cons ':state (state msg))
))
