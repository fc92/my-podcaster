# my-podcaster
"The kitchen radio I can't find on the market!"

## Concept
The MVP is a little device like a "kitchen radio" that can:
- play my favorite podcasts or live web radios with one press of a button, 
- on bluetooth speakers,
- using a WiFi Internet connection.

Configuration is done via Wifi web interface.

## Release plan
Available release: none.

### v 0.1 "Sun" browser only
This first version focuses on the core web interface. It provides:
- content source management for podcast and live radio streaming,
- browser version of the audio player.
The target platform is an x86 developer computer.

### v 0.2 "Sirius" introduction of a physical board
The focus is to deploy on the low cost target platform (Raspberry PI Zero W or more likely ESP32). It adds:
- static wifi and bluetooth configuration for the test environment,
- backend services for persistent content management, content auto-refresh and audio output signal from the device,
- touch pHat version of the audio player input interface,
- LCD 1602 screen information for audio player (not yet configuration or content management)
The browser version of the audio player is still available and uses the new backend services.
(An external device is still required for initial configuration and content management)

### v 0.3 "Canopus" get ready for production usage
The focus is to offer additional technical services to:
- configure the device for various WiFi and Bluetooth end user environments,
- automatically install new software version when available and provide easy rollback if necessary.
(An external device is still required for initial configuration and content management)

### v 0.4 "Rigil" full independence
The goal is to remove the need for an external device. 
The local display should be sufficient for configuration and content management.
A local speaker is used when an external bluetooth speaker is not available.

### v 0.5 "Arcturus" electronic packaging - __first MVP release candidate__
The goal is to distribute a limited serie of product to beta testers.
_Design constraints to be defined_
