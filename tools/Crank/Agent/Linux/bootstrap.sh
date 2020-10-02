#!/bin/bash

mkdir ~/github
cd ~/github
git clone https://github.com/Azure/azure-functions-host.git
cd azure-functions-host
git checkout anatolib/crank-linux-container

cd tools/Crank/Agent
sudo find . -name "*.sh" -exec sudo chmod +xr {} \;
sudo find . -name "*.ps1" -exec sudo chmod +xr {} \;

Linux/install-powershell.sh

./setup-crank-agent-json.ps1 -ParametersJson $1 -Verbose
