; Auto-generated. Do not edit!


(cl:in-package book_grab-srv)


;//! \htmlinclude try_getin-request.msg.html

(cl:defclass <try_getin-request> (roslisp-msg-protocol:ros-message)
  ((order
    :reader order
    :initarg :order
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass try_getin-request (<try_getin-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <try_getin-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'try_getin-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name book_grab-srv:<try_getin-request> is deprecated: use book_grab-srv:try_getin-request instead.")))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <try_getin-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader book_grab-srv:order-val is deprecated.  Use book_grab-srv:order instead.")
  (order m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <try_getin-request>) ostream)
  "Serializes a message object of type '<try_getin-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'order) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <try_getin-request>) istream)
  "Deserializes a message object of type '<try_getin-request>"
    (cl:setf (cl:slot-value msg 'order) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<try_getin-request>)))
  "Returns string type for a service object of type '<try_getin-request>"
  "book_grab/try_getinRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'try_getin-request)))
  "Returns string type for a service object of type 'try_getin-request"
  "book_grab/try_getinRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<try_getin-request>)))
  "Returns md5sum for a message object of type '<try_getin-request>"
  "387888aa2537f7f5ee4e59936afe4d79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'try_getin-request)))
  "Returns md5sum for a message object of type 'try_getin-request"
  "387888aa2537f7f5ee4e59936afe4d79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<try_getin-request>)))
  "Returns full string definition for message of type '<try_getin-request>"
  (cl:format cl:nil "bool order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'try_getin-request)))
  "Returns full string definition for message of type 'try_getin-request"
  (cl:format cl:nil "bool order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <try_getin-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <try_getin-request>))
  "Converts a ROS message object to a list"
  (cl:list 'try_getin-request
    (cl:cons ':order (order msg))
))
;//! \htmlinclude try_getin-response.msg.html

(cl:defclass <try_getin-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass try_getin-response (<try_getin-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <try_getin-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'try_getin-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name book_grab-srv:<try_getin-response> is deprecated: use book_grab-srv:try_getin-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <try_getin-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader book_grab-srv:result-val is deprecated.  Use book_grab-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <try_getin-response>) ostream)
  "Serializes a message object of type '<try_getin-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <try_getin-response>) istream)
  "Deserializes a message object of type '<try_getin-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<try_getin-response>)))
  "Returns string type for a service object of type '<try_getin-response>"
  "book_grab/try_getinResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'try_getin-response)))
  "Returns string type for a service object of type 'try_getin-response"
  "book_grab/try_getinResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<try_getin-response>)))
  "Returns md5sum for a message object of type '<try_getin-response>"
  "387888aa2537f7f5ee4e59936afe4d79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'try_getin-response)))
  "Returns md5sum for a message object of type 'try_getin-response"
  "387888aa2537f7f5ee4e59936afe4d79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<try_getin-response>)))
  "Returns full string definition for message of type '<try_getin-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'try_getin-response)))
  "Returns full string definition for message of type 'try_getin-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <try_getin-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <try_getin-response>))
  "Converts a ROS message object to a list"
  (cl:list 'try_getin-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'try_getin)))
  'try_getin-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'try_getin)))
  'try_getin-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'try_getin)))
  "Returns string type for a service object of type '<try_getin>"
  "book_grab/try_getin")