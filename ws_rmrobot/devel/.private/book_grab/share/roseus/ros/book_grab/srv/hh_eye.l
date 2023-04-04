;; Auto-generated. Do not edit!


(when (boundp 'book_grab::hh_eye)
  (if (not (find-package "BOOK_GRAB"))
    (make-package "BOOK_GRAB"))
  (shadow 'hh_eye (find-package "BOOK_GRAB")))
(unless (find-package "BOOK_GRAB::HH_EYE")
  (make-package "BOOK_GRAB::HH_EYE"))
(unless (find-package "BOOK_GRAB::HH_EYEREQUEST")
  (make-package "BOOK_GRAB::HH_EYEREQUEST"))
(unless (find-package "BOOK_GRAB::HH_EYERESPONSE")
  (make-package "BOOK_GRAB::HH_EYERESPONSE"))

(in-package "ROS")





(defclass book_grab::hh_eyeRequest
  :super ros::object
  :slots (_order ))

(defmethod book_grab::hh_eyeRequest
  (:init
   (&key
    ((:order __order) nil)
    )
   (send-super :init)
   (setq _order __order)
   self)
  (:order
   (&optional __order)
   (if __order (setq _order __order)) _order)
  (:serialization-length
   ()
   (+
    ;; bool _order
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _order
       (if _order (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _order
     (setq _order (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass book_grab::hh_eyeResponse
  :super ros::object
  :slots (_x _y _z _a ))

(defmethod book_grab::hh_eyeResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:a __a) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _a (float __a))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _a
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass book_grab::hh_eye
  :super ros::object
  :slots ())

(setf (get book_grab::hh_eye :md5sum-) "0b2f3d88a0bcfdb07982649c860629f6")
(setf (get book_grab::hh_eye :datatype-) "book_grab/hh_eye")
(setf (get book_grab::hh_eye :request) book_grab::hh_eyeRequest)
(setf (get book_grab::hh_eye :response) book_grab::hh_eyeResponse)

(defmethod book_grab::hh_eyeRequest
  (:response () (instance book_grab::hh_eyeResponse :init)))

(setf (get book_grab::hh_eyeRequest :md5sum-) "0b2f3d88a0bcfdb07982649c860629f6")
(setf (get book_grab::hh_eyeRequest :datatype-) "book_grab/hh_eyeRequest")
(setf (get book_grab::hh_eyeRequest :definition-)
      "bool order
---
float32 x
float32 y
float32 z
float32 a

")

(setf (get book_grab::hh_eyeResponse :md5sum-) "0b2f3d88a0bcfdb07982649c860629f6")
(setf (get book_grab::hh_eyeResponse :datatype-) "book_grab/hh_eyeResponse")
(setf (get book_grab::hh_eyeResponse :definition-)
      "bool order
---
float32 x
float32 y
float32 z
float32 a

")



(provide :book_grab/hh_eye "0b2f3d88a0bcfdb07982649c860629f6")


