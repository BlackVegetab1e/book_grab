;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ChangeWorkFrame_State)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ChangeWorkFrame_State (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::CHANGEWORKFRAME_STATE")
  (make-package "RM_MSGS::CHANGEWORKFRAME_STATE"))

(in-package "ROS")
;;//! \htmlinclude ChangeWorkFrame_State.msg.html


(defclass rm_msgs::ChangeWorkFrame_State
  :super ros::object
  :slots (_state ))

(defmethod rm_msgs::ChangeWorkFrame_State
  (:init
   (&key
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::ChangeWorkFrame_State :md5sum-) "001fde3cab9e313a150416ff09c08ee4")
(setf (get rm_msgs::ChangeWorkFrame_State :datatype-) "rm_msgs/ChangeWorkFrame_State")
(setf (get rm_msgs::ChangeWorkFrame_State :definition-)
      "bool state

")



(provide :rm_msgs/ChangeWorkFrame_State "001fde3cab9e313a150416ff09c08ee4")


