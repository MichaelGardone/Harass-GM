
// Reset patrol from last room
len = path_get_length(patrol);
for (i = 0; i < len; i++)
	path_delete_point(patrol, i);

// loop through all nodes in room, add them to the path from left to right
