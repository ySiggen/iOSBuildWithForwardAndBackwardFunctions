#pragma once

#include "il2cpp-config.h"

#ifndef _MSC_VER
# include <alloca.h>
#else
# include <malloc.h>
#endif

#include <stdint.h>

#include "UnityEngine_UnityEngine_MonoBehaviour1158329972.h"
#include "AssemblyU2DCSharp_VideoPlayerHelper_MediaType3153657181.h"
#include "AssemblyU2DCSharp_VideoPlayerHelper_MediaState921245858.h"

// System.String
struct String_t;
// UnityEngine.Texture
struct Texture_t2243626319;
// VideoPlayerHelper
struct VideoPlayerHelper_t1808751630;
// UnityEngine.Texture2D
struct Texture2D_t3542995729;
// UnityEngine.GameObject
struct GameObject_t1756533147;




#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif

// VideoPlaybackBehaviour
struct  VideoPlaybackBehaviour_t222960481  : public MonoBehaviour_t1158329972
{
public:
	// System.String VideoPlaybackBehaviour::m_path
	String_t* ___m_path_2;
	// UnityEngine.Texture VideoPlaybackBehaviour::m_playTexture
	Texture_t2243626319 * ___m_playTexture_3;
	// UnityEngine.Texture VideoPlaybackBehaviour::m_busyTexture
	Texture_t2243626319 * ___m_busyTexture_4;
	// UnityEngine.Texture VideoPlaybackBehaviour::m_errorTexture
	Texture_t2243626319 * ___m_errorTexture_5;
	// System.Boolean VideoPlaybackBehaviour::m_autoPlay
	bool ___m_autoPlay_6;
	// UnityEngine.Texture VideoPlaybackBehaviour::m_backwardTexture
	Texture_t2243626319 * ___m_backwardTexture_7;
	// UnityEngine.Texture VideoPlaybackBehaviour::m_forwardTexture
	Texture_t2243626319 * ___m_forwardTexture_8;
	// VideoPlayerHelper VideoPlaybackBehaviour::mVideoPlayer
	VideoPlayerHelper_t1808751630 * ___mVideoPlayer_10;
	// System.Boolean VideoPlaybackBehaviour::mIsInited
	bool ___mIsInited_11;
	// System.Boolean VideoPlaybackBehaviour::mInitInProgess
	bool ___mInitInProgess_12;
	// System.Boolean VideoPlaybackBehaviour::mAppPaused
	bool ___mAppPaused_13;
	// UnityEngine.Texture2D VideoPlaybackBehaviour::mVideoTexture
	Texture2D_t3542995729 * ___mVideoTexture_14;
	// UnityEngine.Texture VideoPlaybackBehaviour::mKeyframeTexture
	Texture_t2243626319 * ___mKeyframeTexture_15;
	// VideoPlayerHelper/MediaType VideoPlaybackBehaviour::mMediaType
	int32_t ___mMediaType_16;
	// VideoPlayerHelper/MediaState VideoPlaybackBehaviour::mCurrentState
	int32_t ___mCurrentState_17;
	// System.Single VideoPlaybackBehaviour::mSeekPosition
	float ___mSeekPosition_18;
	// System.Boolean VideoPlaybackBehaviour::isPlayableOnTexture
	bool ___isPlayableOnTexture_19;
	// UnityEngine.GameObject VideoPlaybackBehaviour::mIconPlane
	GameObject_t1756533147 * ___mIconPlane_20;
	// System.Boolean VideoPlaybackBehaviour::mIconPlaneActive
	bool ___mIconPlaneActive_21;
	// UnityEngine.GameObject VideoPlaybackBehaviour::mIconPlaneForward
	GameObject_t1756533147 * ___mIconPlaneForward_22;
	// System.Boolean VideoPlaybackBehaviour::mIconPlaneActiveForward
	bool ___mIconPlaneActiveForward_23;
	// UnityEngine.GameObject VideoPlaybackBehaviour::mIconPlaneBackward
	GameObject_t1756533147 * ___mIconPlaneBackward_24;
	// System.Boolean VideoPlaybackBehaviour::mIconPlaneActiveBackward
	bool ___mIconPlaneActiveBackward_25;

public:
	inline static int32_t get_offset_of_m_path_2() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___m_path_2)); }
	inline String_t* get_m_path_2() const { return ___m_path_2; }
	inline String_t** get_address_of_m_path_2() { return &___m_path_2; }
	inline void set_m_path_2(String_t* value)
	{
		___m_path_2 = value;
		Il2CppCodeGenWriteBarrier(&___m_path_2, value);
	}

	inline static int32_t get_offset_of_m_playTexture_3() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___m_playTexture_3)); }
	inline Texture_t2243626319 * get_m_playTexture_3() const { return ___m_playTexture_3; }
	inline Texture_t2243626319 ** get_address_of_m_playTexture_3() { return &___m_playTexture_3; }
	inline void set_m_playTexture_3(Texture_t2243626319 * value)
	{
		___m_playTexture_3 = value;
		Il2CppCodeGenWriteBarrier(&___m_playTexture_3, value);
	}

	inline static int32_t get_offset_of_m_busyTexture_4() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___m_busyTexture_4)); }
	inline Texture_t2243626319 * get_m_busyTexture_4() const { return ___m_busyTexture_4; }
	inline Texture_t2243626319 ** get_address_of_m_busyTexture_4() { return &___m_busyTexture_4; }
	inline void set_m_busyTexture_4(Texture_t2243626319 * value)
	{
		___m_busyTexture_4 = value;
		Il2CppCodeGenWriteBarrier(&___m_busyTexture_4, value);
	}

	inline static int32_t get_offset_of_m_errorTexture_5() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___m_errorTexture_5)); }
	inline Texture_t2243626319 * get_m_errorTexture_5() const { return ___m_errorTexture_5; }
	inline Texture_t2243626319 ** get_address_of_m_errorTexture_5() { return &___m_errorTexture_5; }
	inline void set_m_errorTexture_5(Texture_t2243626319 * value)
	{
		___m_errorTexture_5 = value;
		Il2CppCodeGenWriteBarrier(&___m_errorTexture_5, value);
	}

	inline static int32_t get_offset_of_m_autoPlay_6() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___m_autoPlay_6)); }
	inline bool get_m_autoPlay_6() const { return ___m_autoPlay_6; }
	inline bool* get_address_of_m_autoPlay_6() { return &___m_autoPlay_6; }
	inline void set_m_autoPlay_6(bool value)
	{
		___m_autoPlay_6 = value;
	}

	inline static int32_t get_offset_of_m_backwardTexture_7() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___m_backwardTexture_7)); }
	inline Texture_t2243626319 * get_m_backwardTexture_7() const { return ___m_backwardTexture_7; }
	inline Texture_t2243626319 ** get_address_of_m_backwardTexture_7() { return &___m_backwardTexture_7; }
	inline void set_m_backwardTexture_7(Texture_t2243626319 * value)
	{
		___m_backwardTexture_7 = value;
		Il2CppCodeGenWriteBarrier(&___m_backwardTexture_7, value);
	}

	inline static int32_t get_offset_of_m_forwardTexture_8() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___m_forwardTexture_8)); }
	inline Texture_t2243626319 * get_m_forwardTexture_8() const { return ___m_forwardTexture_8; }
	inline Texture_t2243626319 ** get_address_of_m_forwardTexture_8() { return &___m_forwardTexture_8; }
	inline void set_m_forwardTexture_8(Texture_t2243626319 * value)
	{
		___m_forwardTexture_8 = value;
		Il2CppCodeGenWriteBarrier(&___m_forwardTexture_8, value);
	}

	inline static int32_t get_offset_of_mVideoPlayer_10() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mVideoPlayer_10)); }
	inline VideoPlayerHelper_t1808751630 * get_mVideoPlayer_10() const { return ___mVideoPlayer_10; }
	inline VideoPlayerHelper_t1808751630 ** get_address_of_mVideoPlayer_10() { return &___mVideoPlayer_10; }
	inline void set_mVideoPlayer_10(VideoPlayerHelper_t1808751630 * value)
	{
		___mVideoPlayer_10 = value;
		Il2CppCodeGenWriteBarrier(&___mVideoPlayer_10, value);
	}

	inline static int32_t get_offset_of_mIsInited_11() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mIsInited_11)); }
	inline bool get_mIsInited_11() const { return ___mIsInited_11; }
	inline bool* get_address_of_mIsInited_11() { return &___mIsInited_11; }
	inline void set_mIsInited_11(bool value)
	{
		___mIsInited_11 = value;
	}

	inline static int32_t get_offset_of_mInitInProgess_12() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mInitInProgess_12)); }
	inline bool get_mInitInProgess_12() const { return ___mInitInProgess_12; }
	inline bool* get_address_of_mInitInProgess_12() { return &___mInitInProgess_12; }
	inline void set_mInitInProgess_12(bool value)
	{
		___mInitInProgess_12 = value;
	}

	inline static int32_t get_offset_of_mAppPaused_13() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mAppPaused_13)); }
	inline bool get_mAppPaused_13() const { return ___mAppPaused_13; }
	inline bool* get_address_of_mAppPaused_13() { return &___mAppPaused_13; }
	inline void set_mAppPaused_13(bool value)
	{
		___mAppPaused_13 = value;
	}

	inline static int32_t get_offset_of_mVideoTexture_14() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mVideoTexture_14)); }
	inline Texture2D_t3542995729 * get_mVideoTexture_14() const { return ___mVideoTexture_14; }
	inline Texture2D_t3542995729 ** get_address_of_mVideoTexture_14() { return &___mVideoTexture_14; }
	inline void set_mVideoTexture_14(Texture2D_t3542995729 * value)
	{
		___mVideoTexture_14 = value;
		Il2CppCodeGenWriteBarrier(&___mVideoTexture_14, value);
	}

	inline static int32_t get_offset_of_mKeyframeTexture_15() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mKeyframeTexture_15)); }
	inline Texture_t2243626319 * get_mKeyframeTexture_15() const { return ___mKeyframeTexture_15; }
	inline Texture_t2243626319 ** get_address_of_mKeyframeTexture_15() { return &___mKeyframeTexture_15; }
	inline void set_mKeyframeTexture_15(Texture_t2243626319 * value)
	{
		___mKeyframeTexture_15 = value;
		Il2CppCodeGenWriteBarrier(&___mKeyframeTexture_15, value);
	}

	inline static int32_t get_offset_of_mMediaType_16() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mMediaType_16)); }
	inline int32_t get_mMediaType_16() const { return ___mMediaType_16; }
	inline int32_t* get_address_of_mMediaType_16() { return &___mMediaType_16; }
	inline void set_mMediaType_16(int32_t value)
	{
		___mMediaType_16 = value;
	}

	inline static int32_t get_offset_of_mCurrentState_17() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mCurrentState_17)); }
	inline int32_t get_mCurrentState_17() const { return ___mCurrentState_17; }
	inline int32_t* get_address_of_mCurrentState_17() { return &___mCurrentState_17; }
	inline void set_mCurrentState_17(int32_t value)
	{
		___mCurrentState_17 = value;
	}

	inline static int32_t get_offset_of_mSeekPosition_18() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mSeekPosition_18)); }
	inline float get_mSeekPosition_18() const { return ___mSeekPosition_18; }
	inline float* get_address_of_mSeekPosition_18() { return &___mSeekPosition_18; }
	inline void set_mSeekPosition_18(float value)
	{
		___mSeekPosition_18 = value;
	}

	inline static int32_t get_offset_of_isPlayableOnTexture_19() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___isPlayableOnTexture_19)); }
	inline bool get_isPlayableOnTexture_19() const { return ___isPlayableOnTexture_19; }
	inline bool* get_address_of_isPlayableOnTexture_19() { return &___isPlayableOnTexture_19; }
	inline void set_isPlayableOnTexture_19(bool value)
	{
		___isPlayableOnTexture_19 = value;
	}

	inline static int32_t get_offset_of_mIconPlane_20() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mIconPlane_20)); }
	inline GameObject_t1756533147 * get_mIconPlane_20() const { return ___mIconPlane_20; }
	inline GameObject_t1756533147 ** get_address_of_mIconPlane_20() { return &___mIconPlane_20; }
	inline void set_mIconPlane_20(GameObject_t1756533147 * value)
	{
		___mIconPlane_20 = value;
		Il2CppCodeGenWriteBarrier(&___mIconPlane_20, value);
	}

	inline static int32_t get_offset_of_mIconPlaneActive_21() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mIconPlaneActive_21)); }
	inline bool get_mIconPlaneActive_21() const { return ___mIconPlaneActive_21; }
	inline bool* get_address_of_mIconPlaneActive_21() { return &___mIconPlaneActive_21; }
	inline void set_mIconPlaneActive_21(bool value)
	{
		___mIconPlaneActive_21 = value;
	}

	inline static int32_t get_offset_of_mIconPlaneForward_22() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mIconPlaneForward_22)); }
	inline GameObject_t1756533147 * get_mIconPlaneForward_22() const { return ___mIconPlaneForward_22; }
	inline GameObject_t1756533147 ** get_address_of_mIconPlaneForward_22() { return &___mIconPlaneForward_22; }
	inline void set_mIconPlaneForward_22(GameObject_t1756533147 * value)
	{
		___mIconPlaneForward_22 = value;
		Il2CppCodeGenWriteBarrier(&___mIconPlaneForward_22, value);
	}

	inline static int32_t get_offset_of_mIconPlaneActiveForward_23() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mIconPlaneActiveForward_23)); }
	inline bool get_mIconPlaneActiveForward_23() const { return ___mIconPlaneActiveForward_23; }
	inline bool* get_address_of_mIconPlaneActiveForward_23() { return &___mIconPlaneActiveForward_23; }
	inline void set_mIconPlaneActiveForward_23(bool value)
	{
		___mIconPlaneActiveForward_23 = value;
	}

	inline static int32_t get_offset_of_mIconPlaneBackward_24() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mIconPlaneBackward_24)); }
	inline GameObject_t1756533147 * get_mIconPlaneBackward_24() const { return ___mIconPlaneBackward_24; }
	inline GameObject_t1756533147 ** get_address_of_mIconPlaneBackward_24() { return &___mIconPlaneBackward_24; }
	inline void set_mIconPlaneBackward_24(GameObject_t1756533147 * value)
	{
		___mIconPlaneBackward_24 = value;
		Il2CppCodeGenWriteBarrier(&___mIconPlaneBackward_24, value);
	}

	inline static int32_t get_offset_of_mIconPlaneActiveBackward_25() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481, ___mIconPlaneActiveBackward_25)); }
	inline bool get_mIconPlaneActiveBackward_25() const { return ___mIconPlaneActiveBackward_25; }
	inline bool* get_address_of_mIconPlaneActiveBackward_25() { return &___mIconPlaneActiveBackward_25; }
	inline void set_mIconPlaneActiveBackward_25(bool value)
	{
		___mIconPlaneActiveBackward_25 = value;
	}
};

struct VideoPlaybackBehaviour_t222960481_StaticFields
{
public:
	// System.Boolean VideoPlaybackBehaviour::sLoadingLocked
	bool ___sLoadingLocked_9;

public:
	inline static int32_t get_offset_of_sLoadingLocked_9() { return static_cast<int32_t>(offsetof(VideoPlaybackBehaviour_t222960481_StaticFields, ___sLoadingLocked_9)); }
	inline bool get_sLoadingLocked_9() const { return ___sLoadingLocked_9; }
	inline bool* get_address_of_sLoadingLocked_9() { return &___sLoadingLocked_9; }
	inline void set_sLoadingLocked_9(bool value)
	{
		___sLoadingLocked_9 = value;
	}
};

#ifdef __clang__
#pragma clang diagnostic pop
#endif
