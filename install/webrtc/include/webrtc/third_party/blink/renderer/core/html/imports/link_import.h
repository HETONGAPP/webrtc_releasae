/*
 * Copyright (C) 2013 Google Inc. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 *
 *     * Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above
 * copyright notice, this list of conditions and the following disclaimer
 * in the documentation and/or other materials provided with the
 * distribution.
 *     * Neither the name of Google Inc. nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef THIRD_PARTY_BLINK_RENDERER_CORE_HTML_IMPORTS_LINK_IMPORT_H_
#define THIRD_PARTY_BLINK_RENDERER_CORE_HTML_IMPORTS_LINK_IMPORT_H_

#include "base/memory/scoped_refptr.h"
#include "third_party/blink/renderer/core/html/imports/html_import_child_client.h"
#include "third_party/blink/renderer/core/html/link_resource.h"
#include "third_party/blink/renderer/platform/wtf/allocator/allocator.h"

namespace blink {

class Document;
class HTMLImportChild;

//
// A LinkResource subclasss used for @rel=import.
//
class LinkImport final : public LinkResource, public HTMLImportChildClient {
 public:
  explicit LinkImport(HTMLLinkElement* owner);
  ~LinkImport() final;

  // LinkResource overrides:
  void Process() final;
  LinkResourceType GetType() const final { return kImport; }
  bool HasLoaded() const final;
  void Trace(Visitor*) const override;
  void OwnerInserted() final;
  void OwnerRemoved() final;

  // HTMLImportChildClient overrides:
  void DidFinish() final;
  void ImportChildWasDisposed(HTMLImportChild*) final;
  bool IsSync() const final;
  HTMLLinkElement* Link() final;

  Document* ImportedDocument() const;

 private:
  Member<HTMLImportChild> child_;
};

}  // namespace blink

#endif  // THIRD_PARTY_BLINK_RENDERER_CORE_HTML_IMPORTS_LINK_IMPORT_H_
