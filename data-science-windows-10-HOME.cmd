echo off
title Windows 7 & 10 HOME + Data Science --> Tor/Docker/Cookiecutter + chocolatey
:: install chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
echo choco installed. Downloading and nstalling python3 adn docker-toolbox with chocolatey...
choco install python3 -y
echo refreshing environment...
refreshenv
echo downloading and installing pip...
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py
echo installing cookiecutter...
pip install cookiecutter
echo Downloaded and intalled chocolatey (package manager), python3, pip, cookiecutter. 
echo I have to download doocker-tools and you have to open it and install full version
wget https://download.docker.com/win/stable/DockerToolbox.exe.
::echo Now I will enable Microsoft-Windows-Subsystem-Linux. You will have to restart your computer by pressing enter in a couple of minutes.
::powershell Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux


pause


:: open kitematic and use virtualbox

:: open Docker Quickstart temrinal