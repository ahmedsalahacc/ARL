import rospy
from std_msgs.msg import String
from exercise_three.msg import UserInfo

# constants
NODE_NAME = 'data_processing'
TOPIC_NAME = 'raw_data'

publisher = rospy.Publisher('user_info',String,queue_size=10)

def callback(data):
    # marking arrival
    rospy.loginfo(data)

    # preprocessing data
    data = f'name: {data.name}, age:{data.age}, height:{data.height}'
    
    # publishing new message
    global publisher
    publisher.publish(data)


# main function
def main():
    rospy.init_node(NODE_NAME,anonymous=True)
    subscriber = rospy.Subscriber(TOPIC_NAME,UserInfo,callback=callback)
    rospy.loginfo(f"Node {NODE_NAME} is listening to topic {TOPIC_NAME}")
    rospy.spin()
    


if __name__=="__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        rospy.logerr(f"Unexpected error happened in node f{NODE_NAME}")