/*
  Copyright (C) 2022 Marvin Häuser. All rights reserved.
  SPDX-License-Identifier: BSD-3-Clause
*/

import Foundation

public struct BTStateInfo {
    public enum ChargingMode: UInt8 {
        case standard
        case toMaximum
        case toFull
    }

    public enum ChargingProgress: UInt8 {
        case belowMax
        case belowFull
        case full
    }

    public struct Keys {
        public static let power        = "Power"
        public static let connected    = "Connected"
        public static let charging     = "Charging"
        public static let progress     = "Progress"
        public static let chargingMode = "Mode"
    }
}
