REM Assuming that you download zip file from https://dl.bintray.com/boostorg/release/1.64.0/source/boost_1_64_0.zip and extract it to "C:\SDKs\boost_1_64_0".

cd /D C:\SDKs\boost_1_64_0
call bootstrap.bat
REM b2.exe toolset=msvc-14.0 link=static runtime-link=static,shared --build-dir=build/x86 address-model=32 -j5 install --includedir=C:\SDKs\boost_1_64_0\include --libdir=C:\SDKs\boost_1_64_0\lib\x86
b2.exe     toolset=msvc-14.0 link=static runtime-link=static,shared --build-dir=build/x64 address-model=64 -j5 install --includedir=C:\SDKs\boost_1_64_0\include --libdir=C:\SDKs\boost_1_64_0\lib\x64

REM Add arguments in the following line to CMake.
REM -DBOOST_ROOT:PATH="C:/SDKs/boost_1_64_0/include/boost-1_64/boost" -DBOOST_INCLUDEDIR:PATH="C:/SDKs/boost_1_64_0" -DBOOST_LIBRARYDIR:PATH="C:/SDKs/boost_1_64_0/lib/x64" 
pause
