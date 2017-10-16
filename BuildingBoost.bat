REM Assuming that you download zip file from https://dl.bintray.com/boostorg/release/1.64.0/source/boost_1_64_0.zip and extract it to "C:\SDKs\boost_1_64_0".

cd /D C:\SDKs\boost_1_64_0
call bootstrap.bat

REM make *-vc140-mt(-gd)-1_64.lib files to build applications with "/MD" option (Runtime Library == Multi-threaded DLL) for 32-bit address model (I don't understand why the name is *_64.lib.)
    b2.exe toolset=msvc-14.0 link=static runtime-link=shared --build-dir=build/x86     address-model=32 -j5 install --includedir=C:\SDKs\boost_1_64_0\include --libdir=C:\SDKs\boost_1_64_0\lib\x86
REM make *-vc140-mt(-gd)-1_64.lib files to build applications with "/MD" option (Runtime Library == Multi-threaded DLL) for 64-bit address model
    b2.exe toolset=msvc-14.0 link=static runtime-link=shared --build-dir=build/x64     address-model=64 -j5 install --includedir=C:\SDKs\boost_1_64_0\include --libdir=C:\SDKs\boost_1_64_0\lib\x64
REM make *-vc140-mt-s(gd)-1_64.lib files for building applications with "/MT" option (Runtime Library == Multi-threaded)
    b2.exe toolset=msvc-14.0 link=static runtime-link=static --build-dir=build/x64_MT  address-model=64 -j5 install --includedir=C:\SDKs\boost_1_64_0\include --libdir=C:\SDKs\boost_1_64_0\lib\x64_MT
REM make *-vc140-mt-(gd-)1_64.lib and .dll files for building applications with "/MD" option (Runtime Library == Multi-threaded DLL)
    b2.exe toolset=msvc-14.0 link=shared runtime-link=shared --build-dir=build/x64_dll address-model=64 -j5 install --includedir=C:\SDKs\boost_1_64_0\include --libdir=C:\SDKs\boost_1_64_0\lib\x64_dll

REM Add arguments in the following line to CMake.
REM -DBOOST_ROOT:PATH="C:/SDKs/boost_1_64_0/include/boost-1_64/boost" -DBOOST_INCLUDEDIR:PATH="C:/SDKs/boost_1_64_0" -DBOOST_LIBRARYDIR:PATH="C:/SDKs/boost_1_64_0/lib/x64"

pause
