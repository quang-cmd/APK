# BillingModule (module.apk)

Dự án Android sạch được cấu hình sẵn để đóng gói `module.apk` chứa thư viện gốc:
`com.android.billingclient:billing:7.1.1` với `minifyEnabled = false`.

## Cách A: Build bằng Android Studio (Offline trên máy)
1. Giải nén thư mục dự án và mở bằng **Android Studio** (`File > Open`).
2. Chờ Gradle Sync tải `com.android.billingclient:billing:7.1.1` từ Google Maven.
3. Chọn menu **Build > Build Bundle(s) / APK(s) > Build APK(s)** (hoặc chạy `./build-module.sh` / `build-module.bat`).
4. Lấy file `app/build/outputs/apk/debug/app-debug.apk` và đổi tên thành `module.apk`.

## Cách B: Build tự động trên GitHub Actions (Không cần cài Android Studio)
1. Đưa thư mục này lên một repository GitHub mới.
2. Vào tab **Actions** và chạy workflow **Build module.apk**.
3. Tải artifact **module-apk** chứa sẵn file `module.apk`.
