import rospy
from exercise_three.msg import UserInfo
# constants
NODE_NAME = 'user_info_driver'
TOPIC_NAME = 'raw_data'
SAMPLING_TIME = 1

# main function
def main():
    #settings
    rospy.init_node(NODE_NAME,anonymous=True)
    publisher = rospy.Publisher(TOPIC_NAME,UserInfo,queue_size=10)
    rate = rospy.Rate(1/SAMPLING_TIME)

    # listening
    rospy.loginfo(f"Starting node {NODE_NAME} is pubishing in  {TOPIC_NAME}")
    while not rospy.is_shutdown():
        # creating message object
        msg = UserInfo()
        msg.name = "Rose"
        msg.age = 20
        msg.height = 170
        # publish message
        publisher.publish(msg)
        rate.sleep()
    

if __name__=="__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        rospy.logerr(f"Unexpected error happened in node f{NODE_NAME}")