;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Lift_Speed)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Lift_Speed (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::LIFT_SPEED")
  (make-package "RM_MSGS::LIFT_SPEED"))

(in-package "ROS")
;;//! \htmlinclude Lift_Speed.msg.html


(defclass rm_msgs::Lift_Speed
  :super ros::object
  :slots (_speed ))

(defmethod rm_msgs::Lift_Speed
  (:init
   (&key
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _speed (round __speed))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; int16 _speed
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _speed
       (write-word _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::Lift_Speed :md5sum-) "368a599b530468ee137b04eea511a3ec")
(setf (get rm_msgs::Lift_Speed :datatype-) "rm_msgs/Lift_Speed")
(setf (get rm_msgs::Lift_Speed :definition-)
      "#升降机构速度开环控制
#Speed < 0:升降机构向下运动
#Speed > 0:升降机构向上运动
#Speed = 0:升降机构停止运动
int16 speed         #速度百分比，-100~100

")



(provide :rm_msgs/Lift_Speed "368a599b530468ee137b04eea511a3ec")


