;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::LiftState)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'LiftState (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::LIFTSTATE")
  (make-package "RM_MSGS::LIFTSTATE"))

(in-package "ROS")
;;//! \htmlinclude LiftState.msg.html


(defclass rm_msgs::LiftState
  :super ros::object
  :slots (_height _current _err_flag _mode ))

(defmethod rm_msgs::LiftState
  (:init
   (&key
    ((:height __height) 0)
    ((:current __current) 0)
    ((:err_flag __err_flag) 0)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _height (round __height))
   (setq _current (round __current))
   (setq _err_flag (round __err_flag))
   (setq _mode (round __mode))
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:err_flag
   (&optional __err_flag)
   (if __err_flag (setq _err_flag __err_flag)) _err_flag)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int16 _height
    2
    ;; int16 _current
    2
    ;; uint16 _err_flag
    2
    ;; byte _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _height
       (write-word _height s)
     ;; int16 _current
       (write-word _current s)
     ;; uint16 _err_flag
       (write-word _err_flag s)
     ;; byte _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _height
     (setq _height (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _current
     (setq _current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _err_flag
     (setq _err_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; byte _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(setf (get rm_msgs::LiftState :md5sum-) "c5ca7de51eef8dade42274475c73f94f")
(setf (get rm_msgs::LiftState :datatype-) "rm_msgs/LiftState")
(setf (get rm_msgs::LiftState :definition-)
      "int16 height	#当前高度
int16 current	#当前电流
uint16 err_flag	#驱动错误代码
byte mode	#当前升降状态，0-空闲，1-正方向速度运动，2-正方向位置运动，3-负方向速度运动，4-负方向位置运动


")



(provide :rm_msgs/LiftState "c5ca7de51eef8dade42274475c73f94f")


