;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::IO_Update)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'IO_Update (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::IO_UPDATE")
  (make-package "RM_MSGS::IO_UPDATE"))

(in-package "ROS")
;;//! \htmlinclude IO_Update.msg.html


(defclass rm_msgs::IO_Update
  :super ros::object
  :slots (_type ))

(defmethod rm_msgs::IO_Update
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::IO_Update :md5sum-) "3958533281df6e9cc0a725a386f3b5df")
(setf (get rm_msgs::IO_Update :datatype-) "rm_msgs/IO_Update")
(setf (get rm_msgs::IO_Update :definition-)
      "uint8 type

")



(provide :rm_msgs/IO_Update "3958533281df6e9cc0a725a386f3b5df")


