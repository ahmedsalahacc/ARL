#!/usr/bin/env
import rospy
from std_msgs.msg import String

# constants
NODE_NAME = 'user_driver_info'
TOPIC_NAME = 'raw_data'
SAMPLING_TIME = 1

# main function
def main():
    # settings
    rospy.init_node(NODE_NAME, anonymous=True)
    rospy.loginfo(f"Node {NODE_NAME} started publishing in topic /{TOPIC_NAME}")
    publisher = rospy.Publisher(TOPIC_NAME,String, queue_size=10)
    rate = rospy.Rate(1/SAMPLING_TIME)

    # begin listeining
    while not rospy.is_shutdown():
        # publish message
        msg = "name: Rose, age:20, height:170"
        publisher.publish(msg)

        # sleep for 1/SAMPLING_TIME hz
        rate.sleep()


if __name__=="__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        rospy.logerr(f"error executing node f{NODE_NAME}")