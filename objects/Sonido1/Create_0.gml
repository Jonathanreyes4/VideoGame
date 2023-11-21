if (instance_exists(Ch)) {
    audio_play_sound(so_vikingo, 1, false);
}
if (!instance_exists(Ch)) {
    audio_stop_all();
}