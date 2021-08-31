from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='talker_with_docker',
            namespace='talker_listener_example',
            executable='talker',
            name='talker'
        ),
        Node(
            package='listener_with_docker',
            namespace='talker_listener_example',
            executable='listener',
            name='listener'
        ),
    ])