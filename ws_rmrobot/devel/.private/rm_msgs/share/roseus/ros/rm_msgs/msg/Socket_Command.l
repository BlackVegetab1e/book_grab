;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Socket_Command)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Socket_Command (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::SOCKET_COMMAND")
  (make-package "RM_MSGS::SOCKET_COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Socket_Command.msg.html


(defclass rm_msgs::Socket_Command
  :super ros::object
  :slots (_command ))

(defmethod rm_msgs::Socket_Command
  (:init
   (&key
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; uint16 _command
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _command
       (write-word _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _command
     (setq _command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::Socket_Command :md5sum-) "c83874a1c49dbf24b2b8f600399430e1")
(setf (get rm_msgs::Socket_Command :datatype-) "rm_msgs/Socket_Command")
(setf (get rm_msgs::Socket_Command :definition-)
      "#通过Socket控制无序分拣程序，1代表开始，2代表暂停，3代表继续，4代表结束
uint16 command   

")



(provide :rm_msgs/Socket_Command "c83874a1c49dbf24b2b8f600399430e1")


