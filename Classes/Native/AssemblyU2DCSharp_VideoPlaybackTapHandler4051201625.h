﻿#pragma once

#include "il2cpp-config.h"

#ifndef _MSC_VER
# include <alloca.h>
#else
# include <malloc.h>
#endif

#include <stdint.h>

#include "AssemblyU2DCSharp_TapHandler3409799063.h"

// PlayVideo
struct PlayVideo_t2858951647;




#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif

// VideoPlaybackTapHandler
struct  VideoPlaybackTapHandler_t4051201625  : public TapHandler_t3409799063
{
public:
	// PlayVideo VideoPlaybackTapHandler::mPlayVideo
	PlayVideo_t2858951647 * ___mPlayVideo_5;

public:
	inline static int32_t get_offset_of_mPlayVideo_5() { return static_cast<int32_t>(offsetof(VideoPlaybackTapHandler_t4051201625, ___mPlayVideo_5)); }
	inline PlayVideo_t2858951647 * get_mPlayVideo_5() const { return ___mPlayVideo_5; }
	inline PlayVideo_t2858951647 ** get_address_of_mPlayVideo_5() { return &___mPlayVideo_5; }
	inline void set_mPlayVideo_5(PlayVideo_t2858951647 * value)
	{
		___mPlayVideo_5 = value;
		Il2CppCodeGenWriteBarrier(&___mPlayVideo_5, value);
	}
};

#ifdef __clang__
#pragma clang diagnostic pop
#endif
