;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::MoveL)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'MoveL (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::MOVEL")
  (make-package "RM_MSGS::MOVEL"))

(in-package "ROS")
;;//! \htmlinclude MoveL.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rm_msgs::MoveL
  :super ros::object
  :slots (_Pose _speed ))

(defmethod rm_msgs::MoveL
  (:init
   (&key
    ((:Pose __Pose) (instance geometry_msgs::Pose :init))
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _Pose __Pose)
   (setq _speed (float __speed))
   self)
  (:Pose
   (&rest __Pose)
   (if (keywordp (car __Pose))
       (send* _Pose __Pose)
     (progn
       (if __Pose (setq _Pose (car __Pose)))
       _Pose)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _Pose
    (send _Pose :serialization-length)
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _Pose
       (send _Pose :serialize s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _Pose
     (send _Pose :deserialize buf ptr-) (incf ptr- (send _Pose :serialization-length))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::MoveL :md5sum-) "0bdc59c6a7f930de77636565f2d8ae52")
(setf (get rm_msgs::MoveL :datatype-) "rm_msgs/MoveL")
(setf (get rm_msgs::MoveL :definition-)
      "geometry_msgs/Pose Pose
float32 speed

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :rm_msgs/MoveL "0bdc59c6a7f930de77636565f2d8ae52")


