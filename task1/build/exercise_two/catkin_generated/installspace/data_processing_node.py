import rospy
from std_msgs.msg import String, Int8, Float32

# constants
NODE_NAME = 'data_processing'
TOPIC_NAME = 'raw_data'

publisher_name = rospy.Publisher('name', String, queue_size=10)
publisher_age = rospy.Publisher('age', Int8, queue_size=10)
publisher_height = rospy.Publisher('height', Float32, queue_size=10)


# callback function
def callback(msg):
    # preprocessig message
    msg = msg.data.replace(':',' ')
    msg = msg.split()

    # extracting features
    name = msg[1][:-1]
    age = int(msg[3][:-1])
    height = int(msg[-1])

    # logging results
    rospy.loginfo(f'---------')
    rospy.loginfo(f'Name:{name}')
    rospy.loginfo(f'Age:{age}')
    rospy.loginfo(f'Height:{height}')

    # publishing in different topics
    global publisher_name, publisher_age,\
        publisher_height

    publisher_name.publish(name)
    publisher_age.publish(Int8(age))
    publisher_height.publish(Float32(height))

# main function
def main():
    rospy.init_node(NODE_NAME, anonymous=True)
    rospy.loginfo(f"Node {NODE_NAME} started listening to topic /{TOPIC_NAME}")
    rospy.Subscriber(TOPIC_NAME, String, callback=callback)
    rospy.spin()

if __name__=="__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        rospy.logerr("Something happened, aborting")