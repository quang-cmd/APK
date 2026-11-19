@echo off
setlocal

if exist gradlew.bat (
  call gradlew.bat assembleDebug
) else (
  call gradle assembleDebug
)

if errorlevel 1 (
  echo Build that bai. Kiem tra lai JDK 17 va Android SDK.
  exit /b 1
)

copy /Y "app\build\outputs\apk\debug\app-debug.apk" "module.apk"
echo Dong goi thanh cong: module.apk
