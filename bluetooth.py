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

# bluetooth manager program of the podcaster
# TO DO: proper Py doc and unit tests
import subprocess

class BTDevice:
    '''a bluetooth device (like a bluetooth speaker A2DP sink mode)'''

    def __init__(self, address, name):
        self.address = address
        self.name = name

    def __eq__(self, other):
        if not isinstance(other, BTDevice):
            # don't attempt to compare against unrelated types
            return NotImplemented
        return self.address == other.address and self.name == other.name


class BTManager:
    '''manages bluetooth devices with the bluetoothctl Linux command'''

    @staticmethod
    def list_bt_devices():
        '''return addresses of paired bluetooth devices'''
        device_list = subprocess.Popen("bluetoothctl devices",
                                       shell=True, stdout=subprocess.PIPE).communicate()[0].decode('ascii').rstrip().split("\n")
        bt_devices = []
        for dev in device_list:
            device_info = dev.split(' ', 2)
            bt_devices.append(BTDevice(device_info[1], device_info[2]))
        return bt_devices
