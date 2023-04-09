
(cl:in-package :asdf)

(defsystem "beacon_gazebo_sim-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "BeaconSimPose" :depends-on ("_package_BeaconSimPose"))
    (:file "_package_BeaconSimPose" :depends-on ("_package"))
    (:file "ReceiverIn" :depends-on ("_package_ReceiverIn"))
    (:file "_package_ReceiverIn" :depends-on ("_package"))
    (:file "ReceiverInSyncPacked" :depends-on ("_package_ReceiverInSyncPacked"))
    (:file "_package_ReceiverInSyncPacked" :depends-on ("_package"))
  ))