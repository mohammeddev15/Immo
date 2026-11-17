# 🏙️ IMMO — 3D Real Estate Experience

> **Not just an app. A whole city in your pocket.**
> Explore real houses in a real 3D city, click any house, see its details, photos, price, and live data from Firebase.

[Qt](https://img.shields.io/badge/Qt-6.5.3-41CD52?style=for-the-badge&logo=qt&logoColor=white)
[QML](https://img.shields.io/badge/QML-Qt_Quick-FF6F00?style=for-the-badge)
[C++](https://img.shields.io/badge/C++-17-00599C?style=for-the-badge&logo=cplusplus&logoColor=white)
[Qt Quick 3D](https://img.shields.io/badge/Qt_Quick_3D-RealTime_3D-00A8E8?style=for-the-badge)
[Firebase](https://img.shields.io/badge/Firebase-Realtime_DB-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)
[CMake](https://img.shields.io/badge/CMake-3.16+-064F8C?style=for-the-badge&logo=cmake&logoColor=white)
[Android](https://img.shields.io/badge/Android-23+-3DDC84?style=for-the-badge&logo=android&logoColor=white)
[Windows](https://img.shields.io/badge/Windows-Desktop-0078D6?style=for-the-badge&logo=windows&logoColor=white)

---

## 🔥 Why IMMO Is Different

Most real-estate apps show you a list. **IMMO shows you a city.**

You open the app, you fly over a full 3D subdivision, you see 30+ houses with flat roofs, 3-4 floors, parks, gardens, streets. You click a house, it opens its real data. No fake data. No screenshots. Live from the cloud.

This is **Prototype + Engine** built to be customized for any real-estate developer.

---

## ✨ Features

| Feature | Description |
| :--- | :--- |
| **3D City** | Full low-poly city, one optimized object, 60 FPS even on i5 7th Gen / 8GB RAM |
| **Click Any House** | Pick in 3D with `View3D.pick()` -> Open House Details |
| **Live Data** | Every house has 32 fields from Firebase: price, surface, rooms, piscine, security, images, etc. |
| **Bilingual UI** | English - Arabic labels: `Price - الثمن`, `Edit Info - تعديل المعلومات` |
| **Mobile Controls** | Drag to rotate, Pinch to zoom, Tap to select, WASD on PC |
| **Sky + Lighting** | Gradient sky, 5 PointLights, camera light, realistic day look |
| **Edit Mode** | Developer can edit any house info from inside the app |
| **Custom Version** | Built for developers: we rebuild your own city with your own houses on request |

---

## 🛠️ Tech Stack - All Skills In One Project

### Frontend / UI
- **QML + Qt Quick** - All screens: `main.qml`, `Homepage.qml`, `Go_to_3d.qml`, `Data_house.qml`, `Towson.qml`
- **Qt Quick 3D** - `RuntimeLoader`, `PerspectiveCamera`, `PointLight`, `Model`, `Picking`
- **Responsive Design** - Layout adapts to Phone / Tablet / PC, sizes fixed for Android

### Backend / Logic
- **C++ 17** - `Backend.h / Backend.cpp` - All logic separated from UI
- **Q_PROPERTY + QJsonObject** - 32 properties per house, exposed to QML
- **Signals & Slots** - `get_data()`, `dataChanged`, `deleteLater()` to avoid memory leaks

### 3D / Graphics
- **Qt Quick 3D + Blender** - City modeled in Blender, exported as `.mesh` + textures
- **Low-Poly Optimization** - 14 MB city, one object, `Ctrl+J`, Origin to Bottom, flat roofs
- **Lighting Engine** - 5x PointLight `brightness 250` + camera light `brightness 10`

### Database / Cloud / API
- **Firebase Realtime Database** - `https://your-link.firebaseio.com/`
- **REST API** - `QNetworkAccessManager`, `QNetworkRequest`, `GET /doha/dar_15.json`
- **JSON Parsing** - `QJsonDocument`, `QJsonObject`, image array `qrc:/Immo/assets/...`
- **Auto-Sync** - `Timer` every 10-15s, requests deleted after reply to avoid leaks

### Network / Security
- **Network** - HTTPS, `QNetworkReply`, error handling, offline fallback
- **OpenSSL** - Android deployment with `QT_ANDROID_EXTRA_LIBS`, `libssl_1_1.so` + `libcrypto_1_1.so`
- **Firebase Rules** - `.read / .write` controlled per project

### Build / Deploy
- **CMake 3.16+** - Not qmake. `qt_add_executable`, `qt_add_qml_module`, `app.rc` for Windows icon
- **Qt 6.5.3 MinGW 64-bit** - PC build
- **Android** - `QT_ANDROID_PACKAGE_SOURCE_DIR`, `MIN_SDK 23`, `TARGET_SDK 33`, `AndroidManifest.xml`
- **GitHub** - PC version + Controller version

---

## 🏗️ Architecture

```
IMMO
│
├── UI Layer (QML Only - Display)
│   ├── main.qml
│   ├── Homepage.qml
│   ├── Go_to_3d.qml       -> 3D View Only
│   ├── Towson.qml         -> City Loader
│   └── Data_house.qml     -> House Details
│
├── Logic Layer (C++ Only - Brain)
│   ├── Backend.h / Backend.cpp
│   ├── 32x Q_PROPERTY (price, surface, piscine, security...)
│   ├── get_data(houseId)
│   └── QNetworkAccessManager -> Firebase
│
├── 3D Assets
│   ├── meshes/*.mesh
│   ├── maps/textureData*.jpg/.png
│   └── City = 1 object, 30 houses, park, garden
│
└── Cloud
    └── Firebase Realtime DB
        └── /doha/dar_15
            ├── name, price, surface, rooms...
            └── images: [qrc:/...]
```

**Rule:** `3D View = Display Only. C++ Backend = Logic + Firebase. Never mix.`

---

## 🔥 Firebase Data Example

```json
{
  "doha": {
    "dar_15": {
      "name": "Dar 15",
      "price": "850000",
      "surface": "120m2",
      "rooms": "4",
      "piscine": "Yes",
      "security": "Yes",
      "images": [
        "qrc:/Immo/assets/house15_1.jpg",
        "qrc:/Immo/assets/house15_2.jpg"
      ]
    }
  }
}
```

Fetch in C++:
```cpp
QUrl url("https://your-link.firebaseio.com/doha/dar_15.json");
manager->get(QNetworkRequest(url));
```

---

## 🎮 Controls

| Platform | Control |
| :--- | :--- |
| **PC** | `W A S D` to move, Mouse drag to rotate, Click to select house |
| **Mobile** | Drag to rotate, Pinch to zoom, Tap to select |

---

## 🚀 How To Run

### PC - Windows
```bash
git clone https://your-link/immo.git
cd immo
cmake -B build -DCMAKE_PREFIX_PATH="C:/Qt/6.5.3/mingw_64"
cmake --build build --config Release
```

### Android
1. Open in Qt Creator with Android Kit
2. Set `QT_ANDROID_PACKAGE_SOURCE_DIR` to `android/`
3. Add OpenSSL libs in `CMakeLists.txt` -> `QT_ANDROID_EXTRA_LIBS`
4. Build -> Deploy to phone

---

## 📱 Screenshots

> Add your screenshots here:
> `screenshots/city_3d.png`, `screenshots/house_details.png`, `screenshots/homepage.png`

---

## 👨‍💻 Developer

**Mohammed Amine** - Full-Stack Qt Developer

Skills demonstrated in this project:
`Qt` `QML` `C++` `Qt Quick 3D` `Blender 3D Modeling` `Firebase` `REST API` `JSON` `Network` `OpenSSL` `CMake` `Android` `Windows` `GitHub` `UI/UX` `Bilingual App` `Performance Optimization`

> Built on a weak PC (i5 7th Gen, 8GB RAM) to run on weak devices. Light = Fast = Professional.

---

## 📩 For Real-Estate Developers

This is a **prototype**. Want your own version?

We build your city, your houses, your prices, your branding, and you can visit your office from your computer in 3D.

Contact for custom version.

---

## 📄 License

MIT License - Free to use, customize and build your own version.

⭐ **If you like this project, give it a star!**
