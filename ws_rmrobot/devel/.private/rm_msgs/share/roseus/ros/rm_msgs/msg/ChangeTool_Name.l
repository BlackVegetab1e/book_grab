;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ChangeTool_Name)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ChangeTool_Name (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::CHANGETOOL_NAME")
  (make-package "RM_MSGS::CHANGETOOL_NAME"))

(in-package "ROS")
;;//! \htmlinclude ChangeTool_Name.msg.html


(defclass rm_msgs::ChangeTool_Name
  :super ros::object
  :slots (_toolname ))

(defmethod rm_msgs::ChangeTool_Name
  (:init
   (&key
    ((:toolname __toolname) "")
    )
   (send-super :init)
   (setq _toolname (string __toolname))
   self)
  (:toolname
   (&optional __toolname)
   (if __toolname (setq _toolname __toolname)) _toolname)
  (:serialization-length
   ()
   (+
    ;; string _toolname
    4 (length _toolname)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _toolname
       (write-long (length _toolname) s) (princ _toolname s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _toolname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _toolname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rm_msgs::ChangeTool_Name :md5sum-) "2709e8bad159c90e287065a72644b48d")
(setf (get rm_msgs::ChangeTool_Name :datatype-) "rm_msgs/ChangeTool_Name")
(setf (get rm_msgs::ChangeTool_Name :definition-)
      "string toolname

")



(provide :rm_msgs/ChangeTool_Name "2709e8bad159c90e287065a72644b48d")


