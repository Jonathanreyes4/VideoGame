pause = !pause;

if (pause) {
	audio_pause_all();
} else {
	surface_free(pauseSurface);
	instance_activate_all();
	audio_resume_all();
}