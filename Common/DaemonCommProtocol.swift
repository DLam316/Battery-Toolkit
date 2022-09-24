/*
  Copyright (C) 2022 Marvin Häuser. All rights reserved.
  SPDX-License-Identifier: BSD-3-Clause
*/

import Foundation

enum BTDaemonCommProtocolCommands: UInt8 {
    case disablePowerAdapter
    case enablePowerAdapter
    case chargeToFull
    case chargeToMaximum
    case disableCharging
    case removeLegacyHelperFiles
}

@objc internal protocol BTDaemonCommProtocol {
    @MainActor func getUniqueId(reply: @Sendable @escaping (NSData?) -> Void) -> Void
    @MainActor func execute(authData: NSData?, command: UInt8, reply: @Sendable @escaping (BTError.RawValue) -> Void) -> Void
    @MainActor func getState(reply: @Sendable @escaping ([String: AnyObject]) -> Void) -> Void
    @MainActor func getSettings(reply: @Sendable @escaping ([String: AnyObject]) -> Void) -> Void
    @MainActor func setSettings(authData: NSData?, settings: [String: AnyObject], reply: @Sendable @escaping (BTError.RawValue) -> Void) -> Void
}
