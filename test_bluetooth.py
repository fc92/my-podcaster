# -*- coding: utf-8 -*-

# This file is part of my-podcaster.

# my-podcaster is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# my-podcaster is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with my-podcaster.  If not, see <https://www.gnu.org/licenses/>

# Project home page: https://github.com/fc92/my-podcaster

# test for: bluetooth manager program of the podcaster
from bluetooth import BTDevice, BTManager


def test_list_bt_devices():
    '''this is an integration test with 2 bluetooth speakers reachable'''

    # IMPORTANT : update these values to match the integration test environment
    expected_bt_devices = [BTDevice("00:19:F5:86:38:90", "Jongo"), BTDevice(
        "02:1A:01:0F:0D:01", "Esinkin BT Adapter")]
    # get list of bt devices detected
    detected_bt_devices = BTManager.list_bt_devices()

    for device in expected_bt_devices:
        found = False
        for d in detected_bt_devices:
            if d.address == device.address:
                found = True
                assert d.name == device.name
                assert d == device, "BT device "+device.address + \
                    " not found, update test data if necessary"
        assert found, "BT device "+device.address + \
            " not found, update test data if necessary"
