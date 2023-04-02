;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Hand_Speed)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Hand_Speed (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::HAND_SPEED")
  (make-package "RM_MSGS::HAND_SPEED"))

(in-package "ROS")
;;//! \htmlinclude Hand_Speed.msg.html


(defclass rm_msgs::Hand_Speed
  :super ros::object
  :slots (_hand_speed ))

(defmethod rm_msgs::Hand_Speed
  (:init
   (&key
    ((:hand_speed __hand_speed) 0)
    )
   (send-super :init)
   (setq _hand_speed (round __hand_speed))
   self)
  (:hand_speed
   (&optional __hand_speed)
   (if __hand_speed (setq _hand_speed __hand_speed)) _hand_speed)
  (:serialization-length
   ()
   (+
    ;; uint16 _hand_speed
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _hand_speed
       (write-word _hand_speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _hand_speed
     (setq _hand_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::Hand_Speed :md5sum-) "2c60da357dfc1989f0a4de469bbeae28")
(setf (get rm_msgs::Hand_Speed :datatype-) "rm_msgs/Hand_Speed")
(setf (get rm_msgs::Hand_Speed :definition-)
      "#设置灵巧手关节速度
uint16 hand_speed         #手指速度，范围：1~1000

")



(provide :rm_msgs/Hand_Speed "2c60da357dfc1989f0a4de469bbeae28")


