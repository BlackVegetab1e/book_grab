;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Arm_Analog_Output)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Arm_Analog_Output (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::ARM_ANALOG_OUTPUT")
  (make-package "RM_MSGS::ARM_ANALOG_OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude Arm_Analog_Output.msg.html


(defclass rm_msgs::Arm_Analog_Output
  :super ros::object
  :slots (_num _voltage ))

(defmethod rm_msgs::Arm_Analog_Output
  (:init
   (&key
    ((:num __num) 0)
    ((:voltage __voltage) 0.0)
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _voltage (float __voltage))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:serialization-length
   ()
   (+
    ;; uint8 _num
    1
    ;; float32 _voltage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _num
       (write-byte _num s)
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _num
     (setq _num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::Arm_Analog_Output :md5sum-) "1daa7069f6c6dbf96541a8c8a3620c76")
(setf (get rm_msgs::Arm_Analog_Output :datatype-) "rm_msgs/Arm_Analog_Output")
(setf (get rm_msgs::Arm_Analog_Output :definition-)
      "uint8 num
float32 voltage

")



(provide :rm_msgs/Arm_Analog_Output "1daa7069f6c6dbf96541a8c8a3620c76")


