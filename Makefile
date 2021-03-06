# Asteroids 3D
EXE=main

# Main target
all: $(EXE)
#  Link
main: bullet
	cd src && qmake Asteroids3D.pro && make && cd ..

#  Clean
clean:
	cd src && make clean && cd ..
	rm -f Asteroids3D src/bulletLibs.pro
cleanall: clean cleanBullet

# Clean and make
cleanmake: clean main

# Get and build bullet
bullet:
	./bScript.sh

cleanBullet:
	rm -rf bullet3-2.83.6 2.83.6.zip
