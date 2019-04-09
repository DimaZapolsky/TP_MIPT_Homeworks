git clone https://github.com/akhtyamovpavel/PatternsCollection
git clone https://github.com/raspberrypi/tools
cp ./PatternsCollection/Decorator/cpp-source/configs/config.ini.example ./PatternsCollection/Decorator/cpp-source/configs/config.ini
export PATH=/tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin:$PATH
cmake -D ON_PI=ON -D SYSROOT=/tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/arm-linux-gnueabihf/sysroot/ ./PatternsCollection/
make
make DESTDIR=./res/ install
tar -zcvf result.tar.gz ./res/
