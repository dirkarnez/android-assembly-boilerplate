@echo off

docker build -t=android-assembly-boilerplate .
docker run --rm -it -v "%cd%:/android-assembly-boilerplate" android-assembly-boilerplate

pause