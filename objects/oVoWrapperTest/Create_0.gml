/// @description ...

// must use full paths since stb_vorbis isn't aware of GM's path stuff
var full_path = working_directory + "klich_pionera.ogg"; // sonic time twisted my beloved
// Клич Пионера - "Всегда будь готов!"

if (!vo_is_available())
	throw "the dll isn't loaded, lol";

show_debug_message("decoding file " + full_path);
var samples_or_error = vo_decode(full_path);
if (samples_or_error <= vo_error_unknown)
	throw "decode error code = " + string(samples_or_error);

var sample_type = buffer_s16;
var channels = vo_get_channels();
var sample_rate = vo_get_sample_rate();
var in_bytes = samples_or_error * buffer_sizeof(sample_type) * channels;

var buff = buffer_create(in_bytes, buffer_fixed, 1);
// force gm into allocating all the underlying memory all at once
buffer_fill(buff, 0, buffer_u8, 0, in_bytes);

show_debug_message("decoded!");
// returns amount of bytes written or an error code
var get_error = vo_get_data(buffer_get_address(buff), in_bytes);
if (get_error <= vo_error_unknown)
	throw "get_data error code = " + string(get_error);
vo_free();

var buffsound = audio_create_buffer_sound(
	buff,
	sample_type,
	sample_rate,
	0,
	in_bytes,
	(channels == 2) ? audio_stereo : audio_mono
);

audio_play_sound(buffsound, 1, true);
