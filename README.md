# What it is 
This docker file allow you run [JLC2KiCad_lib](https://github.com/TousstNicolas/JLC2KiCad_lib) in a docker container.

# Construct the image
In the git repository, run
`docker build -t "jlc2kicad:Dockerfile" .`

# Use the container
## Start the container
In the directory of the library, run 

`docker run -it --rm -v "$PWD":/usr/src/app/lib jlc2kicad:Dockerfile`

`-rm` removes the container once it exits

`-it` gives you an interactive shell that you can use to start JLC2KiCad_lib

The " around $PWD are reqired if your path contains spaces


## Add components
You can use JLC2KiCadLib in the interactive shell, for example like this.
`JLC2KiCadLib C10487 --skip_existing -dir lib -symbol_lib <SYMBOL LIBRARY NAME> -footprint_lib <FOOTPRINT LIBRARY NAME>`
