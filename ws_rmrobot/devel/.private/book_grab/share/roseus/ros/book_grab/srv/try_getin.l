;; Auto-generated. Do not edit!


(when (boundp 'book_grab::try_getin)
  (if (not (find-package "BOOK_GRAB"))
    (make-package "BOOK_GRAB"))
  (shadow 'try_getin (find-package "BOOK_GRAB")))
(unless (find-package "BOOK_GRAB::TRY_GETIN")
  (make-package "BOOK_GRAB::TRY_GETIN"))
(unless (find-package "BOOK_GRAB::TRY_GETINREQUEST")
  (make-package "BOOK_GRAB::TRY_GETINREQUEST"))
(unless (find-package "BOOK_GRAB::TRY_GETINRESPONSE")
  (make-package "BOOK_GRAB::TRY_GETINRESPONSE"))

(in-package "ROS")





(defclass book_grab::try_getinRequest
  :super ros::object
  :slots (_order ))

(defmethod book_grab::try_getinRequest
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

(defclass book_grab::try_getinResponse
  :super ros::object
  :slots (_result ))

(defmethod book_grab::try_getinResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass book_grab::try_getin
  :super ros::object
  :slots ())

(setf (get book_grab::try_getin :md5sum-) "387888aa2537f7f5ee4e59936afe4d79")
(setf (get book_grab::try_getin :datatype-) "book_grab/try_getin")
(setf (get book_grab::try_getin :request) book_grab::try_getinRequest)
(setf (get book_grab::try_getin :response) book_grab::try_getinResponse)

(defmethod book_grab::try_getinRequest
  (:response () (instance book_grab::try_getinResponse :init)))

(setf (get book_grab::try_getinRequest :md5sum-) "387888aa2537f7f5ee4e59936afe4d79")
(setf (get book_grab::try_getinRequest :datatype-) "book_grab/try_getinRequest")
(setf (get book_grab::try_getinRequest :definition-)
      "bool order
---
int32 result

")

(setf (get book_grab::try_getinResponse :md5sum-) "387888aa2537f7f5ee4e59936afe4d79")
(setf (get book_grab::try_getinResponse :datatype-) "book_grab/try_getinResponse")
(setf (get book_grab::try_getinResponse :definition-)
      "bool order
---
int32 result

")



(provide :book_grab/try_getin "387888aa2537f7f5ee4e59936afe4d79")


