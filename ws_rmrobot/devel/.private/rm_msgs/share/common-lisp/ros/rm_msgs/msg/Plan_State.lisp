; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Plan_State.msg.html

(cl:defclass <Plan_State> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Plan_State (<Plan_State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Plan_State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Plan_State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Plan_State> is deprecated: use rm_msgs-msg:Plan_State instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Plan_State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:state-val is deprecated.  Use rm_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Plan_State>) ostream)
  "Serializes a message object of type '<Plan_State>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Plan_State>) istream)
  "Deserializes a message object of type '<Plan_State>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Plan_State>)))
  "Returns string type for a message object of type '<Plan_State>"
  "rm_msgs/Plan_State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Plan_State)))
  "Returns string type for a message object of type 'Plan_State"
  "rm_msgs/Plan_State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Plan_State>)))
  "Returns md5sum for a message object of type '<Plan_State>"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Plan_State)))
  "Returns md5sum for a message object of type 'Plan_State"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Plan_State>)))
  "Returns full string definition for message of type '<Plan_State>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Plan_State)))
  "Returns full string definition for message of type 'Plan_State"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Plan_State>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Plan_State>))
  "Converts a ROS message object to a list"
  (cl:list 'Plan_State
    (cl:cons ':state (state msg))
))
