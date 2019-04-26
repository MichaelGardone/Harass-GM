// STATES ONCE
drawn = 0;
alarm[0] = room_speed * 4

// LOCATIONS
loc[0] = "to the store."
loc[1] = "to work."
loc[2] = "to the park."
loc[3] = "to the mall."
loc[4] = "to the library."
loc[5] = "to your friend's house."
loc[6] = "to church."
loc[7] = "to a party."
loc[8] = "to a coffee shop."
loc[9] = "to your home."

randomize();
str_temp = irandom_range(0, array_length_1d(loc) - 1);
//str_temp = choose(array_length_1d(loc))
