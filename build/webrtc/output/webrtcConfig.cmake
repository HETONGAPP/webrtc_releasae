set(webrtc_INSTALL_PREFIX "${CMAKE_CURRENT_LIST_DIR}")
get_filename_component(webrtc_INSTALL_PREFIX "${webrtc_INSTALL_PREFIX}" PATH)
get_filename_component(webrtc_INSTALL_PREFIX "${webrtc_INSTALL_PREFIX}" PATH)
get_filename_component(webrtc_INSTALL_PREFIX "${webrtc_INSTALL_PREFIX}" PATH)

set(webrtc_INCLUDE_DIRS "${webrtc_INSTALL_PREFIX}/include;${webrtc_INSTALL_PREFIX}/include/webrtc/3rdparty;${webrtc_INSTALL_PREFIX}/include/webrtc")
set(webrtc_DEFINITIONS "-DUSE_UDEV -DUSE_AURA=1 -DUSE_GLIB=1 -DUSE_NSS_CERTS=1 -DUSE_X11=1 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FORTIFY_SOURCE=2 -DNDEBUG -DNVALGRIND -DDYNAMIC_ANNOTATIONS_ENABLED=0 -DWEBRTC_ENABLE_PROTOBUF=0 -DWEBRTC_INCLUDE_INTERNAL_AUDIO_DEVICE -DRTC_ENABLE_VP9 -DHAVE_SCTP -DWEBRTC_LIBRARY_IMPL -DWEBRTC_NON_STATIC_TRACE_EVENT_HANDLERS=1 -DWEBRTC_POSIX -DWEBRTC_LINUX -DABSL_ALLOCATOR_NOTHROW=1 -DHAVE_SCTP")
set(webrtc_LIBRARIES "webrtc;webrtc_common_video;webrtc_generic_frame_descriptor;webrtc_common_audio_avx2;webrtc_common_audio_sse2;webrtc_common_audio;webrtc_common_audio_c;webrtc_fir_filter_factory;webrtc_common_audio_cc;webrtc_spl_sqrt_floor;webrtc_fft_size_256;webrtc_fft_size_128;webrtc_module_api;webrtc_video_processing;webrtc_video_processing_sse2;webrtc_audio_device_impl;webrtc_audio_device_generic;webrtc_audio_device_buffer;webrtc_video_capture_module;webrtc_g711_c;webrtc_audio_coding_opus_common;webrtc_isac_vad;webrtc_audio_network_adaptor;webrtc_audio_coding;webrtc_g722;webrtc_legacy_encoded_audio_frame;webrtc_g722_c;webrtc_multiopus;webrtc_cng;webrtc_g711;webrtc_audio_encoder_cng;webrtc_opus_wrapper;webrtc_opus;webrtc_ilbc_c;webrtc_isac_c;webrtc_pcm16b;webrtc_red;webrtc_audio_network_adaptor_config;webrtc_isac;webrtc_pcm16b_c;webrtc_ilbc;webrtc_neteq;webrtc_primitives;webrtc_desktop_capture_differ_sse2;webrtc_desktop_capture_generic;webrtc_utility;webrtc_congestion_controller;webrtc_transport_feedback;webrtc_control_handler;webrtc_estimators;webrtc_goog_cc;webrtc_delay_based_bwe;webrtc_loss_based_controller;webrtc_alr_detector;webrtc_probe_controller;webrtc_link_capacity_estimator;webrtc_pushback_controller;webrtc_pacing;webrtc_interval_budget;webrtc_audio_mixer_impl;webrtc_audio_frame_manipulator;webrtc_rtp_rtcp;webrtc_rtp_video_header;webrtc_rtp_rtcp_format;webrtc_nack_module;webrtc_video_coding_utility;webrtc_encoded_frame;webrtc_vp9_helpers;webrtc_chain_diff_calculator;webrtc_vp9;webrtc_video_codec_interface;webrtc_vp8;webrtc_frame_dependencies_calculator;webrtc_video_coding;webrtc_vp8_temporal_layers;webrtc_h264;webrtc_multiplex;webrtc_aom_av1_encoder;webrtc_aom_av1_decoder;webrtc_remote_bitrate_estimator;webrtc_g722_3p;webrtc_g711_3p;webrtc_fft;webrtc_audio_buffer;webrtc_audio_processing;webrtc_optionally_built_submodule_creators;webrtc_voice_detection;webrtc_apm_logging;webrtc_config;webrtc_audio_processing_statistics;webrtc_audio_frame_proxies;webrtc_high_pass_filter;webrtc_api;webrtc_ns;webrtc_gain_applier;webrtc_biquad_filter;webrtc_adaptive_digital;webrtc_common;webrtc_noise_level_estimator;webrtc_fixed_digital;webrtc_level_estimation_agc;webrtc_rnn_vad_with_level;webrtc_rnn_vad;webrtc_null_aec_dump_factory;webrtc_agc;webrtc_legacy_agc;webrtc_level_estimation;webrtc_aecm_core;webrtc_pffft_wrapper;webrtc_legacy_delay_estimator;webrtc_cascaded_biquad_filter;webrtc_aec3;webrtc_transient_suppressor_impl;webrtc_vad;webrtc_rtc_stats;webrtc_fake_video_codecs;webrtc_rtc_constants;webrtc_rtc_encoder_simulcast_proxy;webrtc_rtc_h264_profile_id;webrtc_rtc_media_base;webrtc_rtc_internal_video_codecs;webrtc_rtc_data;webrtc_rtc_vp9_profile;webrtc_rtc_simulcast_encoder_adapter;webrtc_rtc_audio_video;webrtc_event;webrtc_frame_dumping_decoder;webrtc_video;webrtc_video_stream_encoder_impl;webrtc_video_adaptation;webrtc_fake_network;webrtc_simulated_network;webrtc_rtp_sender;webrtc_rtp_receiver;webrtc_video_stream_api;webrtc_call;webrtc_bitrate_allocator;webrtc_call_interfaces;webrtc_bitrate_configurator;webrtc_rtp_interfaces;webrtc_resource_adaptation;webrtc_metrics;webrtc_field_trial;webrtc_system_wrappers;webrtc_cpu_features_linux;webrtc_audio;webrtc_audio_frame_operations;webrtc_audio_format_to_string;webrtc_checks;webrtc_weak_ptr;webrtc_rate_limiter;webrtc_rtc_task_queue_libevent;webrtc_rtc_numerics;webrtc_platform_thread_types;webrtc_criticalsection;webrtc_rtc_base_approved;webrtc_logging;webrtc_rtc_base;webrtc_rtc_event;webrtc_platform_thread;webrtc_stringutils;webrtc_timeutils;webrtc_rtc_task_queue;webrtc_file_wrapper;webrtc_sequence_checker;webrtc_mutex;webrtc_yield_policy;webrtc_yield;webrtc_rw_lock_wrapper;webrtc_sent_packet;webrtc_timestamp_extrapolator;webrtc_quality_scaler_settings;webrtc_normalize_simulcast_size_experiment;webrtc_quality_rampup_experiment;webrtc_cpu_speed_experiment;webrtc_rate_control_settings;webrtc_jitter_upper_bound_experiment;webrtc_field_trial_parser;webrtc_quality_scaling_experiment;webrtc_alr_experiment;webrtc_balanced_degradation_settings;webrtc_stable_target_rate_experiment;webrtc_min_video_bitrate_experiment;webrtc_rtt_mult_experiment;webrtc_keyframe_interval_settings_experiment;webrtc_pending_task_safety_flag;webrtc_repeating_task;webrtc_fifo_buffer;webrtc_aligned_malloc;webrtc_base64;webrtc_sigslot;webrtc_rtc_error;webrtc_media_stream_interface;webrtc_rtp_headers;webrtc_rtp_parameters;webrtc_create_peerconnection_factory;webrtc_ice_transport_factory;webrtc_rtc_event_log_output_file;webrtc_rtp_packet_info;webrtc_jingle_peerconnection_api;webrtc_audio_options_api;webrtc_transport_api;webrtc_builtin_audio_encoder_factory;webrtc_builtin_audio_decoder_factory;webrtc_audio_codecs_api;webrtc_audio_encoder_g722;webrtc_audio_decoder_g722;webrtc_audio_decoder_L16;webrtc_audio_encoder_L16;webrtc_audio_encoder_ilbc;webrtc_audio_decoder_ilbc;webrtc_audio_decoder_g711;webrtc_audio_encoder_g711;webrtc_audio_encoder_opus_config;webrtc_audio_encoder_multiopus;webrtc_audio_encoder_opus;webrtc_audio_decoder_multiopus;webrtc_audio_decoder_opus;webrtc_audio_encoder_isac_float;webrtc_audio_decoder_isac_float;webrtc_options;webrtc_frequency;webrtc_data_size;webrtc_timestamp;webrtc_time_delta;webrtc_data_rate;webrtc_default_task_queue_factory;webrtc_task_queue;webrtc_rtc_event_log;webrtc_rtc_event_log_factory;webrtc_video_frame;webrtc_video_frame_i420;webrtc_video_stream_encoder_create;webrtc_video_frame_i010;webrtc_builtin_video_bitrate_allocator_factory;webrtc_video_rtp_headers;webrtc_video_bitrate_allocation;webrtc_encoded_image;webrtc_video_bitrate_allocator;webrtc_aec3_factory;webrtc_audio_frame_api;webrtc_aec3_config;webrtc_network_control;webrtc_bitrate_settings;webrtc_field_trial_based_config;webrtc_vp8_temporal_layers_factory;webrtc_builtin_video_decoder_factory;webrtc_rtc_software_fallback_wrappers;webrtc_video_codecs_api;webrtc_builtin_video_encoder_factory;webrtc_aom_nasm;webrtc_aom;webrtc_pffft;webrtc_srtp;webrtc_vpx;webrtc_vpx_asm;webrtc_yuv_internal;webrtc_boringssl;webrtc_usrsctp;webrtc_rtc_event_video;webrtc_rtc_event_rtp_rtcp;webrtc_rtc_event_log_impl_encoder;webrtc_rtc_event_audio;webrtc_rtc_event_pacing;webrtc_rtc_event_bwe;webrtc_ice_log;webrtc_rtc_stream_config;webrtc_stunprober;webrtc_rtc_p2p;webrtc_peerconnection;webrtc_media_protocol_names;webrtc_rtc_pc_base;webrtc_ext_aom_nasm;webrtc_ext_aom;webrtc_ext_pffft;webrtc_ext_srtp;webrtc_ext_vpx;webrtc_ext_vpx_asm;webrtc_ext_yuv_internal;webrtc_ext_opus;webrtc_ext_boringssl;webrtc_ext_usrsctp")

add_library(webrtc STATIC IMPORTED)
set_property(TARGET webrtc PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc.a")

add_library(webrtc_common_video STATIC IMPORTED)
set_property(TARGET webrtc_common_video PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_common_video.a")

add_library(webrtc_generic_frame_descriptor STATIC IMPORTED)
set_property(TARGET webrtc_generic_frame_descriptor PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_generic_frame_descriptor.a")

add_library(webrtc_common_audio_avx2 STATIC IMPORTED)
set_property(TARGET webrtc_common_audio_avx2 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_common_audio_avx2.a")

add_library(webrtc_common_audio_sse2 STATIC IMPORTED)
set_property(TARGET webrtc_common_audio_sse2 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_common_audio_sse2.a")

add_library(webrtc_common_audio STATIC IMPORTED)
set_property(TARGET webrtc_common_audio PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_common_audio.a")

add_library(webrtc_common_audio_c STATIC IMPORTED)
set_property(TARGET webrtc_common_audio_c PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_common_audio_c.a")

add_library(webrtc_fir_filter_factory STATIC IMPORTED)
set_property(TARGET webrtc_fir_filter_factory PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_fir_filter_factory.a")

add_library(webrtc_common_audio_cc STATIC IMPORTED)
set_property(TARGET webrtc_common_audio_cc PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_common_audio_cc.a")

add_library(webrtc_spl_sqrt_floor STATIC IMPORTED)
set_property(TARGET webrtc_spl_sqrt_floor PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_spl_sqrt_floor.a")

add_library(webrtc_fft_size_256 STATIC IMPORTED)
set_property(TARGET webrtc_fft_size_256 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_fft_size_256.a")

add_library(webrtc_fft_size_128 STATIC IMPORTED)
set_property(TARGET webrtc_fft_size_128 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_fft_size_128.a")

add_library(webrtc_module_api STATIC IMPORTED)
set_property(TARGET webrtc_module_api PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_module_api.a")

add_library(webrtc_video_processing STATIC IMPORTED)
set_property(TARGET webrtc_video_processing PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_processing.a")

add_library(webrtc_video_processing_sse2 STATIC IMPORTED)
set_property(TARGET webrtc_video_processing_sse2 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_processing_sse2.a")

add_library(webrtc_audio_device_impl STATIC IMPORTED)
set_property(TARGET webrtc_audio_device_impl PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_device_impl.a")

add_library(webrtc_audio_device_generic STATIC IMPORTED)
set_property(TARGET webrtc_audio_device_generic PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_device_generic.a")

add_library(webrtc_audio_device_buffer STATIC IMPORTED)
set_property(TARGET webrtc_audio_device_buffer PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_device_buffer.a")

add_library(webrtc_video_capture_module STATIC IMPORTED)
set_property(TARGET webrtc_video_capture_module PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_capture_module.a")

add_library(webrtc_g711_c STATIC IMPORTED)
set_property(TARGET webrtc_g711_c PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_g711_c.a")

add_library(webrtc_audio_coding_opus_common STATIC IMPORTED)
set_property(TARGET webrtc_audio_coding_opus_common PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_coding_opus_common.a")

add_library(webrtc_isac_vad STATIC IMPORTED)
set_property(TARGET webrtc_isac_vad PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_isac_vad.a")

add_library(webrtc_audio_network_adaptor STATIC IMPORTED)
set_property(TARGET webrtc_audio_network_adaptor PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_network_adaptor.a")

add_library(webrtc_audio_coding STATIC IMPORTED)
set_property(TARGET webrtc_audio_coding PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_coding.a")

add_library(webrtc_g722 STATIC IMPORTED)
set_property(TARGET webrtc_g722 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_g722.a")

add_library(webrtc_legacy_encoded_audio_frame STATIC IMPORTED)
set_property(TARGET webrtc_legacy_encoded_audio_frame PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_legacy_encoded_audio_frame.a")

add_library(webrtc_g722_c STATIC IMPORTED)
set_property(TARGET webrtc_g722_c PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_g722_c.a")

add_library(webrtc_multiopus STATIC IMPORTED)
set_property(TARGET webrtc_multiopus PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_multiopus.a")

add_library(webrtc_cng STATIC IMPORTED)
set_property(TARGET webrtc_cng PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_cng.a")

add_library(webrtc_g711 STATIC IMPORTED)
set_property(TARGET webrtc_g711 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_g711.a")

add_library(webrtc_audio_encoder_cng STATIC IMPORTED)
set_property(TARGET webrtc_audio_encoder_cng PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_encoder_cng.a")

add_library(webrtc_opus_wrapper STATIC IMPORTED)
set_property(TARGET webrtc_opus_wrapper PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_opus_wrapper.a")

add_library(webrtc_opus STATIC IMPORTED)
set_property(TARGET webrtc_opus PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_opus.a")

add_library(webrtc_ilbc_c STATIC IMPORTED)
set_property(TARGET webrtc_ilbc_c PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ilbc_c.a")

add_library(webrtc_isac_c STATIC IMPORTED)
set_property(TARGET webrtc_isac_c PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_isac_c.a")

add_library(webrtc_pcm16b STATIC IMPORTED)
set_property(TARGET webrtc_pcm16b PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_pcm16b.a")

add_library(webrtc_red STATIC IMPORTED)
set_property(TARGET webrtc_red PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_red.a")

add_library(webrtc_audio_network_adaptor_config STATIC IMPORTED)
set_property(TARGET webrtc_audio_network_adaptor_config PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_network_adaptor_config.a")

add_library(webrtc_isac STATIC IMPORTED)
set_property(TARGET webrtc_isac PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_isac.a")

add_library(webrtc_pcm16b_c STATIC IMPORTED)
set_property(TARGET webrtc_pcm16b_c PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_pcm16b_c.a")

add_library(webrtc_ilbc STATIC IMPORTED)
set_property(TARGET webrtc_ilbc PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ilbc.a")

add_library(webrtc_neteq STATIC IMPORTED)
set_property(TARGET webrtc_neteq PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_neteq.a")

add_library(webrtc_primitives STATIC IMPORTED)
set_property(TARGET webrtc_primitives PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_primitives.a")

add_library(webrtc_desktop_capture_differ_sse2 STATIC IMPORTED)
set_property(TARGET webrtc_desktop_capture_differ_sse2 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_desktop_capture_differ_sse2.a")

add_library(webrtc_desktop_capture_generic STATIC IMPORTED)
set_property(TARGET webrtc_desktop_capture_generic PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_desktop_capture_generic.a")

add_library(webrtc_utility STATIC IMPORTED)
set_property(TARGET webrtc_utility PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_utility.a")

add_library(webrtc_congestion_controller STATIC IMPORTED)
set_property(TARGET webrtc_congestion_controller PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_congestion_controller.a")

add_library(webrtc_transport_feedback STATIC IMPORTED)
set_property(TARGET webrtc_transport_feedback PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_transport_feedback.a")

add_library(webrtc_control_handler STATIC IMPORTED)
set_property(TARGET webrtc_control_handler PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_control_handler.a")

add_library(webrtc_estimators STATIC IMPORTED)
set_property(TARGET webrtc_estimators PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_estimators.a")

add_library(webrtc_goog_cc STATIC IMPORTED)
set_property(TARGET webrtc_goog_cc PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_goog_cc.a")

add_library(webrtc_delay_based_bwe STATIC IMPORTED)
set_property(TARGET webrtc_delay_based_bwe PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_delay_based_bwe.a")

add_library(webrtc_loss_based_controller STATIC IMPORTED)
set_property(TARGET webrtc_loss_based_controller PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_loss_based_controller.a")

add_library(webrtc_alr_detector STATIC IMPORTED)
set_property(TARGET webrtc_alr_detector PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_alr_detector.a")

add_library(webrtc_probe_controller STATIC IMPORTED)
set_property(TARGET webrtc_probe_controller PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_probe_controller.a")

add_library(webrtc_link_capacity_estimator STATIC IMPORTED)
set_property(TARGET webrtc_link_capacity_estimator PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_link_capacity_estimator.a")

add_library(webrtc_pushback_controller STATIC IMPORTED)
set_property(TARGET webrtc_pushback_controller PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_pushback_controller.a")

add_library(webrtc_pacing STATIC IMPORTED)
set_property(TARGET webrtc_pacing PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_pacing.a")

add_library(webrtc_interval_budget STATIC IMPORTED)
set_property(TARGET webrtc_interval_budget PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_interval_budget.a")

add_library(webrtc_audio_mixer_impl STATIC IMPORTED)
set_property(TARGET webrtc_audio_mixer_impl PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_mixer_impl.a")

add_library(webrtc_audio_frame_manipulator STATIC IMPORTED)
set_property(TARGET webrtc_audio_frame_manipulator PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_frame_manipulator.a")

add_library(webrtc_rtp_rtcp STATIC IMPORTED)
set_property(TARGET webrtc_rtp_rtcp PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtp_rtcp.a")

add_library(webrtc_rtp_video_header STATIC IMPORTED)
set_property(TARGET webrtc_rtp_video_header PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtp_video_header.a")

add_library(webrtc_rtp_rtcp_format STATIC IMPORTED)
set_property(TARGET webrtc_rtp_rtcp_format PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtp_rtcp_format.a")

add_library(webrtc_nack_module STATIC IMPORTED)
set_property(TARGET webrtc_nack_module PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_nack_module.a")

add_library(webrtc_video_coding_utility STATIC IMPORTED)
set_property(TARGET webrtc_video_coding_utility PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_coding_utility.a")

add_library(webrtc_encoded_frame STATIC IMPORTED)
set_property(TARGET webrtc_encoded_frame PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_encoded_frame.a")

add_library(webrtc_vp9_helpers STATIC IMPORTED)
set_property(TARGET webrtc_vp9_helpers PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_vp9_helpers.a")

add_library(webrtc_chain_diff_calculator STATIC IMPORTED)
set_property(TARGET webrtc_chain_diff_calculator PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_chain_diff_calculator.a")

add_library(webrtc_vp9 STATIC IMPORTED)
set_property(TARGET webrtc_vp9 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_vp9.a")

add_library(webrtc_video_codec_interface STATIC IMPORTED)
set_property(TARGET webrtc_video_codec_interface PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_codec_interface.a")

add_library(webrtc_vp8 STATIC IMPORTED)
set_property(TARGET webrtc_vp8 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_vp8.a")

add_library(webrtc_frame_dependencies_calculator STATIC IMPORTED)
set_property(TARGET webrtc_frame_dependencies_calculator PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_frame_dependencies_calculator.a")

add_library(webrtc_video_coding STATIC IMPORTED)
set_property(TARGET webrtc_video_coding PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_coding.a")

add_library(webrtc_vp8_temporal_layers STATIC IMPORTED)
set_property(TARGET webrtc_vp8_temporal_layers PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_vp8_temporal_layers.a")

add_library(webrtc_h264 STATIC IMPORTED)
set_property(TARGET webrtc_h264 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_h264.a")

add_library(webrtc_multiplex STATIC IMPORTED)
set_property(TARGET webrtc_multiplex PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_multiplex.a")

add_library(webrtc_aom_av1_encoder STATIC IMPORTED)
set_property(TARGET webrtc_aom_av1_encoder PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_aom_av1_encoder.a")

add_library(webrtc_aom_av1_decoder STATIC IMPORTED)
set_property(TARGET webrtc_aom_av1_decoder PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_aom_av1_decoder.a")

add_library(webrtc_remote_bitrate_estimator STATIC IMPORTED)
set_property(TARGET webrtc_remote_bitrate_estimator PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_remote_bitrate_estimator.a")

add_library(webrtc_g722_3p STATIC IMPORTED)
set_property(TARGET webrtc_g722_3p PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_g722_3p.a")

add_library(webrtc_g711_3p STATIC IMPORTED)
set_property(TARGET webrtc_g711_3p PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_g711_3p.a")

add_library(webrtc_fft STATIC IMPORTED)
set_property(TARGET webrtc_fft PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_fft.a")

add_library(webrtc_audio_buffer STATIC IMPORTED)
set_property(TARGET webrtc_audio_buffer PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_buffer.a")

add_library(webrtc_audio_processing STATIC IMPORTED)
set_property(TARGET webrtc_audio_processing PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_processing.a")

add_library(webrtc_optionally_built_submodule_creators STATIC IMPORTED)
set_property(TARGET webrtc_optionally_built_submodule_creators PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_optionally_built_submodule_creators.a")

add_library(webrtc_voice_detection STATIC IMPORTED)
set_property(TARGET webrtc_voice_detection PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_voice_detection.a")

add_library(webrtc_apm_logging STATIC IMPORTED)
set_property(TARGET webrtc_apm_logging PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_apm_logging.a")

add_library(webrtc_config STATIC IMPORTED)
set_property(TARGET webrtc_config PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_config.a")

add_library(webrtc_audio_processing_statistics STATIC IMPORTED)
set_property(TARGET webrtc_audio_processing_statistics PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_processing_statistics.a")

add_library(webrtc_audio_frame_proxies STATIC IMPORTED)
set_property(TARGET webrtc_audio_frame_proxies PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_frame_proxies.a")

add_library(webrtc_high_pass_filter STATIC IMPORTED)
set_property(TARGET webrtc_high_pass_filter PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_high_pass_filter.a")

add_library(webrtc_api STATIC IMPORTED)
set_property(TARGET webrtc_api PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_api.a")

add_library(webrtc_ns STATIC IMPORTED)
set_property(TARGET webrtc_ns PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ns.a")

add_library(webrtc_gain_applier STATIC IMPORTED)
set_property(TARGET webrtc_gain_applier PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_gain_applier.a")

add_library(webrtc_biquad_filter STATIC IMPORTED)
set_property(TARGET webrtc_biquad_filter PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_biquad_filter.a")

add_library(webrtc_adaptive_digital STATIC IMPORTED)
set_property(TARGET webrtc_adaptive_digital PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_adaptive_digital.a")

add_library(webrtc_common STATIC IMPORTED)
set_property(TARGET webrtc_common PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_common.a")

add_library(webrtc_noise_level_estimator STATIC IMPORTED)
set_property(TARGET webrtc_noise_level_estimator PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_noise_level_estimator.a")

add_library(webrtc_fixed_digital STATIC IMPORTED)
set_property(TARGET webrtc_fixed_digital PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_fixed_digital.a")

add_library(webrtc_level_estimation_agc STATIC IMPORTED)
set_property(TARGET webrtc_level_estimation_agc PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_level_estimation_agc.a")

add_library(webrtc_rnn_vad_with_level STATIC IMPORTED)
set_property(TARGET webrtc_rnn_vad_with_level PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rnn_vad_with_level.a")

add_library(webrtc_rnn_vad STATIC IMPORTED)
set_property(TARGET webrtc_rnn_vad PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rnn_vad.a")

add_library(webrtc_null_aec_dump_factory STATIC IMPORTED)
set_property(TARGET webrtc_null_aec_dump_factory PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_null_aec_dump_factory.a")

add_library(webrtc_agc STATIC IMPORTED)
set_property(TARGET webrtc_agc PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_agc.a")

add_library(webrtc_legacy_agc STATIC IMPORTED)
set_property(TARGET webrtc_legacy_agc PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_legacy_agc.a")

add_library(webrtc_level_estimation STATIC IMPORTED)
set_property(TARGET webrtc_level_estimation PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_level_estimation.a")

add_library(webrtc_aecm_core STATIC IMPORTED)
set_property(TARGET webrtc_aecm_core PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_aecm_core.a")

add_library(webrtc_pffft_wrapper STATIC IMPORTED)
set_property(TARGET webrtc_pffft_wrapper PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_pffft_wrapper.a")

add_library(webrtc_legacy_delay_estimator STATIC IMPORTED)
set_property(TARGET webrtc_legacy_delay_estimator PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_legacy_delay_estimator.a")

add_library(webrtc_cascaded_biquad_filter STATIC IMPORTED)
set_property(TARGET webrtc_cascaded_biquad_filter PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_cascaded_biquad_filter.a")

add_library(webrtc_aec3 STATIC IMPORTED)
set_property(TARGET webrtc_aec3 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_aec3.a")

add_library(webrtc_transient_suppressor_impl STATIC IMPORTED)
set_property(TARGET webrtc_transient_suppressor_impl PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_transient_suppressor_impl.a")

add_library(webrtc_vad STATIC IMPORTED)
set_property(TARGET webrtc_vad PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_vad.a")

add_library(webrtc_rtc_stats STATIC IMPORTED)
set_property(TARGET webrtc_rtc_stats PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_stats.a")

add_library(webrtc_fake_video_codecs STATIC IMPORTED)
set_property(TARGET webrtc_fake_video_codecs PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_fake_video_codecs.a")

add_library(webrtc_rtc_constants STATIC IMPORTED)
set_property(TARGET webrtc_rtc_constants PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_constants.a")

add_library(webrtc_rtc_encoder_simulcast_proxy STATIC IMPORTED)
set_property(TARGET webrtc_rtc_encoder_simulcast_proxy PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_encoder_simulcast_proxy.a")

add_library(webrtc_rtc_h264_profile_id STATIC IMPORTED)
set_property(TARGET webrtc_rtc_h264_profile_id PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_h264_profile_id.a")

add_library(webrtc_rtc_media_base STATIC IMPORTED)
set_property(TARGET webrtc_rtc_media_base PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_media_base.a")

add_library(webrtc_rtc_internal_video_codecs STATIC IMPORTED)
set_property(TARGET webrtc_rtc_internal_video_codecs PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_internal_video_codecs.a")

add_library(webrtc_rtc_data STATIC IMPORTED)
set_property(TARGET webrtc_rtc_data PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_data.a")

add_library(webrtc_rtc_vp9_profile STATIC IMPORTED)
set_property(TARGET webrtc_rtc_vp9_profile PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_vp9_profile.a")

add_library(webrtc_rtc_simulcast_encoder_adapter STATIC IMPORTED)
set_property(TARGET webrtc_rtc_simulcast_encoder_adapter PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_simulcast_encoder_adapter.a")

add_library(webrtc_rtc_audio_video STATIC IMPORTED)
set_property(TARGET webrtc_rtc_audio_video PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_audio_video.a")

add_library(webrtc_event STATIC IMPORTED)
set_property(TARGET webrtc_event PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_event.a")

add_library(webrtc_frame_dumping_decoder STATIC IMPORTED)
set_property(TARGET webrtc_frame_dumping_decoder PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_frame_dumping_decoder.a")

add_library(webrtc_video STATIC IMPORTED)
set_property(TARGET webrtc_video PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video.a")

add_library(webrtc_video_stream_encoder_impl STATIC IMPORTED)
set_property(TARGET webrtc_video_stream_encoder_impl PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_stream_encoder_impl.a")

add_library(webrtc_video_adaptation STATIC IMPORTED)
set_property(TARGET webrtc_video_adaptation PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_adaptation.a")

add_library(webrtc_fake_network STATIC IMPORTED)
set_property(TARGET webrtc_fake_network PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_fake_network.a")

add_library(webrtc_simulated_network STATIC IMPORTED)
set_property(TARGET webrtc_simulated_network PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_simulated_network.a")

add_library(webrtc_rtp_sender STATIC IMPORTED)
set_property(TARGET webrtc_rtp_sender PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtp_sender.a")

add_library(webrtc_rtp_receiver STATIC IMPORTED)
set_property(TARGET webrtc_rtp_receiver PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtp_receiver.a")

add_library(webrtc_video_stream_api STATIC IMPORTED)
set_property(TARGET webrtc_video_stream_api PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_stream_api.a")

add_library(webrtc_call STATIC IMPORTED)
set_property(TARGET webrtc_call PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_call.a")

add_library(webrtc_bitrate_allocator STATIC IMPORTED)
set_property(TARGET webrtc_bitrate_allocator PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_bitrate_allocator.a")

add_library(webrtc_call_interfaces STATIC IMPORTED)
set_property(TARGET webrtc_call_interfaces PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_call_interfaces.a")

add_library(webrtc_bitrate_configurator STATIC IMPORTED)
set_property(TARGET webrtc_bitrate_configurator PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_bitrate_configurator.a")

add_library(webrtc_rtp_interfaces STATIC IMPORTED)
set_property(TARGET webrtc_rtp_interfaces PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtp_interfaces.a")

add_library(webrtc_resource_adaptation STATIC IMPORTED)
set_property(TARGET webrtc_resource_adaptation PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_resource_adaptation.a")

add_library(webrtc_metrics STATIC IMPORTED)
set_property(TARGET webrtc_metrics PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_metrics.a")

add_library(webrtc_field_trial STATIC IMPORTED)
set_property(TARGET webrtc_field_trial PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_field_trial.a")

add_library(webrtc_system_wrappers STATIC IMPORTED)
set_property(TARGET webrtc_system_wrappers PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_system_wrappers.a")

add_library(webrtc_cpu_features_linux STATIC IMPORTED)
set_property(TARGET webrtc_cpu_features_linux PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_cpu_features_linux.a")

add_library(webrtc_audio STATIC IMPORTED)
set_property(TARGET webrtc_audio PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio.a")

add_library(webrtc_audio_frame_operations STATIC IMPORTED)
set_property(TARGET webrtc_audio_frame_operations PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_frame_operations.a")

add_library(webrtc_audio_format_to_string STATIC IMPORTED)
set_property(TARGET webrtc_audio_format_to_string PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_format_to_string.a")

add_library(webrtc_checks STATIC IMPORTED)
set_property(TARGET webrtc_checks PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_checks.a")

add_library(webrtc_weak_ptr STATIC IMPORTED)
set_property(TARGET webrtc_weak_ptr PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_weak_ptr.a")

add_library(webrtc_rate_limiter STATIC IMPORTED)
set_property(TARGET webrtc_rate_limiter PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rate_limiter.a")

add_library(webrtc_rtc_task_queue_libevent STATIC IMPORTED)
set_property(TARGET webrtc_rtc_task_queue_libevent PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_task_queue_libevent.a")

add_library(webrtc_rtc_numerics STATIC IMPORTED)
set_property(TARGET webrtc_rtc_numerics PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_numerics.a")

add_library(webrtc_platform_thread_types STATIC IMPORTED)
set_property(TARGET webrtc_platform_thread_types PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_platform_thread_types.a")

add_library(webrtc_criticalsection STATIC IMPORTED)
set_property(TARGET webrtc_criticalsection PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_criticalsection.a")

add_library(webrtc_rtc_base_approved STATIC IMPORTED)
set_property(TARGET webrtc_rtc_base_approved PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_base_approved.a")

add_library(webrtc_logging STATIC IMPORTED)
set_property(TARGET webrtc_logging PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_logging.a")

add_library(webrtc_rtc_base STATIC IMPORTED)
set_property(TARGET webrtc_rtc_base PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_base.a")

add_library(webrtc_rtc_event STATIC IMPORTED)
set_property(TARGET webrtc_rtc_event PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_event.a")

add_library(webrtc_platform_thread STATIC IMPORTED)
set_property(TARGET webrtc_platform_thread PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_platform_thread.a")

add_library(webrtc_stringutils STATIC IMPORTED)
set_property(TARGET webrtc_stringutils PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_stringutils.a")

add_library(webrtc_timeutils STATIC IMPORTED)
set_property(TARGET webrtc_timeutils PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_timeutils.a")

add_library(webrtc_rtc_task_queue STATIC IMPORTED)
set_property(TARGET webrtc_rtc_task_queue PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_task_queue.a")

add_library(webrtc_file_wrapper STATIC IMPORTED)
set_property(TARGET webrtc_file_wrapper PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_file_wrapper.a")

add_library(webrtc_sequence_checker STATIC IMPORTED)
set_property(TARGET webrtc_sequence_checker PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_sequence_checker.a")

add_library(webrtc_mutex STATIC IMPORTED)
set_property(TARGET webrtc_mutex PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_mutex.a")

add_library(webrtc_yield_policy STATIC IMPORTED)
set_property(TARGET webrtc_yield_policy PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_yield_policy.a")

add_library(webrtc_yield STATIC IMPORTED)
set_property(TARGET webrtc_yield PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_yield.a")

add_library(webrtc_rw_lock_wrapper STATIC IMPORTED)
set_property(TARGET webrtc_rw_lock_wrapper PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rw_lock_wrapper.a")

add_library(webrtc_sent_packet STATIC IMPORTED)
set_property(TARGET webrtc_sent_packet PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_sent_packet.a")

add_library(webrtc_timestamp_extrapolator STATIC IMPORTED)
set_property(TARGET webrtc_timestamp_extrapolator PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_timestamp_extrapolator.a")

add_library(webrtc_quality_scaler_settings STATIC IMPORTED)
set_property(TARGET webrtc_quality_scaler_settings PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_quality_scaler_settings.a")

add_library(webrtc_normalize_simulcast_size_experiment STATIC IMPORTED)
set_property(TARGET webrtc_normalize_simulcast_size_experiment PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_normalize_simulcast_size_experiment.a")

add_library(webrtc_quality_rampup_experiment STATIC IMPORTED)
set_property(TARGET webrtc_quality_rampup_experiment PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_quality_rampup_experiment.a")

add_library(webrtc_cpu_speed_experiment STATIC IMPORTED)
set_property(TARGET webrtc_cpu_speed_experiment PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_cpu_speed_experiment.a")

add_library(webrtc_rate_control_settings STATIC IMPORTED)
set_property(TARGET webrtc_rate_control_settings PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rate_control_settings.a")

add_library(webrtc_jitter_upper_bound_experiment STATIC IMPORTED)
set_property(TARGET webrtc_jitter_upper_bound_experiment PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_jitter_upper_bound_experiment.a")

add_library(webrtc_field_trial_parser STATIC IMPORTED)
set_property(TARGET webrtc_field_trial_parser PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_field_trial_parser.a")

add_library(webrtc_quality_scaling_experiment STATIC IMPORTED)
set_property(TARGET webrtc_quality_scaling_experiment PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_quality_scaling_experiment.a")

add_library(webrtc_alr_experiment STATIC IMPORTED)
set_property(TARGET webrtc_alr_experiment PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_alr_experiment.a")

add_library(webrtc_balanced_degradation_settings STATIC IMPORTED)
set_property(TARGET webrtc_balanced_degradation_settings PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_balanced_degradation_settings.a")

add_library(webrtc_stable_target_rate_experiment STATIC IMPORTED)
set_property(TARGET webrtc_stable_target_rate_experiment PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_stable_target_rate_experiment.a")

add_library(webrtc_min_video_bitrate_experiment STATIC IMPORTED)
set_property(TARGET webrtc_min_video_bitrate_experiment PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_min_video_bitrate_experiment.a")

add_library(webrtc_rtt_mult_experiment STATIC IMPORTED)
set_property(TARGET webrtc_rtt_mult_experiment PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtt_mult_experiment.a")

add_library(webrtc_keyframe_interval_settings_experiment STATIC IMPORTED)
set_property(TARGET webrtc_keyframe_interval_settings_experiment PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_keyframe_interval_settings_experiment.a")

add_library(webrtc_pending_task_safety_flag STATIC IMPORTED)
set_property(TARGET webrtc_pending_task_safety_flag PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_pending_task_safety_flag.a")

add_library(webrtc_repeating_task STATIC IMPORTED)
set_property(TARGET webrtc_repeating_task PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_repeating_task.a")

add_library(webrtc_fifo_buffer STATIC IMPORTED)
set_property(TARGET webrtc_fifo_buffer PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_fifo_buffer.a")

add_library(webrtc_aligned_malloc STATIC IMPORTED)
set_property(TARGET webrtc_aligned_malloc PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_aligned_malloc.a")

add_library(webrtc_base64 STATIC IMPORTED)
set_property(TARGET webrtc_base64 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_base64.a")

add_library(webrtc_sigslot STATIC IMPORTED)
set_property(TARGET webrtc_sigslot PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_sigslot.a")

add_library(webrtc_rtc_error STATIC IMPORTED)
set_property(TARGET webrtc_rtc_error PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_error.a")

add_library(webrtc_media_stream_interface STATIC IMPORTED)
set_property(TARGET webrtc_media_stream_interface PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_media_stream_interface.a")

add_library(webrtc_rtp_headers STATIC IMPORTED)
set_property(TARGET webrtc_rtp_headers PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtp_headers.a")

add_library(webrtc_rtp_parameters STATIC IMPORTED)
set_property(TARGET webrtc_rtp_parameters PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtp_parameters.a")

add_library(webrtc_create_peerconnection_factory STATIC IMPORTED)
set_property(TARGET webrtc_create_peerconnection_factory PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_create_peerconnection_factory.a")

add_library(webrtc_ice_transport_factory STATIC IMPORTED)
set_property(TARGET webrtc_ice_transport_factory PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ice_transport_factory.a")

add_library(webrtc_rtc_event_log_output_file STATIC IMPORTED)
set_property(TARGET webrtc_rtc_event_log_output_file PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_event_log_output_file.a")

add_library(webrtc_rtp_packet_info STATIC IMPORTED)
set_property(TARGET webrtc_rtp_packet_info PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtp_packet_info.a")

add_library(webrtc_jingle_peerconnection_api STATIC IMPORTED)
set_property(TARGET webrtc_jingle_peerconnection_api PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_jingle_peerconnection_api.a")

add_library(webrtc_audio_options_api STATIC IMPORTED)
set_property(TARGET webrtc_audio_options_api PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_options_api.a")

add_library(webrtc_transport_api STATIC IMPORTED)
set_property(TARGET webrtc_transport_api PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_transport_api.a")

add_library(webrtc_builtin_audio_encoder_factory STATIC IMPORTED)
set_property(TARGET webrtc_builtin_audio_encoder_factory PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_builtin_audio_encoder_factory.a")

add_library(webrtc_builtin_audio_decoder_factory STATIC IMPORTED)
set_property(TARGET webrtc_builtin_audio_decoder_factory PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_builtin_audio_decoder_factory.a")

add_library(webrtc_audio_codecs_api STATIC IMPORTED)
set_property(TARGET webrtc_audio_codecs_api PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_codecs_api.a")

add_library(webrtc_audio_encoder_g722 STATIC IMPORTED)
set_property(TARGET webrtc_audio_encoder_g722 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_encoder_g722.a")

add_library(webrtc_audio_decoder_g722 STATIC IMPORTED)
set_property(TARGET webrtc_audio_decoder_g722 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_decoder_g722.a")

add_library(webrtc_audio_decoder_L16 STATIC IMPORTED)
set_property(TARGET webrtc_audio_decoder_L16 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_decoder_L16.a")

add_library(webrtc_audio_encoder_L16 STATIC IMPORTED)
set_property(TARGET webrtc_audio_encoder_L16 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_encoder_L16.a")

add_library(webrtc_audio_encoder_ilbc STATIC IMPORTED)
set_property(TARGET webrtc_audio_encoder_ilbc PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_encoder_ilbc.a")

add_library(webrtc_audio_decoder_ilbc STATIC IMPORTED)
set_property(TARGET webrtc_audio_decoder_ilbc PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_decoder_ilbc.a")

add_library(webrtc_audio_decoder_g711 STATIC IMPORTED)
set_property(TARGET webrtc_audio_decoder_g711 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_decoder_g711.a")

add_library(webrtc_audio_encoder_g711 STATIC IMPORTED)
set_property(TARGET webrtc_audio_encoder_g711 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_encoder_g711.a")

add_library(webrtc_audio_encoder_opus_config STATIC IMPORTED)
set_property(TARGET webrtc_audio_encoder_opus_config PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_encoder_opus_config.a")

add_library(webrtc_audio_encoder_multiopus STATIC IMPORTED)
set_property(TARGET webrtc_audio_encoder_multiopus PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_encoder_multiopus.a")

add_library(webrtc_audio_encoder_opus STATIC IMPORTED)
set_property(TARGET webrtc_audio_encoder_opus PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_encoder_opus.a")

add_library(webrtc_audio_decoder_multiopus STATIC IMPORTED)
set_property(TARGET webrtc_audio_decoder_multiopus PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_decoder_multiopus.a")

add_library(webrtc_audio_decoder_opus STATIC IMPORTED)
set_property(TARGET webrtc_audio_decoder_opus PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_decoder_opus.a")

add_library(webrtc_audio_encoder_isac_float STATIC IMPORTED)
set_property(TARGET webrtc_audio_encoder_isac_float PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_encoder_isac_float.a")

add_library(webrtc_audio_decoder_isac_float STATIC IMPORTED)
set_property(TARGET webrtc_audio_decoder_isac_float PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_decoder_isac_float.a")

add_library(webrtc_options STATIC IMPORTED)
set_property(TARGET webrtc_options PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_options.a")

add_library(webrtc_frequency STATIC IMPORTED)
set_property(TARGET webrtc_frequency PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_frequency.a")

add_library(webrtc_data_size STATIC IMPORTED)
set_property(TARGET webrtc_data_size PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_data_size.a")

add_library(webrtc_timestamp STATIC IMPORTED)
set_property(TARGET webrtc_timestamp PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_timestamp.a")

add_library(webrtc_time_delta STATIC IMPORTED)
set_property(TARGET webrtc_time_delta PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_time_delta.a")

add_library(webrtc_data_rate STATIC IMPORTED)
set_property(TARGET webrtc_data_rate PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_data_rate.a")

add_library(webrtc_default_task_queue_factory STATIC IMPORTED)
set_property(TARGET webrtc_default_task_queue_factory PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_default_task_queue_factory.a")

add_library(webrtc_task_queue STATIC IMPORTED)
set_property(TARGET webrtc_task_queue PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_task_queue.a")

add_library(webrtc_rtc_event_log STATIC IMPORTED)
set_property(TARGET webrtc_rtc_event_log PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_event_log.a")

add_library(webrtc_rtc_event_log_factory STATIC IMPORTED)
set_property(TARGET webrtc_rtc_event_log_factory PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_event_log_factory.a")

add_library(webrtc_video_frame STATIC IMPORTED)
set_property(TARGET webrtc_video_frame PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_frame.a")

add_library(webrtc_video_frame_i420 STATIC IMPORTED)
set_property(TARGET webrtc_video_frame_i420 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_frame_i420.a")

add_library(webrtc_video_stream_encoder_create STATIC IMPORTED)
set_property(TARGET webrtc_video_stream_encoder_create PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_stream_encoder_create.a")

add_library(webrtc_video_frame_i010 STATIC IMPORTED)
set_property(TARGET webrtc_video_frame_i010 PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_frame_i010.a")

add_library(webrtc_builtin_video_bitrate_allocator_factory STATIC IMPORTED)
set_property(TARGET webrtc_builtin_video_bitrate_allocator_factory PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_builtin_video_bitrate_allocator_factory.a")

add_library(webrtc_video_rtp_headers STATIC IMPORTED)
set_property(TARGET webrtc_video_rtp_headers PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_rtp_headers.a")

add_library(webrtc_video_bitrate_allocation STATIC IMPORTED)
set_property(TARGET webrtc_video_bitrate_allocation PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_bitrate_allocation.a")

add_library(webrtc_encoded_image STATIC IMPORTED)
set_property(TARGET webrtc_encoded_image PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_encoded_image.a")

add_library(webrtc_video_bitrate_allocator STATIC IMPORTED)
set_property(TARGET webrtc_video_bitrate_allocator PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_bitrate_allocator.a")

add_library(webrtc_aec3_factory STATIC IMPORTED)
set_property(TARGET webrtc_aec3_factory PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_aec3_factory.a")

add_library(webrtc_audio_frame_api STATIC IMPORTED)
set_property(TARGET webrtc_audio_frame_api PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_audio_frame_api.a")

add_library(webrtc_aec3_config STATIC IMPORTED)
set_property(TARGET webrtc_aec3_config PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_aec3_config.a")

add_library(webrtc_network_control STATIC IMPORTED)
set_property(TARGET webrtc_network_control PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_network_control.a")

add_library(webrtc_bitrate_settings STATIC IMPORTED)
set_property(TARGET webrtc_bitrate_settings PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_bitrate_settings.a")

add_library(webrtc_field_trial_based_config STATIC IMPORTED)
set_property(TARGET webrtc_field_trial_based_config PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_field_trial_based_config.a")

add_library(webrtc_vp8_temporal_layers_factory STATIC IMPORTED)
set_property(TARGET webrtc_vp8_temporal_layers_factory PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_vp8_temporal_layers_factory.a")

add_library(webrtc_builtin_video_decoder_factory STATIC IMPORTED)
set_property(TARGET webrtc_builtin_video_decoder_factory PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_builtin_video_decoder_factory.a")

add_library(webrtc_rtc_software_fallback_wrappers STATIC IMPORTED)
set_property(TARGET webrtc_rtc_software_fallback_wrappers PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_software_fallback_wrappers.a")

add_library(webrtc_video_codecs_api STATIC IMPORTED)
set_property(TARGET webrtc_video_codecs_api PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_video_codecs_api.a")

add_library(webrtc_builtin_video_encoder_factory STATIC IMPORTED)
set_property(TARGET webrtc_builtin_video_encoder_factory PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_builtin_video_encoder_factory.a")

add_library(webrtc_aom_nasm STATIC IMPORTED)
set_property(TARGET webrtc_aom_nasm PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_aom_nasm.a")

add_library(webrtc_aom STATIC IMPORTED)
set_property(TARGET webrtc_aom PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_aom.a")

add_library(webrtc_pffft STATIC IMPORTED)
set_property(TARGET webrtc_pffft PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_pffft.a")

add_library(webrtc_srtp STATIC IMPORTED)
set_property(TARGET webrtc_srtp PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_srtp.a")

add_library(webrtc_vpx STATIC IMPORTED)
set_property(TARGET webrtc_vpx PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_vpx.a")

add_library(webrtc_vpx_asm STATIC IMPORTED)
set_property(TARGET webrtc_vpx_asm PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_vpx_asm.a")

add_library(webrtc_yuv_internal STATIC IMPORTED)
set_property(TARGET webrtc_yuv_internal PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_yuv_internal.a")

add_library(webrtc_boringssl STATIC IMPORTED)
set_property(TARGET webrtc_boringssl PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_boringssl.a")

add_library(webrtc_usrsctp STATIC IMPORTED)
set_property(TARGET webrtc_usrsctp PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_usrsctp.a")

add_library(webrtc_rtc_event_video STATIC IMPORTED)
set_property(TARGET webrtc_rtc_event_video PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_event_video.a")

add_library(webrtc_rtc_event_rtp_rtcp STATIC IMPORTED)
set_property(TARGET webrtc_rtc_event_rtp_rtcp PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_event_rtp_rtcp.a")

add_library(webrtc_rtc_event_log_impl_encoder STATIC IMPORTED)
set_property(TARGET webrtc_rtc_event_log_impl_encoder PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_event_log_impl_encoder.a")

add_library(webrtc_rtc_event_audio STATIC IMPORTED)
set_property(TARGET webrtc_rtc_event_audio PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_event_audio.a")

add_library(webrtc_rtc_event_pacing STATIC IMPORTED)
set_property(TARGET webrtc_rtc_event_pacing PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_event_pacing.a")

add_library(webrtc_rtc_event_bwe STATIC IMPORTED)
set_property(TARGET webrtc_rtc_event_bwe PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_event_bwe.a")

add_library(webrtc_ice_log STATIC IMPORTED)
set_property(TARGET webrtc_ice_log PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ice_log.a")

add_library(webrtc_rtc_stream_config STATIC IMPORTED)
set_property(TARGET webrtc_rtc_stream_config PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_stream_config.a")

add_library(webrtc_stunprober STATIC IMPORTED)
set_property(TARGET webrtc_stunprober PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_stunprober.a")

add_library(webrtc_rtc_p2p STATIC IMPORTED)
set_property(TARGET webrtc_rtc_p2p PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_p2p.a")

add_library(webrtc_peerconnection STATIC IMPORTED)
set_property(TARGET webrtc_peerconnection PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_peerconnection.a")

add_library(webrtc_media_protocol_names STATIC IMPORTED)
set_property(TARGET webrtc_media_protocol_names PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_media_protocol_names.a")

add_library(webrtc_rtc_pc_base STATIC IMPORTED)
set_property(TARGET webrtc_rtc_pc_base PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_rtc_pc_base.a")

add_library(webrtc_ext_aom_nasm STATIC IMPORTED)
set_property(TARGET webrtc_ext_aom_nasm PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ext_aom_nasm.a")

add_library(webrtc_ext_aom STATIC IMPORTED)
set_property(TARGET webrtc_ext_aom PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ext_aom.a")

add_library(webrtc_ext_pffft STATIC IMPORTED)
set_property(TARGET webrtc_ext_pffft PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ext_pffft.a")

add_library(webrtc_ext_srtp STATIC IMPORTED)
set_property(TARGET webrtc_ext_srtp PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ext_srtp.a")

add_library(webrtc_ext_vpx STATIC IMPORTED)
set_property(TARGET webrtc_ext_vpx PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ext_vpx.a")

add_library(webrtc_ext_vpx_asm STATIC IMPORTED)
set_property(TARGET webrtc_ext_vpx_asm PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ext_vpx_asm.a")

add_library(webrtc_ext_yuv_internal STATIC IMPORTED)
set_property(TARGET webrtc_ext_yuv_internal PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ext_yuv_internal.a")

add_library(webrtc_ext_opus STATIC IMPORTED)
set_property(TARGET webrtc_ext_opus PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ext_opus.a")

add_library(webrtc_ext_boringssl STATIC IMPORTED)
set_property(TARGET webrtc_ext_boringssl PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ext_boringssl.a")

add_library(webrtc_ext_usrsctp STATIC IMPORTED)
set_property(TARGET webrtc_ext_usrsctp PROPERTY IMPORTED_LOCATION "${webrtc_INSTALL_PREFIX}/lib/libwebrtc_ext_usrsctp.a")
