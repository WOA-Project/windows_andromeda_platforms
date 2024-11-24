@echo off

mkdir ..\..\SurfaceDuo-Drivers-Release
del ..\..\SurfaceDuo-Drivers-Release\SurfaceDuo-Drivers-Full.7z

"7z.exe" a -t7z -r ..\..\SurfaceDuo-Drivers-Release\SurfaceDuo-Drivers-Full.7z ..\*

rmdir /Q /S SurfaceDuo-Drivers-Full