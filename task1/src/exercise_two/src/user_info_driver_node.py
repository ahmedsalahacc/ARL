import rospy
from std_msgs.msg import Float32, Int16, String

if __name__=="__main__":
    try:
        main()
    except rospy.InterruptedError:
        pass