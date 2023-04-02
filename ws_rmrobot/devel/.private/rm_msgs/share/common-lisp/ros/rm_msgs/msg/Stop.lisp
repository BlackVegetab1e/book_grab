; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Stop.msg.html

(cl:defclass <Stop> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Stop (<Stop>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stop>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stop)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Stop> is deprecated: use rm_msgs-msg:Stop instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Stop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:state-val is deprecated.  Use rm_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stop>) ostream)
  "Serializes a message object of type '<Stop>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stop>) istream)
  "Deserializes a message object of type '<Stop>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stop>)))
  "Returns string type for a message object of type '<Stop>"
  "rm_msgs/Stop")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stop)))
  "Returns string type for a message object of type 'Stop"
  "rm_msgs/Stop")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stop>)))
  "Returns md5sum for a message object of type '<Stop>"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stop)))
  "Returns md5sum for a message object of type 'Stop"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stop>)))
  "Returns full string definition for message of type '<Stop>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stop)))
  "Returns full string definition for message of type 'Stop"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stop>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stop>))
  "Converts a ROS message object to a list"
  (cl:list 'Stop
    (cl:cons ':state (state msg))
))
