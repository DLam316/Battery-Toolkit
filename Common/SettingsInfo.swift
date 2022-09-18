/*
  Copyright (C) 2022 Marvin Häuser. All rights reserved.
  SPDX-License-Identifier: BSD-3-Clause
*/

import Foundation

public struct BTSettingsInfo {
    public struct Defaults {
        public static let minCharge: UInt8   = 70
        public static let maxCharge: UInt8   = 80
        public static let adapterSleep: Bool = false
    }

    public struct Bounds {
        public static let minChargeMin: UInt8 = 20
        public static let maxChargeMin: UInt8 = 50
    }

    public struct Keys {
        public static let minCharge    = "MinCharge"
        public static let maxCharge    = "MaxCharge"
        public static let adapterSleep = "AdapterSleep"
    }

    public static func chargeLimitsValid(minCharge: Int, maxCharge: Int) -> Bool {
        return minCharge <= maxCharge &&
               minCharge >= BTSettingsInfo.Bounds.minChargeMin && minCharge <= 100 &&
               maxCharge >= BTSettingsInfo.Bounds.maxChargeMin && maxCharge <= 100
    }
}
