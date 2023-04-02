;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Force_Position_State)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Force_Position_State (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::FORCE_POSITION_STATE")
  (make-package "RM_MSGS::FORCE_POSITION_STATE"))

(in-package "ROS")
;;//! \htmlinclude Force_Position_State.msg.html


(defclass rm_msgs::Force_Position_State
  :super ros::object
  :slots (_joint _force _arm_err ))

(defmethod rm_msgs::Force_Position_State
  (:init
   (&key
    ((:joint __joint) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:force __force) 0.0)
    ((:arm_err __arm_err) 0)
    )
   (send-super :init)
   (setq _joint __joint)
   (setq _force (float __force))
   (setq _arm_err (round __arm_err))
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:arm_err
   (&optional __arm_err)
   (if __arm_err (setq _arm_err __arm_err)) _arm_err)
  (:serialization-length
   ()
   (+
    ;; float32[6] _joint
    (* 4    6)
    ;; float32 _force
    4
    ;; uint16 _arm_err
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
     ;; float32 _force
       (sys::poke _force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _arm_err
       (write-word _arm_err s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _joint
   (dotimes (i (length _joint))
     (setf (elt _joint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _force
     (setq _force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _arm_err
     (setq _arm_err (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::Force_Position_State :md5sum-) "3dfce38cb0562062290b24383d516d1c")
(setf (get rm_msgs::Force_Position_State :datatype-) "rm_msgs/Force_Position_State")
(setf (get rm_msgs::Force_Position_State :definition-)
      "float32[6] joint
float32 force
uint16 arm_err

")



(provide :rm_msgs/Force_Position_State "3dfce38cb0562062290b24383d516d1c")


