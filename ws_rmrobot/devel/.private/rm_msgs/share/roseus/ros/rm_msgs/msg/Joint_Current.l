;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Joint_Current)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Joint_Current (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::JOINT_CURRENT")
  (make-package "RM_MSGS::JOINT_CURRENT"))

(in-package "ROS")
;;//! \htmlinclude Joint_Current.msg.html


(defclass rm_msgs::Joint_Current
  :super ros::object
  :slots (_joint_current ))

(defmethod rm_msgs::Joint_Current
  (:init
   (&key
    ((:joint_current __joint_current) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_current __joint_current)
   self)
  (:joint_current
   (&optional __joint_current)
   (if __joint_current (setq _joint_current __joint_current)) _joint_current)
  (:serialization-length
   ()
   (+
    ;; float32[6] _joint_current
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _joint_current
     (dotimes (i 6)
       (sys::poke (elt _joint_current i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _joint_current
   (dotimes (i (length _joint_current))
     (setf (elt _joint_current i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get rm_msgs::Joint_Current :md5sum-) "369b310bf518537d26269558081c8067")
(setf (get rm_msgs::Joint_Current :datatype-) "rm_msgs/Joint_Current")
(setf (get rm_msgs::Joint_Current :definition-)
      "float32[6] joint_current

")



(provide :rm_msgs/Joint_Current "369b310bf518537d26269558081c8067")


