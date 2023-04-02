;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Tool_Analog_Output)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Tool_Analog_Output (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::TOOL_ANALOG_OUTPUT")
  (make-package "RM_MSGS::TOOL_ANALOG_OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude Tool_Analog_Output.msg.html


(defclass rm_msgs::Tool_Analog_Output
  :super ros::object
  :slots (_voltage ))

(defmethod rm_msgs::Tool_Analog_Output
  (:init
   (&key
    ((:voltage __voltage) 0.0)
    )
   (send-super :init)
   (setq _voltage (float __voltage))
   self)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:serialization-length
   ()
   (+
    ;; float32 _voltage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::Tool_Analog_Output :md5sum-) "403c816563820ece8af98cc50c8ea1ff")
(setf (get rm_msgs::Tool_Analog_Output :datatype-) "rm_msgs/Tool_Analog_Output")
(setf (get rm_msgs::Tool_Analog_Output :definition-)
      "
float32 voltage

")



(provide :rm_msgs/Tool_Analog_Output "403c816563820ece8af98cc50c8ea1ff")


