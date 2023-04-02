;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Start_Multi_Drag_Teach)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Start_Multi_Drag_Teach (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::START_MULTI_DRAG_TEACH")
  (make-package "RM_MSGS::START_MULTI_DRAG_TEACH"))

(in-package "ROS")
;;//! \htmlinclude Start_Multi_Drag_Teach.msg.html


(defclass rm_msgs::Start_Multi_Drag_Teach
  :super ros::object
  :slots (_mode ))

(defmethod rm_msgs::Start_Multi_Drag_Teach
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::Start_Multi_Drag_Teach :md5sum-) "89b81386720be1cd0ce7a3953fcd1b19")
(setf (get rm_msgs::Start_Multi_Drag_Teach :datatype-) "rm_msgs/Start_Multi_Drag_Teach")
(setf (get rm_msgs::Start_Multi_Drag_Teach :definition-)
      "uint8 mode

")



(provide :rm_msgs/Start_Multi_Drag_Teach "89b81386720be1cd0ce7a3953fcd1b19")


