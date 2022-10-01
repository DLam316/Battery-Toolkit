#!/bin/sh

##
# Copyright (C) 2022 Marvin Häuser. All rights reserved.
# SPDX-License-Identifier: BSD-3-Clause
##

sudo rm /Library/LaunchDaemons/me.mhaeuser.batterytoolkitd.plist
sudo rm /Library/PrivilegedHelperTools/me.mhaeuser.batterytoolkitd
sudo launchctl remove me.mhaeuser.batterytoolkitd

sudo defaults delete me.mhaeuser.batterytoolkitd
sudo security authorizationdb remove me.mhaeuser.batterytoolkitd.manage

launchctl remove me.mhaeuser.BatteryToolkitAutostart

defaults remove me.mhaeuser.BatteryToolkit
