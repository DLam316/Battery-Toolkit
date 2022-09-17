/*
  Copyright (C) 2022 Marvin Häuser. All rights reserved.
  SPDX-License-Identifier: BSD-3-Clause
*/

import Foundation

@objc public protocol BTServiceCommProtocol {
    func askAuthorization(reply: @Sendable @escaping (NSData?) -> Void) -> Void
}
