// Collision event: oFireOrb with oPlayer
with (other) {
    alive = false;  // Mark the player as dead
    sprite_index = sDeath;  // Change to death animation
    audio_play_sound(sndDeath, 1, false);  // Play the death sound effect
    
    // Trigger respawn using alarm
    alarm[0] = respawn_time;  // Start respawn countdown
}
