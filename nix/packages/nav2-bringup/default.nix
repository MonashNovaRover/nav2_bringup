{ lib
, nav2-bringup
, xacro
, robot-state-publisher
, navigation2
, turtlebot3-gazebo
, gazebo-ros
, pluginlib 
}:

nav2-bringup.overrideAttrs ( { ... }: {
  pname = "nova-nav2-bringup";
  version = "git";

  src = builtins.path rec {
    name = "nova-nav2-bringup-source";
    path = ../../..;
    filter = lib.novaSourceFilter [ ] path;
  };
  
  passthru.workspacePackages = {
    inherit
      xacro
      robot-state-publisher
      navigation2
      turtlebot3-gazebo
      gazebo-ros
      pluginlib;
  };
})

# { lib
# , buildRosPackage
# , ament-cmake
# , rosidl-default-generators
# , std-msgs
# , nav-msgs
# , trajectory-msgs
# , launch
# , launch-ros
# , xacro
# , robot-state-publisher
# , controller-manager
# , ros2-control
# , gazebo-ros
# , gazebo-ros2-control
# , ros2-controllers
# , pluginlib
# }:

# buildRosPackage {
#   name = "nova-nav2-bringup";
#   buildType = "ament_cmake";

#   src = builtins.path rec {
#     name = "nova-nav2-bringup-source";
#     path = ../../..;
#     filter = lib.novaSourceFilter [ ] path;
#   };

# }
