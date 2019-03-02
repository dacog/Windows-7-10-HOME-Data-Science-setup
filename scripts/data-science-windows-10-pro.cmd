title installing TOR
echo I have to install a wsl distribution now. I've picker Ubuntu 18.04
choco install wsl-ubuntu-1804 -y
echo Now I'll create a Docker folder and the project folder. 
echo Please follow the instructions. After that open the project folder and double click start.sh
md Docker && cd Docker
cookiecutter https://github.com/manifoldai/docker-cookiecutter-data-science.git
