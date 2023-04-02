;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Arm_Digital_Output)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Arm_Digital_Output (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::ARM_DIGITAL_OUTPUT")
  (make-package "RM_MSGS::ARM_DIGITAL_OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude Arm_Digital_Output.msg.html


(defclass rm_msgs::Arm_Digital_Output
  :super ros::object
  :slots (_num _state ))

(defmethod rm_msgs::Arm_Digital_Output
  (:init
   (&key
    ((:num __num) 0)
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _state __state)
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _num
    1
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _num
       (write-byte _num s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _num
     (setq _num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::Arm_Digital_Output :md5sum-) "65c6f886a7277e2391d226ec90152e72")
(setf (get rm_msgs::Arm_Digital_Output :datatype-) "rm_msgs/Arm_Digital_Output")
(setf (get rm_msgs::Arm_Digital_Output :definition-)
      "uint8 num
bool state

")



(provide :rm_msgs/Arm_Digital_Output "65c6f886a7277e2391d226ec90152e72")


