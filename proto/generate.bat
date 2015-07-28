@echo off

echo "删除之前生成的文件"
del /F *.pb.*

echo "将所有的proto文件生成对应的目标文件"

protoc.exe test.proto --cpp_out="./"


echo "拷贝所有目标文件"
for /f "tokens=*" %%i in ('dir/s/b *.pb.*') do copy "%%i" ..\src

