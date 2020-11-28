# Mobile app information
This documentation is related to mobile app prototyping. First try is with Vue Native framework...

## Vue native
### Setup
Install node.js with [nvm](https://github.com/nvm-sh/nvm). Last 14.x version is the most recent supported by Vue native.  
NB : avoid Ubuntu package (EACCES errors...)
```
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash                                                                                                                               
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current                                          
                                 Dload  Upload   Total   Spent    Left  Speed
100 13527  100 13527    0     0   103k      0 --:--:-- --:--:-- --:--:--  103k                                                          => Downloading nvm from git to '/home/f/.nvm'                  
=> Clonage dans '/home/f/.nvm'...
remote: Enumerating objects: 333, done.              
remote: Counting objects: 100% (333/333), done.
remote: Compressing objects: 100% (283/283), done.
remote: Total 333 (delta 38), reused 151 (delta 25), pack-reused 0
Réception d'objets: 100% (333/333), 177.16 Kio | 1024.00 Kio/s, fait.
Résolution des deltas: 100% (38/38), fait.   
=> Compressing and cleaning up git repository
                                  
=> Appending nvm source string to /home/f/.bashrc
=> Appending bash_completion source string to /home/f/.bashrc
=> Close and reopen your terminal to start using nvm or run the following to use it now:
                                                                    
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

in $HOME source .bashrc

$ nvm install 14.15.1                                                      Downloading and installing node v14.15.1...  
Downloading https://nodejs.org/dist/v14.15.1/node-v14.15.1-linux-x64.tar.xz...                                                          ################################################################################################################################# 100,0%
Computing checksum with sha256sum                                                                                                       Checksums matched!                                                  
Now using node v14.15.1 (npm v6.14.8)                                                                                                   [f@corei7 my-podcaster (⎈ |kubernetes-admin@kubernetes:helm)]$ pwd   
/home/f/my-podcaster                                                                                                                    [f@corei7 my-podcaster (⎈ |kubernetes-admin@kubernetes:helm)]$ rm -fr vue-app
[f@corei7 my-podcaster (⎈ |kubernetes-admin@kubernetes:helm)]$ vue-native init vue-app                                                  vue-native : commande introuvable                                   
[f@corei7 my-podcaster (⎈ |kubernetes-admin@kubernetes:helm)]$ npm install --global vue-native-cli                                      /home/f/.nvm/versions/node/v14.15.1/bin/vue-native -> /home/f/.nvm/versions/node/v14.15.1/lib/node_modules/vue-native-cli/src/index.js
+ vue-native-cli@0.1.2                                                                                                                  added 58 packages from 44 contributors in 2.154s

$ npm install --global vue-native-cli                                      /home/f/.nvm/versions/node/v14.15.1/bin/vue-native -> /home/f/.nvm/versions/node/v14.15.1/lib/node_modules/vue-native-cli/src/index.js
+ vue-native-cli@0.1.2                                                                                                                  updated 1 package in 1.44s                                          

$ npm install --global expo-cli                                            npm WARN deprecated @hapi/joi@17.1.1: Switch to 'npm install joi'
npm WARN deprecated @hapi/address@4.1.0: Moved to 'npm install @sideway/address'                                                        npm WARN deprecated @hapi/formula@2.0.0: Moved to 'npm install @sideway/formula'
npm WARN deprecated @hapi/pinpoint@2.0.0: Moved to 'npm install @sideway/pinpoint'                                                      npm WARN deprecated request@2.88.2: request has been deprecated, see https://github.com/request/request/issues/3142
npm WARN deprecated har-validator@5.1.5: this library is no longer supported                                                            npm WARN deprecated resolve-url@0.2.1: https://github.com/lydell/resolve-url#deprecated
npm WARN deprecated urix@0.1.0: Please see https://github.com/lydell/urix#deprecated                                                    npm WARN deprecated chokidar@2.1.8: Chokidar 2 will break on node v14+. Upgrade to chokidar 3 with 15x less dependencies.
npm WARN deprecated fsevents@1.2.13: fsevents 1 will break on node v14+ and could be using insecure binaries. Upgrade to fsevents 2.    npm WARN deprecated core-js@2.6.12: core-js@<3 is no longer maintained and not recommended for usage due to the number of issues. Please
, upgrade your dependencies to the actual version of core-js@3.                                                                         npm WARN deprecated joi@11.4.0: This version has been deprecated in accordance with the hapi support policy (hapi.im/support). Please up
grade to the latest version to get the best features, bug fixes, and security patches. If you are unable to upgrade at this time, paid support is available for older versions (hapi.im/commercial).
npm WARN deprecated topo@2.0.2: This version has been deprecated in accordance with the hapi support policy (hapi.im/support). Please upgrade to the latest version to get the best features, bug fixes, and security patches. If you are unable to upgrade at this time, paid s
upport is available for older versions (hapi.im/commercial).                                                                            
npm WARN deprecated hoek@4.2.1: This version has been deprecated in accordance with the hapi support policy (hapi.im/support). Please upgrade to the latest version to get the best features, bug fixes, and security patches. If you are unable to upgrade at this time, paid s
upport is available for older versions (hapi.im/commercial).                                                                                                              
> @expo/traveling-fastlane-linux@1.15.1 preinstall /home/f/.nvm/versions/node/v14.15.1/lib/node_modules/expo-cli/node_modules/@expo/traveling-fastlane-linux      
> node platform.js                                                                                                                                                        
/home/f/.nvm/versions/node/v14.15.1/bin/expo -> /home/f/.nvm/versions/node/v14.15.1/lib/node_modules/expo-cli/bin/expo.js               /home/f/.nvm/versions/node/v14.15.1/bin/expo-cli -> /home/f/.nvm/versions/node/v14.15.1/lib/node_modules/expo-cli/bin/expo.js
                                                                                                                                        > core-js@2.6.12 postinstall /home/f/.nvm/versions/node/v14.15.1/lib/node_modules/expo-cli/node_modules/babel-runtime/node_modules/core-
js                                                                                                                                      > node -e "try{require('./postinstall')}catch(e){}"

Thank you for using core-js ( https://github.com/zloirock/core-js ) for polyfilling JavaScript standard library!
The project needs your help! Please consider supporting of core-js on Open Collective or Patreon: 
> https://opencollective.com/core-js 
> https://www.patreon.com/zloirock 

Also, the author of core-js ( https://github.com/zloirock ) is looking for a good job -)


> core-js@3.8.0 postinstall /home/f/.nvm/versions/node/v14.15.1/lib/node_modules/expo-cli/node_modules/core-js
> node -e "try{require('./postinstall')}catch(e){}"

npm WARN optional SKIPPING OPTIONAL DEPENDENCY: @expo/traveling-fastlane-darwin@1.15.1 (node_modules/expo-cli/node_modules/@expo/traveling-fastlane-darwin):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for @expo/traveling-fastlane-darwin@1.15.1: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: @expo/ngrok-bin-freebsd-x64@2.2.8 (node_modules/expo-cli/node_modules/@expo/ngrok-bin/node_modules/@expo/ngrok-bin-freebsd-x64):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for @expo/ngrok-bin-freebsd-x64@2.2.8: wanted {"os":"freebsd","arch":"x64"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: @expo/ngrok-bin-freebsd-ia32@2.2.8 (node_modules/expo-cli/node_modules/@expo/ngrok-bin/node_modules/@expo/ngrok-bin-freebsd-ia32):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for @expo/ngrok-bin-freebsd-ia32@2.2.8: wanted {"os":"freebsd","arch":"ia32"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: @expo/ngrok-bin-win32-ia32@2.2.8-beta.1 (node_modules/expo-cli/node_modules/@expo/ngrok-bin/node_modules/@expo/ngrok-bin-win32-ia32):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for @expo/ngrok-bin-win32-ia32@2.2.8-beta.1: wanted {"os":"win32","arch":"ia32"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: @expo/ngrok-bin-darwin-ia32@2.2.8 (node_modules/expo-cli/node_modules/@expo/ngrok-bin/node_modules/@expo/ngrok-bin-darwin-ia32):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for @expo/ngrok-bin-darwin-ia32@2.2.8: wanted {"os":"darwin","arch":"ia32"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: @expo/ngrok-bin-linux-ia32@2.2.8 (node_modules/expo-cli/node_modules/@expo/ngrok-bin/node_modules/@expo/ngrok-bin-linux-ia32):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for @expo/ngrok-bin-linux-ia32@2.2.8: wanted {"os":"linux","arch":"ia32"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: @expo/ngrok-bin-sunos-x64@2.2.8 (node_modules/expo-cli/node_modules/@expo/ngrok-bin/node_modules/@expo/ngrok-bin-sunos-x64):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for @expo/ngrok-bin-sunos-x64@2.2.8: wanted {"os":"sunos","arch":"x64"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: @expo/ngrok-bin-linux-arm@2.2.8 (node_modules/expo-cli/node_modules/@expo/ngrok-bin/node_modules/@expo/ngrok-bin-linux-arm):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for @expo/ngrok-bin-linux-arm@2.2.8: wanted {"os":"linux","arch":"arm"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: @expo/ngrok-bin-win32-x64@2.2.8-beta.1 (node_modules/expo-cli/node_modules/@expo/ngrok-bin/node_modules/@expo/ngrok-bin-win32-x64):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for @expo/ngrok-bin-win32-x64@2.2.8-beta.1: wanted {"os":"win32","arch":"x64"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: @expo/ngrok-bin-linux-arm64@2.2.8 (node_modules/expo-cli/node_modules/@expo/ngrok-bin/node_modules/@expo/ngrok-bin-linux-arm64):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for @expo/ngrok-bin-linux-arm64@2.2.8: wanted {"os":"linux","arch":"arm64"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: @expo/ngrok-bin-darwin-x64@2.2.8 (node_modules/expo-cli/node_modules/@expo/ngrok-bin/node_modules/@expo/ngrok-bin-darwin-x64):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for @expo/ngrok-bin-darwin-x64@2.2.8: wanted {"os":"darwin","arch":"x64"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@~2.1.2 (node_modules/expo-cli/node_modules/chokidar/node_modules/fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@2.1.3: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@^1.2.7 (node_modules/expo-cli/node_modules/watchpack-chokidar2/node_modules/chokidar/node_modules/fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.2.13: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@^1.2.7 (node_modules/expo-cli/node_modules/webpack-dev-server/node_modules/chokidar/node_modules/fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.2.13: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})
npm WARN @expo/configure-splash-screen@0.2.1 requires a peer of expo-splash-screen@* but none is installed. You must install peer dependencies yourself.
npm WARN @pmmmwh/react-refresh-webpack-plugin@0.3.3 requires a peer of react-refresh@^0.8.2 but none is installed. You must install peer dependencies yourself.

+ expo-cli@4.0.4
added 1874 packages from 815 contributors in 61.24s

```
OPTIONAL: Setup [Android Studio Emulator](https://docs.expo.io/workflow/android-studio-emulator) to test the app without Android phone.  
Download the last stable version., uncompress it in $HOME. 
Make sure KVM is already installed to get better performance as mentionned in the [documentation](https://developer.android.com/studio/run/emulator-acceleration?utm_source=android-studio#vm-linux). The Linux package of the documentation might differ...  
Launch setup with bin/studio.sh script. After a few question download will start and take some time...  
A default pixel device is available for testing with the last Android SDK. Add it to .bashrc: 
```
# for Android Studio
export ANDROID_SDK=/home/f/Android/Sdk
```

On Android test device install Expo App.


### Create hello world project for Android
```
$ vue-native init vue-app
Using globally installed expo-cli 4.0.4

Creating Vue Native project vue-app

⠋ Creating project with expo-cli
✔ Downloaded and extracted project files.

📦 Using npm to install packages.

✔ Installed JavaScript dependencies.

✅ Your project is ready!

To run your project, navigate to the directory and run one of the following npm commands.

- cd vue-app
- npm start # you can open iOS, Android, or web from here, or run them directly with the commands below.
- npm run android
- npm run ios # requires an iOS device or macOS for access to an iOS simulator
✔ Created project with expo-cli

⠋ Installing Vue Native dependencies
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@1.2.13 (node_modules/fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.2.13: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})

+ vue-native-helper@0.1.4
+ vue-native-core@0.1.4
added 2 packages from 1 contributor and audited 918 packages in 4.227s

43 packages are looking for funding
  run `npm fund` for details

found 9 low severity vulnerabilities
✔ Installed Vue Native dependencies

⠋ Installing Vue Native devDependencies
npm WARN vue-native-scripts@0.1.4 requires a peer of react-native@^0.59.0 but none is installed. You must install peer dependencies yourself.
npm WARN vue-native-scripts@0.1.4 requires a peer of metro@^0.51.0 but none is installed. You must install peer dependencies yourself.
npm WARN vue-native-scripts@0.1.4 requires a peer of metro-bundler@* but none is installed. You must install peer dependencies yourself.
npm WARN vue-native-scripts@0.1.4 requires a peer of metro-react-native-babel-transformer@^0.51.0 but none is installed. You must install peer dependencies yourself.
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@1.2.13 (node_modules/fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.2.13: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})

+ @babel/core@7.12.9
+ vue-native-scripts@0.1.4
added 82 packages from 69 contributors, updated 1 package and audited 1000 packages in 7.291s

43 packages are looking for funding
  run `npm fund` for details

found 9 low severity vulnerabilities
✔ Installed Vue Native devDependencies

(node:14881) Warning: Accessing non-existent property 'padLevels' of module exports inside circular dependency
(Use `node --trace-warnings ...` to show where the warning was created)
Setup complete!
```
Run the newly created empty app from the Linux prompt:  
```
$ npm start  
                                                                    
> @ start /home/f/my-podcaster/vue-app                 
> expo start                                                        

Starting project at /home/f/my-podcaster/vue-app   
Expo DevTools is running at http://localhost:19002                                                                                      
Opening DevTools in the browser... (press shift-d to disable)
Starting Metro Bundler                                              
[Local address and QR Code HERE]
 To run the app with live reloading, choose one of:
 › Scan the QR code above with the Expo app (Android) or the Camera app (iOS).
 › Press a for Android emulator, or w to run on web.
 › Press e to send a link to your phone with email.

Press ? to show a list of all available commands.
Logs for your project will appear below. Press Ctrl+C to exit.
```
Flash the QR Code on Android from the Expo app. "My Vue Native App" appears on the mobile.  

