
##gps planner

subscribed topics:
    pos320_pose, type is zf_msgs::pos320

published topics:
    gps_waypoints, type is zf_msgs::pose2dArray


###map 
   type is std::vector<Eigen::Vector3d> map
   loaded from a mapfile, filename is filled in line 66
   convert to x,y,z soon after loading it
   so, map is consitituted by (x,y,z)

