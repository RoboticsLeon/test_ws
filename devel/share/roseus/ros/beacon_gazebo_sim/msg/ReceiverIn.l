;; Auto-generated. Do not edit!


(when (boundp 'beacon_gazebo_sim::ReceiverIn)
  (if (not (find-package "BEACON_GAZEBO_SIM"))
    (make-package "BEACON_GAZEBO_SIM"))
  (shadow 'ReceiverIn (find-package "BEACON_GAZEBO_SIM")))
(unless (find-package "BEACON_GAZEBO_SIM::RECEIVERIN")
  (make-package "BEACON_GAZEBO_SIM::RECEIVERIN"))

(in-package "ROS")
;;//! \htmlinclude ReceiverIn.msg.html


(defclass beacon_gazebo_sim::ReceiverIn
  :super ros::object
  :slots (_id _time_stamp _rssi _m_rssi ))

(defmethod beacon_gazebo_sim::ReceiverIn
  (:init
   (&key
    ((:id __id) "")
    ((:time_stamp __time_stamp) (instance ros::time :init))
    ((:rssi __rssi) 0.0)
    ((:m_rssi __m_rssi) 0.0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _time_stamp __time_stamp)
   (setq _rssi (float __rssi))
   (setq _m_rssi (float __m_rssi))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:m_rssi
   (&optional __m_rssi)
   (if __m_rssi (setq _m_rssi __m_rssi)) _m_rssi)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; time _time_stamp
    8
    ;; float64 _rssi
    8
    ;; float64 _m_rssi
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; time _time_stamp
       (write-long (send _time_stamp :sec) s) (write-long (send _time_stamp :nsec) s)
     ;; float64 _rssi
       (sys::poke _rssi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m_rssi
       (sys::poke _m_rssi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _time_stamp
     (send _time_stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _rssi
     (setq _rssi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m_rssi
     (setq _m_rssi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get beacon_gazebo_sim::ReceiverIn :md5sum-) "1cb78d561031d7e03dfaf8eabce68fe2")
(setf (get beacon_gazebo_sim::ReceiverIn :datatype-) "beacon_gazebo_sim/ReceiverIn")
(setf (get beacon_gazebo_sim::ReceiverIn :definition-)
      "string id
time time_stamp
float64 rssi
float64 m_rssi


")



(provide :beacon_gazebo_sim/ReceiverIn "1cb78d561031d7e03dfaf8eabce68fe2")


