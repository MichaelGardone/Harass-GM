enum e_state
{
	wander, // Wandering the map
	chase,  // Chase the player
	attack, // Initiate attack sequence
	stunned // Player broke free, or used an item, stunned/locked into place
}