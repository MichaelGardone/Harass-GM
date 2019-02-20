// Init the states
Scr_States();

// Ints
x_spd = 0;
dir = 1;
patrol_spd = 2;
chase_spd = 2.5;

// Enemy Hitbox Information
dist_far_trig = 300; // Facing
dist_near_trig = 100; // Not looking, "hears" player
lost = 50; // Distance the player needs to be from the enemy to lose them

// Initial state -- do not touch! should always be wandering
state = e_state.wander;
