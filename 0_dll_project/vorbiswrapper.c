#ifdef _WIN32
#define WIN32_LEAN_AND_MEAN 1
#define NOMINMAX 1
#include <Windows.h>
#define voex __declspec(dllexport)
#define vocall __cdecl
#else
#define voex __attribute__ ((visibility ("default")))
#define vocall /* */
#endif

#include "stb_vorbis.h"

typedef double gmreal;
typedef const char* gmstring;
typedef int* gmpointer;

static struct {
	int channels, sample_rate, data_length;
	short *data;
} last_decode_state;

static void vo_free_last_decode() {
	if (last_decode_state.data) {
		free(last_decode_state.data);
	}

	last_decode_state.channels = 0;
	last_decode_state.sample_rate = 0;
	last_decode_state.data_length = 0;
	last_decode_state.data = NULL;
}

voex gmreal vocall vo_get_channels() {
	return last_decode_state.channels;
}

voex gmreal vocall vo_get_sample_rate() {
	return last_decode_state.sample_rate;
}

voex gmreal vocall vo_get_data_length() {
	return last_decode_state.data_length;
}

voex gmreal vocall vo_get_data(gmpointer buffer, gmreal buffersize) {
	if (last_decode_state.data_length <= 0 || !last_decode_state.data)
		return -1; // no file was opened, darnit

	if (!buffer || buffersize <= 0)
		return -2; // there's no data on your side, darnit

	size_t total_data_length = sizeof(short) * (size_t)last_decode_state.data_length * (size_t)last_decode_state.channels;
	size_t gm_length = (size_t)buffersize;
	if (gm_length < total_data_length)
		return -2; // there is data on your side, but not enough, lol
	// do allow *more* gm memory than ours though... callee might pool buffers or w/e

	memcpy(buffer, last_decode_state.data, total_data_length);
	return (gmreal)total_data_length;
}

voex gmreal vocall vo_free() {
	vo_free_last_decode();
	return 1;
}

voex gmreal vocall vo_is_available() {
	return 1;
}

voex gmreal vocall vo_decode(gmstring filename) {
	vo_free_last_decode();
	last_decode_state.data_length = stb_vorbis_decode_filename(
		filename,
		&last_decode_state.channels,
		&last_decode_state.sample_rate,
		&last_decode_state.data
	);
	return last_decode_state.data_length;
}
