;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Arm_IO_State)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Arm_IO_State (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::ARM_IO_STATE")
  (make-package "RM_MSGS::ARM_IO_STATE"))

(in-package "ROS")
;;//! \htmlinclude Arm_IO_State.msg.html


(defclass rm_msgs::Arm_IO_State
  :super ros::object
  :slots (_Arm_Digital_Input _Arm_Analog_Input ))

(defmethod rm_msgs::Arm_IO_State
  (:init
   (&key
    ((:Arm_Digital_Input __Arm_Digital_Input) (let (r) (dotimes (i 3) (push nil r)) r))
    ((:Arm_Analog_Input __Arm_Analog_Input) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _Arm_Digital_Input __Arm_Digital_Input)
   (setq _Arm_Analog_Input __Arm_Analog_Input)
   self)
  (:Arm_Digital_Input
   (&optional __Arm_Digital_Input)
   (if __Arm_Digital_Input (setq _Arm_Digital_Input __Arm_Digital_Input)) _Arm_Digital_Input)
  (:Arm_Analog_Input
   (&optional __Arm_Analog_Input)
   (if __Arm_Analog_Input (setq _Arm_Analog_Input __Arm_Analog_Input)) _Arm_Analog_Input)
  (:serialization-length
   ()
   (+
    ;; bool[3] _Arm_Digital_Input
    (* 1    3)
    ;; float32[4] _Arm_Analog_Input
    (* 4    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[3] _Arm_Digital_Input
     (dotimes (i 3)
       (if (elt _Arm_Digital_Input i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float32[4] _Arm_Analog_Input
     (dotimes (i 4)
       (sys::poke (elt _Arm_Analog_Input i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[3] _Arm_Digital_Input
   (dotimes (i (length _Arm_Digital_Input))
     (setf (elt _Arm_Digital_Input i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; float32[4] _Arm_Analog_Input
   (dotimes (i (length _Arm_Analog_Input))
     (setf (elt _Arm_Analog_Input i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get rm_msgs::Arm_IO_State :md5sum-) "dba6b2c7dc8fed61c5893347742c9c44")
(setf (get rm_msgs::Arm_IO_State :datatype-) "rm_msgs/Arm_IO_State")
(setf (get rm_msgs::Arm_IO_State :definition-)
      "bool[3] Arm_Digital_Input
float32[4] Arm_Analog_Input

")



(provide :rm_msgs/Arm_IO_State "dba6b2c7dc8fed61c5893347742c9c44")


