;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Gripper_Pick)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Gripper_Pick (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::GRIPPER_PICK")
  (make-package "RM_MSGS::GRIPPER_PICK"))

(in-package "ROS")
;;//! \htmlinclude Gripper_Pick.msg.html


(defclass rm_msgs::Gripper_Pick
  :super ros::object
  :slots (_speed _force ))

(defmethod rm_msgs::Gripper_Pick
  (:init
   (&key
    ((:speed __speed) 0)
    ((:force __force) 0)
    )
   (send-super :init)
   (setq _speed (round __speed))
   (setq _force (round __force))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:serialization-length
   ()
   (+
    ;; uint16 _speed
    2
    ;; uint16 _force
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _speed
       (write-word _speed s)
     ;; uint16 _force
       (write-word _force s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _force
     (setq _force (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::Gripper_Pick :md5sum-) "bccee2d260af47427a90b0534ed4c5ac")
(setf (get rm_msgs::Gripper_Pick :datatype-) "rm_msgs/Gripper_Pick")
(setf (get rm_msgs::Gripper_Pick :definition-)
      "#手爪以设定的速度力控夹取，当受力超过设定力后，停止运动
uint16 speed         #1~1000,代表手爪开合速度，无量纲
uint16 force         #1～1000,代表手爪夹持力，最大1.5kg

")



(provide :rm_msgs/Gripper_Pick "bccee2d260af47427a90b0534ed4c5ac")


