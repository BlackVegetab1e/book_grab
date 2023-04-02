;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Joint_Enable)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Joint_Enable (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::JOINT_ENABLE")
  (make-package "RM_MSGS::JOINT_ENABLE"))

(in-package "ROS")
;;//! \htmlinclude Joint_Enable.msg.html


(defclass rm_msgs::Joint_Enable
  :super ros::object
  :slots (_joint_num _state ))

(defmethod rm_msgs::Joint_Enable
  (:init
   (&key
    ((:joint_num __joint_num) 0)
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _joint_num (round __joint_num))
   (setq _state __state)
   self)
  (:joint_num
   (&optional __joint_num)
   (if __joint_num (setq _joint_num __joint_num)) _joint_num)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _joint_num
    1
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _joint_num
       (write-byte _joint_num s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _joint_num
     (setq _joint_num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::Joint_Enable :md5sum-) "ab2d35ff908d2a87842afeb3b5107389")
(setf (get rm_msgs::Joint_Enable :datatype-) "rm_msgs/Joint_Enable")
(setf (get rm_msgs::Joint_Enable :definition-)
      "#对指定关节进行使能操作
uint8 joint_num     #对应关节序号，从基座到机械臂手爪端，序号依次为1～6
bool state          #true-上使能，false-掉使能

")



(provide :rm_msgs/Joint_Enable "ab2d35ff908d2a87842afeb3b5107389")


