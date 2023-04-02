;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Pos_Teach)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Pos_Teach (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::POS_TEACH")
  (make-package "RM_MSGS::POS_TEACH"))

(in-package "ROS")
;;//! \htmlinclude Pos_Teach.msg.html


(defclass rm_msgs::Pos_Teach
  :super ros::object
  :slots (_teach_type _direction _v ))

(defmethod rm_msgs::Pos_Teach
  (:init
   (&key
    ((:teach_type __teach_type) "")
    ((:direction __direction) "")
    ((:v __v) 0)
    )
   (send-super :init)
   (setq _teach_type (string __teach_type))
   (setq _direction (string __direction))
   (setq _v (round __v))
   self)
  (:teach_type
   (&optional __teach_type)
   (if __teach_type (setq _teach_type __teach_type)) _teach_type)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:serialization-length
   ()
   (+
    ;; string _teach_type
    4 (length _teach_type)
    ;; string _direction
    4 (length _direction)
    ;; int16 _v
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _teach_type
       (write-long (length _teach_type) s) (princ _teach_type s)
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;; int16 _v
       (write-word _v s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _teach_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _teach_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _v
     (setq _v (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::Pos_Teach :md5sum-) "34da3e35edafae2adfbdcd46acdb6bd9")
(setf (get rm_msgs::Pos_Teach :datatype-) "rm_msgs/Pos_Teach")
(setf (get rm_msgs::Pos_Teach :definition-)
      "string teach_type
string direction
int16 v

")



(provide :rm_msgs/Pos_Teach "34da3e35edafae2adfbdcd46acdb6bd9")


