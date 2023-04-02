;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Stop)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Stop (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::STOP")
  (make-package "RM_MSGS::STOP"))

(in-package "ROS")
;;//! \htmlinclude Stop.msg.html


(defclass rm_msgs::Stop
  :super ros::object
  :slots (_state ))

(defmethod rm_msgs::Stop
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

(setf (get rm_msgs::Stop :md5sum-) "001fde3cab9e313a150416ff09c08ee4")
(setf (get rm_msgs::Stop :datatype-) "rm_msgs/Stop")
(setf (get rm_msgs::Stop :definition-)
      "bool state

")



(provide :rm_msgs/Stop "001fde3cab9e313a150416ff09c08ee4")


