;; Auto-generated. Do not edit!


(when (boundp 'sixrobot_maintenance_msgs::TareEnable)
  (if (not (find-package "SIXROBOT_MAINTENANCE_MSGS"))
    (make-package "SIXROBOT_MAINTENANCE_MSGS"))
  (shadow 'TareEnable (find-package "SIXROBOT_MAINTENANCE_MSGS")))
(unless (find-package "SIXROBOT_MAINTENANCE_MSGS::TAREENABLE")
  (make-package "SIXROBOT_MAINTENANCE_MSGS::TAREENABLE"))

(in-package "ROS")
;;//! \htmlinclude TareEnable.msg.html


(defclass sixrobot_maintenance_msgs::TareEnable
  :super ros::object
  :slots (_isEnabled _uid _data ))

(defmethod sixrobot_maintenance_msgs::TareEnable
  (:init
   (&key
    ((:isEnabled __isEnabled) nil)
    ((:uid __uid) "")
    ((:data __data) (instance sixrobot_maintenance_msgs::TareData :init))
    )
   (send-super :init)
   (setq _isEnabled __isEnabled)
   (setq _uid (string __uid))
   (setq _data __data)
   self)
  (:isEnabled
   (&optional __isEnabled)
   (if __isEnabled (setq _isEnabled __isEnabled)) _isEnabled)
  (:uid
   (&optional __uid)
   (if __uid (setq _uid __uid)) _uid)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; bool _isEnabled
    1
    ;; string _uid
    4 (length _uid)
    ;; sixrobot_maintenance_msgs/TareData _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isEnabled
       (if _isEnabled (write-byte -1 s) (write-byte 0 s))
     ;; string _uid
       (write-long (length _uid) s) (princ _uid s)
     ;; sixrobot_maintenance_msgs/TareData _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isEnabled
     (setq _isEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _uid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sixrobot_maintenance_msgs/TareData _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get sixrobot_maintenance_msgs::TareEnable :md5sum-) "1d38ec0923789ab928453d933bef8c51")
(setf (get sixrobot_maintenance_msgs::TareEnable :datatype-) "sixrobot_maintenance_msgs/TareEnable")
(setf (get sixrobot_maintenance_msgs::TareEnable :definition-)
      "bool isEnabled
string uid
TareData data

================================================================================
MSG: sixrobot_maintenance_msgs/TareData
bool tuneGravitySpring

")



(provide :sixrobot_maintenance_msgs/TareEnable "1d38ec0923789ab928453d933bef8c51")


