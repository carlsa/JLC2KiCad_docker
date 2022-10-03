# JLC2KiCad_docker
A docker file for JLC2KiCad_lib


Build with
´docker build -t "jlc2kicad:Dockerfile" .´

Start container with 


# " around $PWD are required in case there are spaces in the directory name
docker run -it --rm -v "$PWD/lib":/usr/src/app/lib jlc2kicad:Dockerfile

-it makes an interactive container
-rm removes it after use

