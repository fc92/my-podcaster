# Mobile app information
This documentation is related to mobile app prototyping.

## Vue native
### Setup
Install node.js with [nvm](https://github.com/nvm-sh/nvm).  
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

$ nvm install node
Downloading and installing node v15.3.0...
Downloading https://nodejs.org/dist/v15.3.0/node-v15.3.0-linux-x64.tar.xz...
################################################################################################################################# 100,0%Computing checksum with sha256sum
Checksums matched!
Now using node v15.3.0 (npm v7.0.14)
Creating default alias: default -> node (-> v15.3.0)

```
Install [Vue native](https://vue-native.io/docs/installation.html): 
```
$ npm install --global vue-native-cli

added 58 packages, and audited 58 packages in 3s

3 packages are looking for funding
  run `npm fund` for details

found 0 vulnerabilities

$ npm install --global expo-cli
npm WARN deprecated urix@0.1.0: Please see https://github.com/lydell/urix#deprecated
npm WARN deprecated resolve-url@0.2.1: https://github.com/lydell/resolve-url#deprecated
npm WARN deprecated hoek@4.2.1: This version has been deprecated in accordance with the hapi support policy (hapi.im/support). Please upgrade to the latest version to get the best features, bug fixes, and security patches. If you are unable to upgrade at this time, paid support is available for older versions (hapi.im/commercial).
npm WARN deprecated topo@2.0.2: This version has been deprecated in accordance with the hapi support policy (hapi.im/support). Please upgrade to the latest version to get the best features, bug fixes, and security patches. If you are unable to upgrade at this time, paid support is available for older versions (hapi.im/commercial).
npm WARN deprecated fsevents@1.2.13: fsevents 1 will break on node v14+ and could be using insecure binaries. Upgrade to fsevents 2.
npm WARN deprecated chokidar@2.1.8: Chokidar 2 will break on node v14+. Upgrade to chokidar 3 with 15x less dependencies.
npm WARN deprecated har-validator@5.1.5: this library is no longer supported
npm WARN deprecated joi@11.4.0: This version has been deprecated in accordance with the hapi support policy (hapi.im/support). Please upgrade to the latest version to get the best features, bug fixes, and security patches. If you are unable to upgrade at this time, paid support is available for older versions (hapi.im/commercial).
npm WARN deprecated @hapi/pinpoint@2.0.0: Moved to 'npm install @sideway/pinpoint'
npm WARN deprecated @hapi/formula@2.0.0: Moved to 'npm install @sideway/formula'
npm WARN deprecated @hapi/address@4.1.0: Moved to 'npm install @sideway/address'
npm WARN deprecated request@2.88.2: request has been deprecated, see https://github.com/request/request/issues/3142
npm WARN deprecated fsevents@1.2.13: fsevents 1 will break on node v14+ and could be using insecure binaries. Upgrade to fsevents 2.
npm WARN deprecated chokidar@2.1.8: Chokidar 2 will break on node v14+. Upgrade to chokidar 3 with 15x less dependencies.
npm WARN deprecated @hapi/joi@17.1.1: Switch to 'npm install joi'
npm WARN deprecated core-js@2.6.12: core-js@<3 is no longer maintained and not recommended for usage due to the number of issues. Please, upgrade your dependencies to the actual version of core-js@3.

added 1984 packages, and audited 1984 packages in 58s

101 packages are looking for funding
  run `npm fund` for details

7 vulnerabilities (3 low, 3 moderate, 1 high)

To address all issues, run:
  npm audit fix

Run `npm audit` for details.

```
