;; Auto-generated. Do not edit!


(when (boundp 'exercise_three::UserInfo)
  (if (not (find-package "EXERCISE_THREE"))
    (make-package "EXERCISE_THREE"))
  (shadow 'UserInfo (find-package "EXERCISE_THREE")))
(unless (find-package "EXERCISE_THREE::USERINFO")
  (make-package "EXERCISE_THREE::USERINFO"))

(in-package "ROS")
;;//! \htmlinclude UserInfo.msg.html


(defclass exercise_three::UserInfo
  :super ros::object
  :slots (_name _age _height ))

(defmethod exercise_three::UserInfo
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _height (float __height))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int8 _age
    1
    ;; float32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int8 _age
       (write-byte _age s)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _age 127) (setq _age (- _age 256)))
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get exercise_three::UserInfo :md5sum-) "f14f2383a6b4e8219d6b0285be325fb0")
(setf (get exercise_three::UserInfo :datatype-) "exercise_three/UserInfo")
(setf (get exercise_three::UserInfo :definition-)
      "string name
int8 age
float32 height
")



(provide :exercise_three/UserInfo "f14f2383a6b4e8219d6b0285be325fb0")


