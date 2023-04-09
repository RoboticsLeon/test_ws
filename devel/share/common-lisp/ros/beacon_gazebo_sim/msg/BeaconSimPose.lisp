; Auto-generated. Do not edit!


(cl:in-package beacon_gazebo_sim-msg)


;//! \htmlinclude BeaconSimPose.msg.html

(cl:defclass <BeaconSimPose> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:real
    :initform 0)
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass BeaconSimPose (<BeaconSimPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BeaconSimPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BeaconSimPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beacon_gazebo_sim-msg:<BeaconSimPose> is deprecated: use beacon_gazebo_sim-msg:BeaconSimPose instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <BeaconSimPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beacon_gazebo_sim-msg:id-val is deprecated.  Use beacon_gazebo_sim-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <BeaconSimPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beacon_gazebo_sim-msg:time_stamp-val is deprecated.  Use beacon_gazebo_sim-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <BeaconSimPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beacon_gazebo_sim-msg:frame_id-val is deprecated.  Use beacon_gazebo_sim-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <BeaconSimPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beacon_gazebo_sim-msg:position-val is deprecated.  Use beacon_gazebo_sim-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BeaconSimPose>) ostream)
  "Serializes a message object of type '<BeaconSimPose>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BeaconSimPose>) istream)
  "Deserializes a message object of type '<BeaconSimPose>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BeaconSimPose>)))
  "Returns string type for a message object of type '<BeaconSimPose>"
  "beacon_gazebo_sim/BeaconSimPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BeaconSimPose)))
  "Returns string type for a message object of type 'BeaconSimPose"
  "beacon_gazebo_sim/BeaconSimPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BeaconSimPose>)))
  "Returns md5sum for a message object of type '<BeaconSimPose>"
  "f8d8b1b45348d9f15bc89abfd901786e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BeaconSimPose)))
  "Returns md5sum for a message object of type 'BeaconSimPose"
  "f8d8b1b45348d9f15bc89abfd901786e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BeaconSimPose>)))
  "Returns full string definition for message of type '<BeaconSimPose>"
  (cl:format cl:nil "string id~%time time_stamp~%string frame_id~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BeaconSimPose)))
  "Returns full string definition for message of type 'BeaconSimPose"
  (cl:format cl:nil "string id~%time time_stamp~%string frame_id~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BeaconSimPose>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     8
     4 (cl:length (cl:slot-value msg 'frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BeaconSimPose>))
  "Converts a ROS message object to a list"
  (cl:list 'BeaconSimPose
    (cl:cons ':id (id msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':position (position msg))
))
