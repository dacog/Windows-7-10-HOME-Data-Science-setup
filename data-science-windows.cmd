echo off
title Windows 10 + Data Science --> Tor/Docker/Cookiecutter + chocolatey
:: install chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
echo choco installed. Installing python3
choco install python3 docker-toolbox -y
refreshenv
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py
pip install cookiecutter



:: Install 

echo Downloaded and intalled chocolatey (package manager), python3, pip, cookiecutter.
pause