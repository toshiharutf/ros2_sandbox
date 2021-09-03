from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='client_server_example',
            namespace='client_server_example',
            executable='server',
            name='server'
        ),
        Node(
            package='client_server_example',
            namespace='client_server_example',
            executable='client',
            name='client'
        ),
    ])