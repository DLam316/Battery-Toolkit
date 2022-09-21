/*
  Copyright (C) 2022 Marvin Häuser. All rights reserved.
  SPDX-License-Identifier: BSD-3-Clause
*/

import Foundation

@objc public protocol BTServiceCommProtocol {
    func createEmptyAuthorization(reply: @Sendable @escaping (NSData?) -> Void) -> Void
    func createDaemonAuthorization(reply: @Sendable @escaping (NSData?) -> Void) -> Void
}
