; Auto-generated. Do not edit!


(cl:in-package beacon_gazebo_sim-msg)


;//! \htmlinclude ReceiverIn.msg.html

(cl:defclass <ReceiverIn> (roslisp-msg-protocol:ros-message)
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
   (rssi
    :reader rssi
    :initarg :rssi
    :type cl:float
    :initform 0.0)
   (m_rssi
    :reader m_rssi
    :initarg :m_rssi
    :type cl:float
    :initform 0.0))
)

(cl:defclass ReceiverIn (<ReceiverIn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReceiverIn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReceiverIn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beacon_gazebo_sim-msg:<ReceiverIn> is deprecated: use beacon_gazebo_sim-msg:ReceiverIn instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ReceiverIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beacon_gazebo_sim-msg:id-val is deprecated.  Use beacon_gazebo_sim-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <ReceiverIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beacon_gazebo_sim-msg:time_stamp-val is deprecated.  Use beacon_gazebo_sim-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'rssi-val :lambda-list '(m))
(cl:defmethod rssi-val ((m <ReceiverIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beacon_gazebo_sim-msg:rssi-val is deprecated.  Use beacon_gazebo_sim-msg:rssi instead.")
  (rssi m))

(cl:ensure-generic-function 'm_rssi-val :lambda-list '(m))
(cl:defmethod m_rssi-val ((m <ReceiverIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beacon_gazebo_sim-msg:m_rssi-val is deprecated.  Use beacon_gazebo_sim-msg:m_rssi instead.")
  (m_rssi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReceiverIn>) ostream)
  "Serializes a message object of type '<ReceiverIn>"
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rssi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'm_rssi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReceiverIn>) istream)
  "Deserializes a message object of type '<ReceiverIn>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rssi) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm_rssi) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReceiverIn>)))
  "Returns string type for a message object of type '<ReceiverIn>"
  "beacon_gazebo_sim/ReceiverIn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReceiverIn)))
  "Returns string type for a message object of type 'ReceiverIn"
  "beacon_gazebo_sim/ReceiverIn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReceiverIn>)))
  "Returns md5sum for a message object of type '<ReceiverIn>"
  "1cb78d561031d7e03dfaf8eabce68fe2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReceiverIn)))
  "Returns md5sum for a message object of type 'ReceiverIn"
  "1cb78d561031d7e03dfaf8eabce68fe2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReceiverIn>)))
  "Returns full string definition for message of type '<ReceiverIn>"
  (cl:format cl:nil "string id~%time time_stamp~%float64 rssi~%float64 m_rssi~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReceiverIn)))
  "Returns full string definition for message of type 'ReceiverIn"
  (cl:format cl:nil "string id~%time time_stamp~%float64 rssi~%float64 m_rssi~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReceiverIn>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReceiverIn>))
  "Converts a ROS message object to a list"
  (cl:list 'ReceiverIn
    (cl:cons ':id (id msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':rssi (rssi msg))
    (cl:cons ':m_rssi (m_rssi msg))
))
