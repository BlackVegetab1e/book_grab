; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Manual_Set_Force_Pose.msg.html

(cl:defclass <Manual_Set_Force_Pose> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Manual_Set_Force_Pose (<Manual_Set_Force_Pose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Manual_Set_Force_Pose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Manual_Set_Force_Pose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Manual_Set_Force_Pose> is deprecated: use rm_msgs-msg:Manual_Set_Force_Pose instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <Manual_Set_Force_Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joint-val is deprecated.  Use rm_msgs-msg:joint instead.")
  (joint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Manual_Set_Force_Pose>) ostream)
  "Serializes a message object of type '<Manual_Set_Force_Pose>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'joint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Manual_Set_Force_Pose>) istream)
  "Deserializes a message object of type '<Manual_Set_Force_Pose>"
  (cl:setf (cl:slot-value msg 'joint) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'joint)))
    (cl:dotimes (i 6)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Manual_Set_Force_Pose>)))
  "Returns string type for a message object of type '<Manual_Set_Force_Pose>"
  "rm_msgs/Manual_Set_Force_Pose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Manual_Set_Force_Pose)))
  "Returns string type for a message object of type 'Manual_Set_Force_Pose"
  "rm_msgs/Manual_Set_Force_Pose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Manual_Set_Force_Pose>)))
  "Returns md5sum for a message object of type '<Manual_Set_Force_Pose>"
  "115602d63d436656f43358faf13c608e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Manual_Set_Force_Pose)))
  "Returns md5sum for a message object of type 'Manual_Set_Force_Pose"
  "115602d63d436656f43358faf13c608e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Manual_Set_Force_Pose>)))
  "Returns full string definition for message of type '<Manual_Set_Force_Pose>"
  (cl:format cl:nil "int16[6] joint~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Manual_Set_Force_Pose)))
  "Returns full string definition for message of type 'Manual_Set_Force_Pose"
  (cl:format cl:nil "int16[6] joint~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Manual_Set_Force_Pose>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Manual_Set_Force_Pose>))
  "Converts a ROS message object to a list"
  (cl:list 'Manual_Set_Force_Pose
    (cl:cons ':joint (joint msg))
))
