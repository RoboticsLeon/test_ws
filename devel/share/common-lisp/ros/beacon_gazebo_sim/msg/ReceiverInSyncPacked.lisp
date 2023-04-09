; Auto-generated. Do not edit!


(cl:in-package beacon_gazebo_sim-msg)


;//! \htmlinclude ReceiverInSyncPacked.msg.html

(cl:defclass <ReceiverInSyncPacked> (roslisp-msg-protocol:ros-message)
  ((time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:real
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector beacon_gazebo_sim-msg:ReceiverIn)
   :initform (cl:make-array 0 :element-type 'beacon_gazebo_sim-msg:ReceiverIn :initial-element (cl:make-instance 'beacon_gazebo_sim-msg:ReceiverIn))))
)

(cl:defclass ReceiverInSyncPacked (<ReceiverInSyncPacked>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReceiverInSyncPacked>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReceiverInSyncPacked)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beacon_gazebo_sim-msg:<ReceiverInSyncPacked> is deprecated: use beacon_gazebo_sim-msg:ReceiverInSyncPacked instead.")))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <ReceiverInSyncPacked>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beacon_gazebo_sim-msg:time_stamp-val is deprecated.  Use beacon_gazebo_sim-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ReceiverInSyncPacked>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beacon_gazebo_sim-msg:data-val is deprecated.  Use beacon_gazebo_sim-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReceiverInSyncPacked>) ostream)
  "Serializes a message object of type '<ReceiverInSyncPacked>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_stamp) (cl:floor (cl:slot-value msg 'time_stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReceiverInSyncPacked>) istream)
  "Deserializes a message object of type '<ReceiverInSyncPacked>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'beacon_gazebo_sim-msg:ReceiverIn))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReceiverInSyncPacked>)))
  "Returns string type for a message object of type '<ReceiverInSyncPacked>"
  "beacon_gazebo_sim/ReceiverInSyncPacked")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReceiverInSyncPacked)))
  "Returns string type for a message object of type 'ReceiverInSyncPacked"
  "beacon_gazebo_sim/ReceiverInSyncPacked")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReceiverInSyncPacked>)))
  "Returns md5sum for a message object of type '<ReceiverInSyncPacked>"
  "ea7c14885d84104c4b0075142703bfe5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReceiverInSyncPacked)))
  "Returns md5sum for a message object of type 'ReceiverInSyncPacked"
  "ea7c14885d84104c4b0075142703bfe5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReceiverInSyncPacked>)))
  "Returns full string definition for message of type '<ReceiverInSyncPacked>"
  (cl:format cl:nil "time time_stamp~%beacon_gazebo_sim/ReceiverIn[] data~%~%~%================================================================================~%MSG: beacon_gazebo_sim/ReceiverIn~%string id~%time time_stamp~%float64 rssi~%float64 m_rssi~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReceiverInSyncPacked)))
  "Returns full string definition for message of type 'ReceiverInSyncPacked"
  (cl:format cl:nil "time time_stamp~%beacon_gazebo_sim/ReceiverIn[] data~%~%~%================================================================================~%MSG: beacon_gazebo_sim/ReceiverIn~%string id~%time time_stamp~%float64 rssi~%float64 m_rssi~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReceiverInSyncPacked>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReceiverInSyncPacked>))
  "Converts a ROS message object to a list"
  (cl:list 'ReceiverInSyncPacked
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':data (data msg))
))
