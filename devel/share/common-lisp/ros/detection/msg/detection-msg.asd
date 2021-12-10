
(cl:in-package :asdf)

(defsystem "detection-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "bbox" :depends-on ("_package_bbox"))
    (:file "_package_bbox" :depends-on ("_package"))
  ))