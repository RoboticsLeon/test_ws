;; Auto-generated. Do not edit!


(when (boundp 'beacon_gazebo_sim::ReceiverInSyncPacked)
  (if (not (find-package "BEACON_GAZEBO_SIM"))
    (make-package "BEACON_GAZEBO_SIM"))
  (shadow 'ReceiverInSyncPacked (find-package "BEACON_GAZEBO_SIM")))
(unless (find-package "BEACON_GAZEBO_SIM::RECEIVERINSYNCPACKED")
  (make-package "BEACON_GAZEBO_SIM::RECEIVERINSYNCPACKED"))

(in-package "ROS")
;;//! \htmlinclude ReceiverInSyncPacked.msg.html


(defclass beacon_gazebo_sim::ReceiverInSyncPacked
  :super ros::object
  :slots (_time_stamp _data ))

(defmethod beacon_gazebo_sim::ReceiverInSyncPacked
  (:init
   (&key
    ((:time_stamp __time_stamp) (instance ros::time :init))
    ((:data __data) ())
    )
   (send-super :init)
   (setq _time_stamp __time_stamp)
   (setq _data __data)
   self)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
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
    ;; time _time_stamp
    8
    ;; beacon_gazebo_sim/ReceiverIn[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time_stamp
       (write-long (send _time_stamp :sec) s) (write-long (send _time_stamp :nsec) s)
     ;; beacon_gazebo_sim/ReceiverIn[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time_stamp
     (send _time_stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; beacon_gazebo_sim/ReceiverIn[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance beacon_gazebo_sim::ReceiverIn :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get beacon_gazebo_sim::ReceiverInSyncPacked :md5sum-) "ea7c14885d84104c4b0075142703bfe5")
(setf (get beacon_gazebo_sim::ReceiverInSyncPacked :datatype-) "beacon_gazebo_sim/ReceiverInSyncPacked")
(setf (get beacon_gazebo_sim::ReceiverInSyncPacked :definition-)
      "time time_stamp
beacon_gazebo_sim/ReceiverIn[] data


================================================================================
MSG: beacon_gazebo_sim/ReceiverIn
string id
time time_stamp
float64 rssi
float64 m_rssi


")



(provide :beacon_gazebo_sim/ReceiverInSyncPacked "ea7c14885d84104c4b0075142703bfe5")


