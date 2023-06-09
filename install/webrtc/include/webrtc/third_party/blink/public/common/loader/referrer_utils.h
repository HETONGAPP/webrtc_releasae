// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef THIRD_PARTY_BLINK_PUBLIC_COMMON_LOADER_REFERRER_UTILS_H_
#define THIRD_PARTY_BLINK_PUBLIC_COMMON_LOADER_REFERRER_UTILS_H_

#include "base/optional.h"
#include "net/url_request/referrer_policy.h"
#include "services/network/public/mojom/referrer_policy.mojom-shared.h"
#include "third_party/blink/public/common/common_export.h"

namespace blink {

class ReferrerUtils {
 public:
  static BLINK_COMMON_EXPORT network::mojom::ReferrerPolicy
  NetToMojoReferrerPolicy(net::ReferrerPolicy net_policy);

  static BLINK_COMMON_EXPORT net::ReferrerPolicy GetDefaultNetReferrerPolicy();

  static BLINK_COMMON_EXPORT bool ReadModifyWriteForceLegacyPolicyFlag(
      base::Optional<bool> maybe_new_value);
};

}  // namespace blink

#endif  // THIRD_PARTY_BLINK_PUBLIC_COMMON_LOADER_REFERRER_UTILS_H_
