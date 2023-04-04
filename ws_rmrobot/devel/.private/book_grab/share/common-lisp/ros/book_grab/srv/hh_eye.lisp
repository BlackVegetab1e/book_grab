; Auto-generated. Do not edit!


(cl:in-package book_grab-srv)


;//! \htmlinclude hh_eye-request.msg.html

(cl:defclass <hh_eye-request> (roslisp-msg-protocol:ros-message)
  ((order
    :reader order
    :initarg :order
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass hh_eye-request (<hh_eye-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hh_eye-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hh_eye-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name book_grab-srv:<hh_eye-request> is deprecated: use book_grab-srv:hh_eye-request instead.")))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <hh_eye-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader book_grab-srv:order-val is deprecated.  Use book_grab-srv:order instead.")
  (order m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hh_eye-request>) ostream)
  "Serializes a message object of type '<hh_eye-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'order) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hh_eye-request>) istream)
  "Deserializes a message object of type '<hh_eye-request>"
    (cl:setf (cl:slot-value msg 'order) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hh_eye-request>)))
  "Returns string type for a service object of type '<hh_eye-request>"
  "book_grab/hh_eyeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hh_eye-request)))
  "Returns string type for a service object of type 'hh_eye-request"
  "book_grab/hh_eyeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hh_eye-request>)))
  "Returns md5sum for a message object of type '<hh_eye-request>"
  "0b2f3d88a0bcfdb07982649c860629f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hh_eye-request)))
  "Returns md5sum for a message object of type 'hh_eye-request"
  "0b2f3d88a0bcfdb07982649c860629f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hh_eye-request>)))
  "Returns full string definition for message of type '<hh_eye-request>"
  (cl:format cl:nil "bool order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hh_eye-request)))
  "Returns full string definition for message of type 'hh_eye-request"
  (cl:format cl:nil "bool order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hh_eye-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hh_eye-request>))
  "Converts a ROS message object to a list"
  (cl:list 'hh_eye-request
    (cl:cons ':order (order msg))
))
;//! \htmlinclude hh_eye-response.msg.html

(cl:defclass <hh_eye-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0))
)

(cl:defclass hh_eye-response (<hh_eye-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hh_eye-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hh_eye-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name book_grab-srv:<hh_eye-response> is deprecated: use book_grab-srv:hh_eye-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <hh_eye-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader book_grab-srv:x-val is deprecated.  Use book_grab-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <hh_eye-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader book_grab-srv:y-val is deprecated.  Use book_grab-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <hh_eye-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader book_grab-srv:z-val is deprecated.  Use book_grab-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <hh_eye-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader book_grab-srv:a-val is deprecated.  Use book_grab-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hh_eye-response>) ostream)
  "Serializes a message object of type '<hh_eye-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hh_eye-response>) istream)
  "Deserializes a message object of type '<hh_eye-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hh_eye-response>)))
  "Returns string type for a service object of type '<hh_eye-response>"
  "book_grab/hh_eyeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hh_eye-response)))
  "Returns string type for a service object of type 'hh_eye-response"
  "book_grab/hh_eyeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hh_eye-response>)))
  "Returns md5sum for a message object of type '<hh_eye-response>"
  "0b2f3d88a0bcfdb07982649c860629f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hh_eye-response)))
  "Returns md5sum for a message object of type 'hh_eye-response"
  "0b2f3d88a0bcfdb07982649c860629f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hh_eye-response>)))
  "Returns full string definition for message of type '<hh_eye-response>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 a~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hh_eye-response)))
  "Returns full string definition for message of type 'hh_eye-response"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 a~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hh_eye-response>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hh_eye-response>))
  "Converts a ROS message object to a list"
  (cl:list 'hh_eye-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':a (a msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'hh_eye)))
  'hh_eye-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'hh_eye)))
  'hh_eye-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hh_eye)))
  "Returns string type for a service object of type '<hh_eye>"
  "book_grab/hh_eye")