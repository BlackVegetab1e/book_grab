;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Stop_Teach)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Stop_Teach (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::STOP_TEACH")
  (make-package "RM_MSGS::STOP_TEACH"))

(in-package "ROS")
;;//! \htmlinclude Stop_Teach.msg.html


(defclass rm_msgs::Stop_Teach
  :super ros::object
  :slots (_command ))

(defmethod rm_msgs::Stop_Teach
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rm_msgs::Stop_Teach :md5sum-) "cba5e21e920a3a2b7b375cb65b64cdea")
(setf (get rm_msgs::Stop_Teach :datatype-) "rm_msgs/Stop_Teach")
(setf (get rm_msgs::Stop_Teach :definition-)
      "string command



")



(provide :rm_msgs/Stop_Teach "cba5e21e920a3a2b7b375cb65b64cdea")


