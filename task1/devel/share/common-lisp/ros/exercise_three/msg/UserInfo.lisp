; Auto-generated. Do not edit!


(cl:in-package exercise_three-msg)


;//! \htmlinclude UserInfo.msg.html

(cl:defclass <UserInfo> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass UserInfo (<UserInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UserInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UserInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exercise_three-msg:<UserInfo> is deprecated: use exercise_three-msg:UserInfo instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <UserInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_three-msg:name-val is deprecated.  Use exercise_three-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <UserInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_three-msg:age-val is deprecated.  Use exercise_three-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <UserInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_three-msg:height-val is deprecated.  Use exercise_three-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UserInfo>) ostream)
  "Serializes a message object of type '<UserInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UserInfo>) istream)
  "Deserializes a message object of type '<UserInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UserInfo>)))
  "Returns string type for a message object of type '<UserInfo>"
  "exercise_three/UserInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UserInfo)))
  "Returns string type for a message object of type 'UserInfo"
  "exercise_three/UserInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UserInfo>)))
  "Returns md5sum for a message object of type '<UserInfo>"
  "f14f2383a6b4e8219d6b0285be325fb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UserInfo)))
  "Returns md5sum for a message object of type 'UserInfo"
  "f14f2383a6b4e8219d6b0285be325fb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UserInfo>)))
  "Returns full string definition for message of type '<UserInfo>"
  (cl:format cl:nil "string name~%int8 age~%float32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UserInfo)))
  "Returns full string definition for message of type 'UserInfo"
  (cl:format cl:nil "string name~%int8 age~%float32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UserInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UserInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'UserInfo
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':height (height msg))
))
