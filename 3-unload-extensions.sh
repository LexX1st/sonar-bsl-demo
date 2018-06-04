

mkdir -p ./build/ext

vrunner unloadext ./build/ext/Extension1.cfe Extension1 --ibconnection /F./build/ib
vrunner decompileext Extension1 ./src/ext/Extension1/ --ibconnection /F./build/ib

vrunner unloadext ./build/ext/Extension2.cfe Extension2 --ibconnection /F./build/ib
vrunner decompileext Extension2 ./src/ext/Extension2/ --ibconnection /F./build/ib

vrunner unloadext ./build/ext/Extension3.cfe Extension3 --ibconnection /F./build/ib
vrunner decompileext Extension3 ./src/ext/Extension3/ --ibconnection /F./build/ib
