#!/bin/bash

# Unpack the archive
echo
echo "Modifying the Trello source code"
cd /Applications/Trello.app/Contents/Resources
sudo asar extract app.asar app
sudo mv app.asar app.asar.old

# Append CSS modifications to overrides file
cd - > /dev/null
cat resources/modifications.css | sudo tee -a /Applications/Trello.app/Contents/Resources/app/views/css/webview-overrides.css > /dev/null
echo "Done! Please relaunch Trello."
echo
