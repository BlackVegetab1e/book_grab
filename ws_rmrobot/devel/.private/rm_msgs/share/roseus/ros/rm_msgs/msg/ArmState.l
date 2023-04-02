;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ArmState)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ArmState (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::ARMSTATE")
  (make-package "RM_MSGS::ARMSTATE"))

(in-package "ROS")
;;//! \htmlinclude ArmState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rm_msgs::ArmState
  :super ros::object
  :slots (_joint _Pose _arm_err _sys_err ))

(defmethod rm_msgs::ArmState
  (:init
   (&key
    ((:joint __joint) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:Pose __Pose) (instance geometry_msgs::Pose :init))
    ((:arm_err __arm_err) 0)
    ((:sys_err __sys_err) 0)
    )
   (send-super :init)
   (setq _joint __joint)
   (setq _Pose __Pose)
   (setq _arm_err (round __arm_err))
   (setq _sys_err (round __sys_err))
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:Pose
   (&rest __Pose)
   (if (keywordp (car __Pose))
       (send* _Pose __Pose)
     (progn
       (if __Pose (setq _Pose (car __Pose)))
       _Pose)))
  (:arm_err
   (&optional __arm_err)
   (if __arm_err (setq _arm_err __arm_err)) _arm_err)
  (:sys_err
   (&optional __sys_err)
   (if __sys_err (setq _sys_err __sys_err)) _sys_err)
  (:serialization-length
   ()
   (+
    ;; float32[6] _joint
    (* 4    6)
    ;; geometry_msgs/Pose _Pose
    (send _Pose :serialization-length)
    ;; uint16 _arm_err
    2
    ;; uint16 _sys_err
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _joint
     (dotimes (i 6)
       (sys::poke (elt _joint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Pose _Pose
       (send _Pose :serialize s)
     ;; uint16 _arm_err
       (write-word _arm_err s)
     ;; uint16 _sys_err
       (write-word _sys_err s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _joint
   (dotimes (i (length _joint))
     (setf (elt _joint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; geometry_msgs/Pose _Pose
     (send _Pose :deserialize buf ptr-) (incf ptr- (send _Pose :serialization-length))
   ;; uint16 _arm_err
     (setq _arm_err (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _sys_err
     (setq _sys_err (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::ArmState :md5sum-) "a5a77ad1525ad39c09016c8aea0c863f")
(setf (get rm_msgs::ArmState :datatype-) "rm_msgs/ArmState")
(setf (get rm_msgs::ArmState :definition-)
      "float32[6] joint
geometry_msgs/Pose Pose
uint16 arm_err
uint16 sys_err


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



(provide :rm_msgs/ArmState "a5a77ad1525ad39c09016c8aea0c863f")


