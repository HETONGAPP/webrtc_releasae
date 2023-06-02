// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef THIRD_PARTY_BLINK_RENDERER_CORE_SCRIPT_CLASSIC_PENDING_SCRIPT_H_
#define THIRD_PARTY_BLINK_RENDERER_CORE_SCRIPT_CLASSIC_PENDING_SCRIPT_H_

#include "third_party/blink/renderer/bindings/core/v8/script_source_location_type.h"
#include "third_party/blink/renderer/bindings/core/v8/script_streamer.h"
#include "third_party/blink/renderer/core/loader/resource/script_resource.h"
#include "third_party/blink/renderer/core/script/classic_script.h"
#include "third_party/blink/renderer/core/script/pending_script.h"
#include "third_party/blink/renderer/platform/instrumentation/memory_pressure_listener.h"
#include "third_party/blink/renderer/platform/loader/fetch/fetch_parameters.h"

namespace blink {

// PendingScript for a classic script
// https://html.spec.whatwg.org/C/#classic-script.
//
// TODO(kochi): The comment below is from pre-oilpan age and may not be correct
// now.
// A RefPtr alone does not prevent the underlying Resource from purging its data
// buffer. This class holds a dummy client open for its lifetime in order to
// guarantee that the data buffer will not be purged.
class CORE_EXPORT ClassicPendingScript final : public PendingScript,
                                               public ResourceClient,
                                               public MemoryPressureListener {
 public:
  // https://html.spec.whatwg.org/C/#fetch-a-classic-script
  //
  // For a script from an external file, calls ScriptResource::Fetch() and
  // creates ClassicPendingScript. Returns nullptr if Fetch() returns nullptr.
  static ClassicPendingScript* Fetch(const KURL&,
                                     Document&,
                                     const ScriptFetchOptions&,
                                     CrossOriginAttributeValue,
                                     const WTF::TextEncoding&,
                                     ScriptElementBase*,
                                     FetchParameters::DeferOption);

  // For an inline script.
  static ClassicPendingScript* CreateInline(ScriptElementBase*,
                                            const TextPosition&,
                                            const KURL& base_url,
                                            const String& source_text,
                                            ScriptSourceLocationType,
                                            const ScriptFetchOptions&);

  ClassicPendingScript(ScriptElementBase*,
                       const TextPosition&,
                       const KURL& base_url_for_inline_script,
                       const String& source_text_for_inline_script,
                       ScriptSourceLocationType,
                       const ScriptFetchOptions&,
                       bool is_external);
  ~ClassicPendingScript() override;

  void Trace(Visitor*) const override;

  mojom::ScriptType GetScriptType() const override {
    return mojom::ScriptType::kClassic;
  }

  ClassicScript* GetSource(const KURL& document_url) const override;
  bool IsReady() const override;
  bool IsExternal() const override { return is_external_; }
  bool WasCanceled() const override;
  KURL UrlForTracing() const override;
  void DisposeInternal() override;

  void SetNotStreamingReasonForTest(ScriptStreamer::NotStreamingReason reason) {
    not_streamed_reason_ = reason;
  }

  bool IsEligibleForDelay() const override;

 private:
  // See AdvanceReadyState implementation for valid state transitions.
  enum ReadyState {
    // This state is considered "not ready".
    kWaitingForResource,
    // These states are considered "ready".
    kReady,
    kErrorOccurred,
  };

  ClassicPendingScript() = delete;

  // Advances the current state of the script, reporting to the client if
  // appropriate.
  void AdvanceReadyState(ReadyState);

  void CheckState() const override;

  // ResourceClient
  void NotifyFinished(Resource*) override;
  String DebugName() const override { return "PendingScript"; }

  static void RecordStreamingHistogram(
      ScriptSchedulingType type,
      bool can_use_streamer,
      ScriptStreamer::NotStreamingReason reason);

  // MemoryPressureListener
  void OnPurgeMemory() override;

  const ScriptFetchOptions options_;

  // "base url" snapshot taken at #prepare-a-script timing.
  // https://html.spec.whatwg.org/C/#prepare-a-script
  // which will eventually be used as #concept-script-base-url.
  // https://html.spec.whatwg.org/C/#concept-script-base-url
  // This is a null URL for external scripts and is not used.
  const KURL base_url_for_inline_script_;

  // "element's child text content" snapshot taken at
  // #prepare-a-script (Step 4).
  // This is a null string for external scripts and is not used.
  const String source_text_for_inline_script_;

  const ScriptSourceLocationType source_location_type_;
  const bool is_external_;
  ReadyState ready_state_;
  bool integrity_failure_;

  // The request is intervened by document.write() intervention.
  bool intervened_ = false;

  // Specifies the reason that script was never streamed.
  ScriptStreamer::NotStreamingReason not_streamed_reason_;
};

}  // namespace blink

#endif  // PendingScript_h
