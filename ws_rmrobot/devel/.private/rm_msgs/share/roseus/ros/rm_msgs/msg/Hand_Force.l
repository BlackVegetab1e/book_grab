;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Hand_Force)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Hand_Force (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::HAND_FORCE")
  (make-package "RM_MSGS::HAND_FORCE"))

(in-package "ROS")
;;//! \htmlinclude Hand_Force.msg.html


(defclass rm_msgs::Hand_Force
  :super ros::object
  :slots (_hand_force ))

(defmethod rm_msgs::Hand_Force
  (:init
   (&key
    ((:hand_force __hand_force) 0)
    )
   (send-super :init)
   (setq _hand_force (round __hand_force))
   self)
  (:hand_force
   (&optional __hand_force)
   (if __hand_force (setq _hand_force __hand_force)) _hand_force)
  (:serialization-length
   ()
   (+
    ;; uint16 _hand_force
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _hand_force
       (write-word _hand_force s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _hand_force
     (setq _hand_force (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::Hand_Force :md5sum-) "9b910d20d2c9bd5f156199fd98e2fdc4")
(setf (get rm_msgs::Hand_Force :datatype-) "rm_msgs/Hand_Force")
(setf (get rm_msgs::Hand_Force :definition-)
      "#设置灵巧手关节力阈值
uint16 hand_force         #手指力，范围：1~1000

")



(provide :rm_msgs/Hand_Force "9b910d20d2c9bd5f156199fd98e2fdc4")


