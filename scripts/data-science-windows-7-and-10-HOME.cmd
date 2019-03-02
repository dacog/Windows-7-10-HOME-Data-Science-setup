title Windows 7 & 10 HOME + Data Science --> Tor/Docker/Cookiecutter + chocolatey
:: install chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
echo choco installed. Downloading and installing python3 with chocolatey...
choco install python3 curl wget -y
echo refreshing environment...
call RefreshEnv.cmd
md Docker && cd Docker
echo downloading and installing pip...
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
echo installing cookiecutter...
pip install cookiecutter
echo Downloaded and intalled chocolatey (package manager), python3, pip, cookiecutter. 
echo I have to download doocker-tools and you have to open it and install full version
wget https://download.docker.com/win/stable/DockerToolbox.exe
DockerToolbox.exe
:read
set /p UserInput=Is DockerToolbox installed? (y or n)
IF /i %UserInput% == "y" GOTO yes
IF /i %UserInput% == "n" GOTO :read
:yes
cookiecutter https://github.com/manifoldai/docker-cookiecutter-data-science.git
echo "Now please open Docker Quickstart Terminal, navigate to your project folder and type ./start.sh"
::GOTO finish
:::finish
::set /p UserInput=Did you read the above message? (and opened Docker QUickstart Terminal) (y or n)
::IF /i %UserInput% == "y" GOTO yes_d
:::yes_d
::echo Great! Enjoy!
::GOTO end
::IF /i %UserInput% == "n" GOTO finish
::GOTO end
:::end
::
::::echo Now I will enable Microsoft-Windows-Subsystem-Linux. You will have to restart your computer by pressing enter in a couple of minutes.
::::powershell Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
::
pause


:: open kitematic and use virtualbox

:: open Docker Quickstart temrinal