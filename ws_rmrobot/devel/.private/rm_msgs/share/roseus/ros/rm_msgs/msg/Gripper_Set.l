;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Gripper_Set)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Gripper_Set (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::GRIPPER_SET")
  (make-package "RM_MSGS::GRIPPER_SET"))

(in-package "ROS")
;;//! \htmlinclude Gripper_Set.msg.html


(defclass rm_msgs::Gripper_Set
  :super ros::object
  :slots (_position ))

(defmethod rm_msgs::Gripper_Set
  (:init
   (&key
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _position (round __position))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; uint16 _position
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _position
       (write-word _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _position
     (setq _position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::Gripper_Set :md5sum-) "e6fa9d1b49571c7fff8bae5e451e5e59")
(setf (get rm_msgs::Gripper_Set :datatype-) "rm_msgs/Gripper_Set")
(setf (get rm_msgs::Gripper_Set :definition-)
      "#设置手爪到固定位置，手爪到位置后或者所受力超过阈值后停止
uint16 position   #手爪目标位置，范围：1～1000,代表手爪开口度：0～70mm

")



(provide :rm_msgs/Gripper_Set "e6fa9d1b49571c7fff8bae5e451e5e59")


