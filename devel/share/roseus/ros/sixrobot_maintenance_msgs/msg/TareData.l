;; Auto-generated. Do not edit!


(when (boundp 'sixrobot_maintenance_msgs::TareData)
  (if (not (find-package "SIXROBOT_MAINTENANCE_MSGS"))
    (make-package "SIXROBOT_MAINTENANCE_MSGS"))
  (shadow 'TareData (find-package "SIXROBOT_MAINTENANCE_MSGS")))
(unless (find-package "SIXROBOT_MAINTENANCE_MSGS::TAREDATA")
  (make-package "SIXROBOT_MAINTENANCE_MSGS::TAREDATA"))

(in-package "ROS")
;;//! \htmlinclude TareData.msg.html


(defclass sixrobot_maintenance_msgs::TareData
  :super ros::object
  :slots (_tuneGravitySpring ))

(defmethod sixrobot_maintenance_msgs::TareData
  (:init
   (&key
    ((:tuneGravitySpring __tuneGravitySpring) nil)
    )
   (send-super :init)
   (setq _tuneGravitySpring __tuneGravitySpring)
   self)
  (:tuneGravitySpring
   (&optional __tuneGravitySpring)
   (if __tuneGravitySpring (setq _tuneGravitySpring __tuneGravitySpring)) _tuneGravitySpring)
  (:serialization-length
   ()
   (+
    ;; bool _tuneGravitySpring
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _tuneGravitySpring
       (if _tuneGravitySpring (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _tuneGravitySpring
     (setq _tuneGravitySpring (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sixrobot_maintenance_msgs::TareData :md5sum-) "241e9c2ceee7da9db50693da0b3f2741")
(setf (get sixrobot_maintenance_msgs::TareData :datatype-) "sixrobot_maintenance_msgs/TareData")
(setf (get sixrobot_maintenance_msgs::TareData :definition-)
      "bool tuneGravitySpring

")



(provide :sixrobot_maintenance_msgs/TareData "241e9c2ceee7da9db50693da0b3f2741")


