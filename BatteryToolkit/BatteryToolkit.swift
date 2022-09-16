/*
  Copyright (C) 2022 Marvin Häuser. All rights reserved.
  SPDX-License-Identifier: BSD-3-Clause
*/

import Foundation
import BTPreprocessor

internal struct BatteryToolkit {
    internal static func startDaemon(reply: @escaping ((BTDaemonManagement.Status) -> Void)) {
        BTDaemonManagement.startDaemon(reply: reply)
    }

    internal static func approveDaemon() {
        BTDaemonManagement.approveDaemon()
    }
    
    internal static func stop() {
        BTHelperXPCClient.stop()
    }
    
    internal static func disablePowerAdapter() {
        BTHelperXPCClient.disablePowerAdapter()
    }

    internal static func enablePowerAdapter() {
        BTHelperXPCClient.enablePowerAdapter()
    }

    internal static func chargeToMaximum() {
        BTHelperXPCClient.chargeToMaximum()
    }

    internal static func chargeToFull() {
        BTHelperXPCClient.chargeToFull()
    }

    internal static func disableCharging() {
        BTHelperXPCClient.disableCharging()
    }

    internal static func getState(reply: @escaping (([String: AnyObject]) -> Void)) {
        BTHelperXPCClient.getState(reply: reply)
    }

    internal static func getSettings(reply: @escaping (([String: AnyObject]) -> Void)) {
        BTHelperXPCClient.getSettings(reply: reply)
    }

    internal static func setSettings(settings: [String: AnyObject]) {
        BTHelperXPCClient.setSettings(settings: settings)
    }
    
    internal static func unregisterDaemon(reply: @escaping ((Bool) -> Void)) {
        BTDaemonManagement.unregisterDaemon(reply: reply)
    }
}
