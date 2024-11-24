@echo off

mkdir ..\..\SurfaceDuo-Drivers-Release
del ..\..\SurfaceDuo-Drivers-Release\SurfaceDuo-Drivers-Full.7z

mkdir ..\SurfaceDuo-Drivers-Full
mkdir ..\SurfaceDuo-Drivers-Full\adaptationkits
mkdir ..\SurfaceDuo-Drivers-Full\apps
mkdir ..\SurfaceDuo-Drivers-Full\components
mkdir ..\SurfaceDuo-Drivers-Full\definitions
mkdir ..\SurfaceDuo-Drivers-Full\docs
mkdir ..\SurfaceDuo-Drivers-Full\tools

xcopy /cheriky ..\adaptationkits ..\SurfaceDuo-Drivers-Full\adaptationkits
xcopy /cheriky ..\apps ..\SurfaceDuo-Drivers-Full\apps
xcopy /cheriky ..\components ..\SurfaceDuo-Drivers-Full\components
xcopy /cheriky ..\definitions ..\SurfaceDuo-Drivers-Full\definitions
xcopy /cheriky ..\docs ..\SurfaceDuo-Drivers-Full\docs
xcopy /cheriky ..\tools ..\SurfaceDuo-Drivers-Full\tools

"7z.exe" a -t7z -r ..\..\SurfaceDuo-Drivers-Release\SurfaceDuo-Drivers-Full.7z ..\SurfaceDuo-Drivers-Full\*

rmdir /Q /S ..\SurfaceDuo-Drivers-Full