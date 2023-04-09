;; Auto-generated. Do not edit!


(when (boundp 'beacon_gazebo_sim::BeaconSimPose)
  (if (not (find-package "BEACON_GAZEBO_SIM"))
    (make-package "BEACON_GAZEBO_SIM"))
  (shadow 'BeaconSimPose (find-package "BEACON_GAZEBO_SIM")))
(unless (find-package "BEACON_GAZEBO_SIM::BEACONSIMPOSE")
  (make-package "BEACON_GAZEBO_SIM::BEACONSIMPOSE"))

(in-package "ROS")
;;//! \htmlinclude BeaconSimPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass beacon_gazebo_sim::BeaconSimPose
  :super ros::object
  :slots (_id _time_stamp _frame_id _position ))

(defmethod beacon_gazebo_sim::BeaconSimPose
  (:init
   (&key
    ((:id __id) "")
    ((:time_stamp __time_stamp) (instance ros::time :init))
    ((:frame_id __frame_id) "")
    ((:position __position) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _time_stamp __time_stamp)
   (setq _frame_id (string __frame_id))
   (setq _position __position)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; time _time_stamp
    8
    ;; string _frame_id
    4 (length _frame_id)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; time _time_stamp
       (write-long (send _time_stamp :sec) s) (write-long (send _time_stamp :nsec) s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _time_stamp
     (send _time_stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(setf (get beacon_gazebo_sim::BeaconSimPose :md5sum-) "f8d8b1b45348d9f15bc89abfd901786e")
(setf (get beacon_gazebo_sim::BeaconSimPose :datatype-) "beacon_gazebo_sim/BeaconSimPose")
(setf (get beacon_gazebo_sim::BeaconSimPose :definition-)
      "string id
time time_stamp
string frame_id
geometry_msgs/Point position

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :beacon_gazebo_sim/BeaconSimPose "f8d8b1b45348d9f15bc89abfd901786e")


