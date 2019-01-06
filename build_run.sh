#!/bin/bash

#Create flutter bundle if not exist
if [ ! -d "build/flutter_assets" ]; then
    flutter build bundle
fi

#Create vscode flutter launch desktop if not exist
if [ ! -d ".vscode/launch.json" ]; then
mkdir ".vscode"
cat >.vscode/launch.json <<EOL
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Flutter Desktop",
      "request": "attach",
      "deviceId": "flutter-tester",
      "observatoryUri": "http://127.0.0.1:49494/",
      "type": "dart"
    }
  ]
}
EOL
fi
#Run flutter desktop runner
open -a Flutter.app