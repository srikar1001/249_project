;; Auto-generated. Do not edit!


(when (boundp 'detection::bbox)
  (if (not (find-package "DETECTION"))
    (make-package "DETECTION"))
  (shadow 'bbox (find-package "DETECTION")))
(unless (find-package "DETECTION::BBOX")
  (make-package "DETECTION::BBOX"))

(in-package "ROS")
;;//! \htmlinclude bbox.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass detection::bbox
  :super ros::object
  :slots (_header _x_coord _y_coord _x_extent _y_extent _distance _num ))

(defmethod detection::bbox
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x_coord __x_coord) (make-array 0 :initial-element 0 :element-type :integer))
    ((:y_coord __y_coord) (make-array 0 :initial-element 0 :element-type :integer))
    ((:x_extent __x_extent) (make-array 0 :initial-element 0 :element-type :integer))
    ((:y_extent __y_extent) (make-array 0 :initial-element 0 :element-type :integer))
    ((:distance __distance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:num __num) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _x_coord __x_coord)
   (setq _y_coord __y_coord)
   (setq _x_extent __x_extent)
   (setq _y_extent __y_extent)
   (setq _distance __distance)
   (setq _num (round __num))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x_coord
   (&optional __x_coord)
   (if __x_coord (setq _x_coord __x_coord)) _x_coord)
  (:y_coord
   (&optional __y_coord)
   (if __y_coord (setq _y_coord __y_coord)) _y_coord)
  (:x_extent
   (&optional __x_extent)
   (if __x_extent (setq _x_extent __x_extent)) _x_extent)
  (:y_extent
   (&optional __y_extent)
   (if __y_extent (setq _y_extent __y_extent)) _y_extent)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _x_coord
    (* 4    (length _x_coord)) 4
    ;; int32[] _y_coord
    (* 4    (length _y_coord)) 4
    ;; int32[] _x_extent
    (* 4    (length _x_extent)) 4
    ;; int32[] _y_extent
    (* 4    (length _y_extent)) 4
    ;; float32[] _distance
    (* 4    (length _distance)) 4
    ;; int32 _num
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _x_coord
     (write-long (length _x_coord) s)
     (dotimes (i (length _x_coord))
       (write-long (elt _x_coord i) s)
       )
     ;; int32[] _y_coord
     (write-long (length _y_coord) s)
     (dotimes (i (length _y_coord))
       (write-long (elt _y_coord i) s)
       )
     ;; int32[] _x_extent
     (write-long (length _x_extent) s)
     (dotimes (i (length _x_extent))
       (write-long (elt _x_extent i) s)
       )
     ;; int32[] _y_extent
     (write-long (length _y_extent) s)
     (dotimes (i (length _y_extent))
       (write-long (elt _y_extent i) s)
       )
     ;; float32[] _distance
     (write-long (length _distance) s)
     (dotimes (i (length _distance))
       (sys::poke (elt _distance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _num
       (write-long _num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _x_coord
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_coord (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _x_coord i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _y_coord
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_coord (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _y_coord i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _x_extent
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_extent (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _x_extent i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _y_extent
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_extent (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _y_extent i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _distance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _distance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _num
     (setq _num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get detection::bbox :md5sum-) "21b40598f11f486566b15cdf70feebe3")
(setf (get detection::bbox :datatype-) "detection/bbox")
(setf (get detection::bbox :definition-)
      "Header header
int32[] x_coord
int32[] y_coord
int32[] x_extent
int32[] y_extent
float32[] distance
int32 num

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :detection/bbox "21b40598f11f486566b15cdf70feebe3")


