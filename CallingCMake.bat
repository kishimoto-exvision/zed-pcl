REM ZED SDK and PCL are necessary to build this.  Add PCL binary folder to the PATH (ex. "C:\SDKs\PCL_1.8.1\bin")

rmdir /S /Q build
mkdir build
cd build

cmake.exe .. -G "Visual Studio 14 2015 Win64" ^
-DBOOST_ROOT:PATH="C:/SDKs/boost_1_64_0/include/boost-1_64/boost" ^
-DBOOST_INCLUDEDIR:PATH="C:/SDKs/boost_1_64_0" ^
-DBOOST_LIBRARYDIR:PATH="C:/SDKs/boost_1_64_0/lib/x64" ^
-DPCL_DIR:PATH="C:/SDKs/PCL_1.8.1/cmake" ^
-DCMAKE_CONFIGURATION_TYPES:STRING="Release"

cmake.exe --build "." --target "ALL_BUILD" --config "Release"

pause
