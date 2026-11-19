#!/usr/bin/env bash
set -euo pipefail

if [ -x "./gradlew" ]; then
  GRADLE_CMD="./gradlew"
else
  GRADLE_CMD="gradle"
fi

echo "Building clean debug APK (billing:7.1.1, minifyEnabled=false)..."
"$GRADLE_CMD" assembleDebug

SRC_APK="app/build/outputs/apk/debug/app-debug.apk"
if [ ! -f "$SRC_APK" ]; then
  echo "Không tìm thấy $SRC_APK"
  exit 1
fi

cp "$SRC_APK" "./module.apk"
echo "Đóng gói thành công: ./module.apk"
