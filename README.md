# my-podcaster
"The kitchen radio I can't find on the market!"

The documentation of the first prototype based on Raspberry Pi Zero W is available in [README-raspi.md](/README-raspi.md). Next step is to extend Squeezelite ESP32 that is very promising for the target platform.

## Concept
The prototype is a little device like a "kitchen radio" that can:
- play my favorite podcasts or live web radios with one press of a button, 
- on bluetooth speakers,
- using a WiFi Internet connection.

## Platform
Target hardware : ESP32 based
Base software : [Squeezelite ESP32](https://github.com/sle118/squeezelite-esp32).

Bluetooth A2DP source is tricky compared to I2S audio output. Many people struggle to configure it on different platform (including Raspberry PI Zero W, ESP32). It takes some time to get it work the first time with squeezelite ESP32 but then it is surprizingly stable compared to many other projects (including ESP-ADF).
