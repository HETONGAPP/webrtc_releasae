// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef THIRD_PARTY_BLINK_RENDERER_MODULES_WEBCODECS_VIDEO_ENCODER_H_
#define THIRD_PARTY_BLINK_RENDERER_MODULES_WEBCODECS_VIDEO_ENCODER_H_

#include <memory>

#include "base/optional.h"
#include "media/base/status.h"
#include "third_party/blink/renderer/bindings/core/v8/script_promise_resolver.h"
#include "third_party/blink/renderer/bindings/modules/v8/v8_video_encoder_output_callback.h"
#include "third_party/blink/renderer/bindings/modules/v8/v8_web_codecs_error_callback.h"
#include "third_party/blink/renderer/modules/modules_export.h"
#include "third_party/blink/renderer/modules/webcodecs/video_frame.h"
#include "third_party/blink/renderer/platform/bindings/script_wrappable.h"

namespace media {
class VideoEncoder;
struct VideoEncoderOutput;
}  // namespace media

namespace blink {

class ExceptionState;
enum class DOMExceptionCode;
class VideoEncoderConfig;
class VideoEncoderInit;
class VideoEncoderEncodeOptions;
class Visitor;

class MODULES_EXPORT VideoEncoder final : public ScriptWrappable {
  DEFINE_WRAPPERTYPEINFO();

 public:
  static VideoEncoder* Create(ScriptState*,
                              const VideoEncoderInit*,
                              ExceptionState&);
  VideoEncoder(ScriptState*, const VideoEncoderInit*, ExceptionState&);
  ~VideoEncoder() override;

  // video_encoder.idl implementation.
  int32_t encodeQueueSize();

  void encode(VideoFrame* frame,
              const VideoEncoderEncodeOptions*,
              ExceptionState&);

  void configure(const VideoEncoderConfig*, ExceptionState&);

  ScriptPromise flush(ExceptionState&);

  void reset(ExceptionState&);

  void close(ExceptionState&);

  // GarbageCollected override.
  void Trace(Visitor*) const override;

 private:
  struct Request : public GarbageCollected<Request> {
    enum class Type {
      kConfigure,
      kEncode,
      kFlush,
    };

    void Trace(Visitor*) const;

    Type type;
    Member<const VideoEncoderConfig> config;             // used by kConfigure
    Member<VideoFrame> frame;                            // used by kEncode
    Member<const VideoEncoderEncodeOptions> encodeOpts;  // used by kEncode
    Member<ScriptPromiseResolver> resolver;              // used by kFlush
  };

  enum class AccelerationPreference { kAllow, kDeny, kRequire };

  void CallOutputCallback(EncodedVideoChunk* chunk);
  void HandleError(DOMException* ex);
  void HandleError(DOMExceptionCode code, const String& message);
  void EnqueueRequest(Request* request);
  void ProcessRequests();
  void ProcessEncode(Request* request);
  void ProcessConfigure(Request* request);
  void ProcessFlush(Request* request);

  void MediaEncoderOutputCallback(media::VideoEncoderOutput output);

  gfx::Size frame_size_;
  std::unique_ptr<media::VideoEncoder> media_encoder_;

  Member<ScriptState> script_state_;
  Member<V8VideoEncoderOutputCallback> output_callback_;
  Member<V8WebCodecsErrorCallback> error_callback_;
  HeapDeque<Member<Request>> requests_;
  int32_t requested_encodes_ = 0;

  // Some kConfigure and kFlush requests can't be executed in parallel with
  // kEncode. This flag stops processing of new requests in the requests_ queue
  // till the current requests is finished.
  bool stall_request_processing_ = false;
  SEQUENCE_CHECKER(sequence_checker_);
};

}  // namespace blink

#endif  // THIRD_PARTY_BLINK_RENDERER_MODULES_WEBCODECS_VIDEO_ENCODER_H_
