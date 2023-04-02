;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Joint_Step)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Joint_Step (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::JOINT_STEP")
  (make-package "RM_MSGS::JOINT_STEP"))

(in-package "ROS")
;;//! \htmlinclude Joint_Step.msg.html


(defclass rm_msgs::Joint_Step
  :super ros::object
  :slots (_joint_num _step_angle _speed ))

(defmethod rm_msgs::Joint_Step
  (:init
   (&key
    ((:joint_num __joint_num) 0)
    ((:step_angle __step_angle) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _joint_num (round __joint_num))
   (setq _step_angle (float __step_angle))
   (setq _speed (float __speed))
   self)
  (:joint_num
   (&optional __joint_num)
   (if __joint_num (setq _joint_num __joint_num)) _joint_num)
  (:step_angle
   (&optional __step_angle)
   (if __step_angle (setq _step_angle __step_angle)) _step_angle)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; uint8 _joint_num
    1
    ;; float32 _step_angle
    4
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _joint_num
       (write-byte _joint_num s)
     ;; float32 _step_angle
       (sys::poke _step_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _joint_num
     (setq _joint_num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _step_angle
     (setq _step_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::Joint_Step :md5sum-) "2dcc5aafa7a7fc210418ee32285e489e")
(setf (get rm_msgs::Joint_Step :datatype-) "rm_msgs/Joint_Step")
(setf (get rm_msgs::Joint_Step :definition-)
      "uint8 joint_num
float32 step_angle
float32 speed

")



(provide :rm_msgs/Joint_Step "2dcc5aafa7a7fc210418ee32285e489e")


