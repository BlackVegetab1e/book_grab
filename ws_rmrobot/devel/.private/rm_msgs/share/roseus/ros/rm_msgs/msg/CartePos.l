;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::CartePos)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'CartePos (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::CARTEPOS")
  (make-package "RM_MSGS::CARTEPOS"))

(in-package "ROS")
;;//! \htmlinclude CartePos.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rm_msgs::CartePos
  :super ros::object
  :slots (_Pose ))

(defmethod rm_msgs::CartePos
  (:init
   (&key
    ((:Pose __Pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _Pose __Pose)
   self)
  (:Pose
   (&rest __Pose)
   (if (keywordp (car __Pose))
       (send* _Pose __Pose)
     (progn
       (if __Pose (setq _Pose (car __Pose)))
       _Pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _Pose
    (send _Pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _Pose
       (send _Pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _Pose
     (send _Pose :deserialize buf ptr-) (incf ptr- (send _Pose :serialization-length))
   ;;
   self)
  )

(setf (get rm_msgs::CartePos :md5sum-) "db774e2f8d3bbd66cc277b8a8ce62817")
(setf (get rm_msgs::CartePos :datatype-) "rm_msgs/CartePos")
(setf (get rm_msgs::CartePos :definition-)
      "geometry_msgs/Pose Pose


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



(provide :rm_msgs/CartePos "db774e2f8d3bbd66cc277b8a8ce62817")


