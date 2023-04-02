;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Force_Position_Move_Pose)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Force_Position_Move_Pose (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::FORCE_POSITION_MOVE_POSE")
  (make-package "RM_MSGS::FORCE_POSITION_MOVE_POSE"))

(in-package "ROS")
;;//! \htmlinclude Force_Position_Move_Pose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rm_msgs::Force_Position_Move_Pose
  :super ros::object
  :slots (_Pose _sensor _mode _dir _force ))

(defmethod rm_msgs::Force_Position_Move_Pose
  (:init
   (&key
    ((:Pose __Pose) (instance geometry_msgs::Pose :init))
    ((:sensor __sensor) 0)
    ((:mode __mode) 0)
    ((:dir __dir) 0)
    ((:force __force) 0)
    )
   (send-super :init)
   (setq _Pose __Pose)
   (setq _sensor (round __sensor))
   (setq _mode (round __mode))
   (setq _dir (round __dir))
   (setq _force (round __force))
   self)
  (:Pose
   (&rest __Pose)
   (if (keywordp (car __Pose))
       (send* _Pose __Pose)
     (progn
       (if __Pose (setq _Pose (car __Pose)))
       _Pose)))
  (:sensor
   (&optional __sensor)
   (if __sensor (setq _sensor __sensor)) _sensor)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _Pose
    (send _Pose :serialization-length)
    ;; uint8 _sensor
    1
    ;; uint8 _mode
    1
    ;; uint8 _dir
    1
    ;; int16 _force
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _Pose
       (send _Pose :serialize s)
     ;; uint8 _sensor
       (write-byte _sensor s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _dir
       (write-byte _dir s)
     ;; int16 _force
       (write-word _force s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _Pose
     (send _Pose :deserialize buf ptr-) (incf ptr- (send _Pose :serialization-length))
   ;; uint8 _sensor
     (setq _sensor (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dir
     (setq _dir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _force
     (setq _force (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::Force_Position_Move_Pose :md5sum-) "d767ae12238c9954eb73a3ce727611a5")
(setf (get rm_msgs::Force_Position_Move_Pose :datatype-) "rm_msgs/Force_Position_Move_Pose")
(setf (get rm_msgs::Force_Position_Move_Pose :definition-)
      "geometry_msgs/Pose Pose
uint8 sensor
uint8 mode
uint8 dir
int16 force

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



(provide :rm_msgs/Force_Position_Move_Pose "d767ae12238c9954eb73a3ce727611a5")


