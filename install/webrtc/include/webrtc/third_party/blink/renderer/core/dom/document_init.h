/*
 * Copyright (C) 1999 Lars Knoll (knoll@kde.org)
 *           (C) 1999 Antti Koivisto (koivisto@kde.org)
 *           (C) 2001 Dirk Mueller (mueller@kde.org)
 *           (C) 2006 Alexey Proskuryakov (ap@webkit.org)
 * Copyright (C) 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2012 Apple Inc. All
 * rights reserved.
 * Copyright (C) 2008, 2009 Torch Mobile Inc. All rights reserved.
 * (http://www.torchmobile.com/)
 * Copyright (C) 2010 Nokia Corporation and/or its subsidiary(-ies)
 * Copyright (C) 2013 Google Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public License
 * along with this library; see the file COPYING.LIB.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301, USA.
 *
 */

#ifndef THIRD_PARTY_BLINK_RENDERER_CORE_DOM_DOCUMENT_INIT_H_
#define THIRD_PARTY_BLINK_RENDERER_CORE_DOM_DOCUMENT_INIT_H_

#include "third_party/blink/renderer/core/core_export.h"
#include "third_party/blink/renderer/core/execution_context/security_context.h"
#include "third_party/blink/renderer/core/html/custom/v0_custom_element_registration_context.h"
#include "third_party/blink/renderer/platform/graphics/color.h"
#include "third_party/blink/renderer/platform/heap/handle.h"
#include "third_party/blink/renderer/platform/weborigin/kurl.h"

namespace blink {

class Document;
class ExecutionContext;
class HTMLImportsController;
class LocalDOMWindow;
class LocalFrame;
class PluginData;

class CORE_EXPORT DocumentInit final {
  STACK_ALLOCATED();

 public:
  // Create a DocumentInit instance, then add a chain of calls to add optional
  // parameters to it.
  //
  // Example:
  //
  //   DocumentInit init = DocumentInit::Create()
  //       .WithExecutionContext(context)
  //       .WithURL(url);
  //
  // Before creating a Document from this DocumentInit, the caller must invoke
  // exactly one of:
  // * ForTest() - for unit-test-only cases
  // * WithWindow() - for navigations originating from DocumentLoader and
  //       attaching to a LocalDOMWindow.
  // * WithExecutionContext() - for all other cases
  //
  // Invoking init.CreateDocument() will construct a Document of the appropriate
  // subclass for the init's Type.
  // However, when the document type is known, it is acceptable to invoke the
  // constructor for Document (or the appropriate subclass) directly:
  //   Document* document = MakeGarbageCollected<Document>(init);
  static DocumentInit Create();

  DocumentInit(const DocumentInit&);
  ~DocumentInit();

  enum class Type {
    kHTML,
    kXHTML,
    kImage,
    kPlugin,
    kMedia,
    kSVG,
    kXML,
    kViewSource,
    kText,
    kUnspecified
  };

  DocumentInit& ForTest();

  // Actually constructs the Document based on the provided state.
  Document* CreateDocument() const;

  DocumentInit& WithImportsController(HTMLImportsController*);
  HTMLImportsController* ImportsController() const {
    return imports_controller_;
  }

  bool IsSrcdocDocument() const;
  bool ShouldSetURL() const;

  DocumentInit& WithWindow(LocalDOMWindow*, Document* owner_document);
  LocalDOMWindow* GetWindow() const { return window_; }

  // Compute the type of document to be loaded inside a |frame|, given its |url|
  // and its |mime_type|.
  //
  // In case of plugin handled by MimeHandlerview (which do not create a
  // PluginDocument), the type is Type::KHTML and |is_for_external_handler| is
  // set to true.
  static Type ComputeDocumentType(LocalFrame* frame,
                                  const KURL& url,
                                  const String& mime_type,
                                  bool* is_for_external_handler = nullptr);
  DocumentInit& WithTypeFrom(const String& mime_type);
  Type GetType() const { return type_; }
  const String& GetMimeType() const { return mime_type_; }
  bool IsForExternalHandler() const { return is_for_external_handler_; }

  // Used when creating Documents not attached to a window.
  DocumentInit& WithExecutionContext(ExecutionContext*);
  ExecutionContext* GetExecutionContext() const { return execution_context_; }

  DocumentInit& WithURL(const KURL&);
  const KURL& Url() const { return url_; }

  const KURL& GetCookieUrl() const;

  DocumentInit& WithSrcdocDocument(bool is_srcdoc_document);

  DocumentInit& WithRegistrationContext(V0CustomElementRegistrationContext*);
  V0CustomElementRegistrationContext* RegistrationContext(Document*) const;
  DocumentInit& WithNewRegistrationContext();

  DocumentInit& WithWebBundleClaimedUrl(const KURL& web_bundle_claimed_url);
  const KURL& GetWebBundleClaimedUrl() const { return web_bundle_claimed_url_; }

 private:
  DocumentInit() = default;

  static PluginData* GetPluginData(LocalFrame* frame, const KURL& url);

  Type type_ = Type::kUnspecified;
  String mime_type_;
  LocalDOMWindow* window_ = nullptr;
  HTMLImportsController* imports_controller_ = nullptr;
  ExecutionContext* execution_context_ = nullptr;
  KURL url_;
  Document* owner_document_ = nullptr;

  // Whether we should treat the new document as "srcdoc" document. This
  // affects security checks, since srcdoc's content comes directly from
  // the parent document, not from loading a URL.
  bool is_srcdoc_document_ = false;
  V0CustomElementRegistrationContext* registration_context_ = nullptr;
  bool create_new_registration_context_ = false;

  // The claimed URL inside Web Bundle file from which the document is loaded.
  // This URL is used for window.location and document.URL and relative path
  // computation in the document.
  KURL web_bundle_claimed_url_;

  bool is_for_external_handler_ = false;

#if DCHECK_IS_ON()
  bool for_test_ = false;
#endif
};

}  // namespace blink

#endif  // THIRD_PARTY_BLINK_RENDERER_CORE_DOM_DOCUMENT_INIT_H_
