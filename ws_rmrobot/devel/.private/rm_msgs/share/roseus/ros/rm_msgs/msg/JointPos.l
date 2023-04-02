;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::JointPos)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'JointPos (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::JOINTPOS")
  (make-package "RM_MSGS::JOINTPOS"))

(in-package "ROS")
;;//! \htmlinclude JointPos.msg.html


(defclass rm_msgs::JointPos
  :super ros::object
  :slots (_joint ))

(defmethod rm_msgs::JointPos
  (:init
   (&key
    ((:joint __joint) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint __joint)
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:serialization-length
   ()
   (+
    ;; float32[6] _joint
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _joint
     (dotimes (i 6)
       (sys::poke (elt _joint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _joint
   (dotimes (i (length _joint))
     (setf (elt _joint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get rm_msgs::JointPos :md5sum-) "54f79eff4196767e5b029883dc8e8401")
(setf (get rm_msgs::JointPos :datatype-) "rm_msgs/JointPos")
(setf (get rm_msgs::JointPos :definition-)
      "#control arm joints without planning

float32[6] joint

")



(provide :rm_msgs/JointPos "54f79eff4196767e5b029883dc8e8401")


