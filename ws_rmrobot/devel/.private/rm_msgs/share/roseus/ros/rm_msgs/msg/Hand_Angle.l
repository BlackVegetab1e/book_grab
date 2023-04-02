;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Hand_Angle)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Hand_Angle (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::HAND_ANGLE")
  (make-package "RM_MSGS::HAND_ANGLE"))

(in-package "ROS")
;;//! \htmlinclude Hand_Angle.msg.html


(defclass rm_msgs::Hand_Angle
  :super ros::object
  :slots (_hand_angle ))

(defmethod rm_msgs::Hand_Angle
  (:init
   (&key
    ((:hand_angle __hand_angle) (make-array 6 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _hand_angle __hand_angle)
   self)
  (:hand_angle
   (&optional __hand_angle)
   (if __hand_angle (setq _hand_angle __hand_angle)) _hand_angle)
  (:serialization-length
   ()
   (+
    ;; int16[6] _hand_angle
    (* 2    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[6] _hand_angle
     (dotimes (i 6)
       (write-word (elt _hand_angle i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[6] _hand_angle
   (dotimes (i (length _hand_angle))
     (setf (elt _hand_angle i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get rm_msgs::Hand_Angle :md5sum-) "4a9a6c1a34f95837a03024846b0ba9d8")
(setf (get rm_msgs::Hand_Angle :datatype-) "rm_msgs/Hand_Angle")
(setf (get rm_msgs::Hand_Angle :definition-)
      "#设置灵巧手角度，灵巧手有 6 个自由度，从 1~6 分别为小拇指，无名指，中指，食指，大拇指弯曲，大拇指旋转

int16[6] hand_angle	#手指角度数组，范围：0~1000.另外，-1 代表该自由度不执行任何操作，保持当前状态

")



(provide :rm_msgs/Hand_Angle "4a9a6c1a34f95837a03024846b0ba9d8")


