;; Auto-generated. Do not edit!


(when (boundp 'sixrobot_core_msgs::OpenCamera)
  (if (not (find-package "SIXROBOT_CORE_MSGS"))
    (make-package "SIXROBOT_CORE_MSGS"))
  (shadow 'OpenCamera (find-package "SIXROBOT_CORE_MSGS")))
(unless (find-package "SIXROBOT_CORE_MSGS::OPENCAMERA")
  (make-package "SIXROBOT_CORE_MSGS::OPENCAMERA"))
(unless (find-package "SIXROBOT_CORE_MSGS::OPENCAMERAREQUEST")
  (make-package "SIXROBOT_CORE_MSGS::OPENCAMERAREQUEST"))
(unless (find-package "SIXROBOT_CORE_MSGS::OPENCAMERARESPONSE")
  (make-package "SIXROBOT_CORE_MSGS::OPENCAMERARESPONSE"))

(in-package "ROS")





(defclass sixrobot_core_msgs::OpenCameraRequest
  :super ros::object
  :slots (_name _settings ))

(defmethod sixrobot_core_msgs::OpenCameraRequest
  (:init
   (&key
    ((:name __name) "")
    ((:settings __settings) (instance sixrobot_core_msgs::CameraSettings :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _settings __settings)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:settings
   (&rest __settings)
   (if (keywordp (car __settings))
       (send* _settings __settings)
     (progn
       (if __settings (setq _settings (car __settings)))
       _settings)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; sixrobot_core_msgs/CameraSettings _settings
    (send _settings :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; sixrobot_core_msgs/CameraSettings _settings
       (send _settings :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sixrobot_core_msgs/CameraSettings _settings
     (send _settings :deserialize buf ptr-) (incf ptr- (send _settings :serialization-length))
   ;;
   self)
  )

(defclass sixrobot_core_msgs::OpenCameraResponse
  :super ros::object
  :slots (_err ))

(defmethod sixrobot_core_msgs::OpenCameraResponse
  (:init
   (&key
    ((:err __err) 0)
    )
   (send-super :init)
   (setq _err (round __err))
   self)
  (:err
   (&optional __err)
   (if __err (setq _err __err)) _err)
  (:serialization-length
   ()
   (+
    ;; int32 _err
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _err
       (write-long _err s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _err
     (setq _err (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sixrobot_core_msgs::OpenCamera
  :super ros::object
  :slots ())

(setf (get sixrobot_core_msgs::OpenCamera :md5sum-) "73eacff63d5f9cca2d986614515a5c8c")
(setf (get sixrobot_core_msgs::OpenCamera :datatype-) "sixrobot_core_msgs/OpenCamera")
(setf (get sixrobot_core_msgs::OpenCamera :request) sixrobot_core_msgs::OpenCameraRequest)
(setf (get sixrobot_core_msgs::OpenCamera :response) sixrobot_core_msgs::OpenCameraResponse)

(defmethod sixrobot_core_msgs::OpenCameraRequest
  (:response () (instance sixrobot_core_msgs::OpenCameraResponse :init)))

(setf (get sixrobot_core_msgs::OpenCameraRequest :md5sum-) "73eacff63d5f9cca2d986614515a5c8c")
(setf (get sixrobot_core_msgs::OpenCameraRequest :datatype-) "sixrobot_core_msgs/OpenCameraRequest")
(setf (get sixrobot_core_msgs::OpenCameraRequest :definition-)
      "string          name
CameraSettings  settings

================================================================================
MSG: sixrobot_core_msgs/CameraSettings
int32           width
int32           height
float32         fps
CameraControl[] controls

================================================================================
MSG: sixrobot_core_msgs/CameraControl
int32   id
int32   value

int32 CAMERA_CONTROL_EXPOSURE=100
int32 CAMERA_CONTROL_GAIN=101
int32 CAMERA_CONTROL_WHITE_BALANCE_R=102
int32 CAMERA_CONTROL_WHITE_BALANCE_G=103
int32 CAMERA_CONTROL_WHITE_BALANCE_B=104
int32 CAMERA_CONTROL_WINDOW_X=105
int32 CAMERA_CONTROL_WINDOW_Y=106
int32 CAMERA_CONTROL_FLIP=107
int32 CAMERA_CONTROL_MIRROR=108
int32 CAMERA_CONTROL_RESOLUTION_HALF=109
---
int32           err

")

(setf (get sixrobot_core_msgs::OpenCameraResponse :md5sum-) "73eacff63d5f9cca2d986614515a5c8c")
(setf (get sixrobot_core_msgs::OpenCameraResponse :datatype-) "sixrobot_core_msgs/OpenCameraResponse")
(setf (get sixrobot_core_msgs::OpenCameraResponse :definition-)
      "string          name
CameraSettings  settings

================================================================================
MSG: sixrobot_core_msgs/CameraSettings
int32           width
int32           height
float32         fps
CameraControl[] controls

================================================================================
MSG: sixrobot_core_msgs/CameraControl
int32   id
int32   value

int32 CAMERA_CONTROL_EXPOSURE=100
int32 CAMERA_CONTROL_GAIN=101
int32 CAMERA_CONTROL_WHITE_BALANCE_R=102
int32 CAMERA_CONTROL_WHITE_BALANCE_G=103
int32 CAMERA_CONTROL_WHITE_BALANCE_B=104
int32 CAMERA_CONTROL_WINDOW_X=105
int32 CAMERA_CONTROL_WINDOW_Y=106
int32 CAMERA_CONTROL_FLIP=107
int32 CAMERA_CONTROL_MIRROR=108
int32 CAMERA_CONTROL_RESOLUTION_HALF=109
---
int32           err

")



(provide :sixrobot_core_msgs/OpenCamera "73eacff63d5f9cca2d986614515a5c8c")


