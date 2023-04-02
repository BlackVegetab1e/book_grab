;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Force_Position_Move_Joint)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Force_Position_Move_Joint (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::FORCE_POSITION_MOVE_JOINT")
  (make-package "RM_MSGS::FORCE_POSITION_MOVE_JOINT"))

(in-package "ROS")
;;//! \htmlinclude Force_Position_Move_Joint.msg.html


(defclass rm_msgs::Force_Position_Move_Joint
  :super ros::object
  :slots (_joint _sensor _mode _dir _force ))

(defmethod rm_msgs::Force_Position_Move_Joint
  (:init
   (&key
    ((:joint __joint) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:sensor __sensor) 0)
    ((:mode __mode) 0)
    ((:dir __dir) 0)
    ((:force __force) 0)
    )
   (send-super :init)
   (setq _joint __joint)
   (setq _sensor (round __sensor))
   (setq _mode (round __mode))
   (setq _dir (round __dir))
   (setq _force (round __force))
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:sensor
   (&optional __sensor)
   (if __sensor (setq _sensor __sensor)) _sensor)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:serialization-length
   ()
   (+
    ;; float32[6] _joint
    (* 4    6)
    ;; uint8 _sensor
    1
    ;; uint8 _mode
    1
    ;; uint8 _dir
    1
    ;; int16 _force
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _joint
     (dotimes (i 6)
       (sys::poke (elt _joint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8 _sensor
       (write-byte _sensor s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _dir
       (write-byte _dir s)
     ;; int16 _force
       (write-word _force s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _joint
   (dotimes (i (length _joint))
     (setf (elt _joint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; uint8 _sensor
     (setq _sensor (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dir
     (setq _dir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _force
     (setq _force (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::Force_Position_Move_Joint :md5sum-) "289142d2c6dc6949e95e7d291c27112f")
(setf (get rm_msgs::Force_Position_Move_Joint :datatype-) "rm_msgs/Force_Position_Move_Joint")
(setf (get rm_msgs::Force_Position_Move_Joint :definition-)
      "float32[6] joint
uint8 sensor
uint8 mode
uint8 dir
int16 force

")



(provide :rm_msgs/Force_Position_Move_Joint "289142d2c6dc6949e95e7d291c27112f")


