;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Six_Force)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Six_Force (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::SIX_FORCE")
  (make-package "RM_MSGS::SIX_FORCE"))

(in-package "ROS")
;;//! \htmlinclude Six_Force.msg.html


(defclass rm_msgs::Six_Force
  :super ros::object
  :slots (_force ))

(defmethod rm_msgs::Six_Force
  (:init
   (&key
    ((:force __force) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _force __force)
   self)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:serialization-length
   ()
   (+
    ;; float32[6] _force
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _force
     (dotimes (i 6)
       (sys::poke (elt _force i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _force
   (dotimes (i (length _force))
     (setf (elt _force i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get rm_msgs::Six_Force :md5sum-) "dfd1d6e819d24bd888c7dcd848ca7122")
(setf (get rm_msgs::Six_Force :datatype-) "rm_msgs/Six_Force")
(setf (get rm_msgs::Six_Force :definition-)
      "float32[6] force


")



(provide :rm_msgs/Six_Force "dfd1d6e819d24bd888c7dcd848ca7122")


