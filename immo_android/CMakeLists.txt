cmake_minimum_required(VERSION 3.16)

project(immo_android VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick Core Gui Quick Quick3D REQUIRED)

qt_add_executable(appimmo_android
    main.cpp
)



qt_add_qml_module(appimmo_android
    URI immo_android
    VERSION 1.0
    QML_FILES main.qml
    QML_FILES Towson.qml
    RESOURCES maps/textureData.jpg maps/textureData146.jpg maps/textureData148.png maps/textureData16.jpg maps/textureData18.png maps/textureData24.jpg maps/textureData26.png maps/textureData33.jpg maps/textureData35.png maps/textureData38.jpg maps/textureData40.png maps/textureData47.jpg maps/textureData49.png maps/textureData6.png maps/textureData60.jpg maps/textureData62.png maps/textureData65.jpg maps/textureData67.png maps/textureData74.jpg maps/textureData76.png maps/textureData93.png meshes/brownstone_Classic_1_Brownstone_Facade_Flr_1_0_001_mesh.mesh meshes/brownstone_ClassicComplex_1_Brownstone_Facade_Flr_2_0_mesh.mesh meshes/brownstone_ClassicComplex_2_Brownstone_Facade_Flr_2_0_mesh.mesh meshes/brownstone_Commercial_1_Brownstone_Facade_Flr_5_0_mesh.mesh meshes/brownstone_Commercial_1_C_Brownstone_Facade_Flr_5_0_mesh.mesh meshes/brownstone_FlatFacade_12_B_Brownstone_Facade_Flr_4_0_mesh.mesh meshes/brownstone_FlatFacade_12_Brownstone_Facade_Flr_4_0_mesh.mesh meshes/brownstone_FlatFacade_12_C_Brownstone_Facade_Flr_5_0_mesh.mesh meshes/brownstone_FlatFacade_1_Brownstone_Facade_Flr_2_0_mesh.mesh meshes/brownstone_FlatFacade_2_Brownstone_Facade_Flr_3_0_mesh.mesh meshes/brownstone_FlatFacade_3_Brownstone_Facade_Flr_1_0_mesh.mesh meshes/brownstone_FlatFacade_4_Brownstone_Facade_Flr_2_0_mesh.mesh meshes/brownstone_FlatFacade_5_Brownstone_Facade_Flr_3_0_mesh.mesh meshes/brownstone_FlatFacade_6_B_Brownstone_Facade_Flr_1_0_mesh.mesh meshes/brownstone_FlatFacade_6_Brownstone_Facade_Flr_1_0_mesh.mesh meshes/brownstone_FlatFacade_7_B_Brownstone_Facade_Flr_3_Dif_0_mesh.mesh meshes/brownstone_FlatFacade_7_Brownstone_Facade_Flr_3_Dif_0_mesh.mesh meshes/brownstone_FlatFacade_8_Brownstone_Facade_Flr_5_0_mesh.mesh meshes/brownstone_FlatFacade_9_B_Brownstone_Facade_Flr_4_0_mesh.mesh meshes/brownstone_FlatFacade_9_Brownstone_Facade_Flr_4_0_mesh.mesh meshes/brownstone_FlatFacade_9_C_Brownstone_Facade_Flr_5_0_mesh.mesh meshes/brownstone_FlatFacadeComplex_1_Brownstone_Facade_Flr_1_0_mesh.mesh meshes/brownstone_FlatFacadeComplex_2_Brownstone_Facade_Flr_4_0_mesh.mesh meshes/brownstone_Harlem_1_B_Brownstone_Facade_Flr_1_0_mesh.mesh meshes/brownstone_Harlem_1_Brownstone_Facade_Flr_1_0_mesh.mesh meshes/brownstone_Lowrise_1_B_Brownstone_Facade_Flr_3_0_mesh.mesh meshes/brownstone_Lowrise_1_Brownstone_Facade_Flr_3_0_mesh.mesh meshes/brownstone_Lowrise_1_C_Brownstone_Facade_Flr_4_0_mesh.mesh meshes/roof_flat_center_mesh.mesh
    QML_FILES Homepage.qml
    SOURCES backend.h backend.cpp
    RESOURCES android/AndroidManifest.xml android/build.gradle android/res/values/libs.xml
    QML_FILES Go_to_3d.qml
    QML_FILES Data_house.qml
    QML_FILES about.qml
    QML_FILES terms.qml
)



if(ANDROID)
    # 1. مسار مجلد include لم يتغير
    set(OPENSSL_INCLUDE_PATH "C:/Qt/android_openssl-master/include")

    # 2. المسار الأساسي لمجلدات المكتبات (ssl_3)
    set(OPENSSL_LIBS_BASE_PATH "C:/Qt/android_openssl-master/ssl_3")

    # 3. إضافة مسار الـ headers
    target_include_directories(appimmo_android PRIVATE ${OPENSSL_INCLUDE_PATH})

    # 4. **الحل النهائي:** نربط مباشرة بالمسار الكامل للملفات الحقيقية
    # هذا يخبر CMake بتجاهل الملفات الصغيرة واستخدام الملفات الكبيرة مباشرة
    target_link_libraries(appimmo_android PRIVATE
        "${OPENSSL_LIBS_BASE_PATH}/${CMAKE_ANDROID_ARCH_ABI}/libssl_3.so"
        "${OPENSSL_LIBS_BASE_PATH}/${CMAKE_ANDROID_ARCH_ABI}/libcrypto_3.so"
    )

    # رسالة للتأكيد
    message(STATUS "OpenSSL libraries explicitly linked for ABI: ${CMAKE_ANDROID_ARCH_ABI}")
endif()





# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appimmo_android PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appimmo_android
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
    QT_ANDROID_PACKAGE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/android
    QT_ANDROID_MIN_SDK_VERSION 23
    QT_ANDROID_TARGET_SDK_VERSION 33
)

target_link_libraries(appimmo_android
    PRIVATE Qt6::Quick
    Qt6::Core
    Qt6::Gui
    Qt6::Quick
    Qt6::Quick3D)

include(GNUInstallDirs)
install(TARGETS appimmo_android
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})





if(ANDROID)
    # تأكد من أن هذا المسار هو نفس المسار الذي استخدمته لربط المكتبات
    set(OPENSSL_LIBS_DEST_PATH "C:/Qt/android_openssl-master/ssl_3")

    # قائمة الملفات التي يجب نسخها (ملفات .so)
    set(OPENSSL_DEPLOY_LIBS
        "${OPENSSL_LIBS_DEST_PATH}/${CMAKE_ANDROID_ARCH_ABI}/libssl_3.so"
        "${OPENSSL_LIBS_DEST_PATH}/${CMAKE_ANDROID_ARCH_ABI}/libcrypto_3.so"
    )

    # نسخ المكتبات إلى مجلد lib الخاص بالتطبيق على الأندرويد
    # Qt Creator سيقوم بجمع هذه الملفات ووضعها في المكان الصحيح على الجهاز
    foreach(lib ${OPENSSL_DEPLOY_LIBS})
        get_filename_component(lib_name ${lib} NAME)
        add_custom_command(TARGET appimmo_android POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy_if_different ${lib}
            "${CMAKE_CURRENT_BINARY_DIR}/android-build/libs/${CMAKE_ANDROID_ARCH_ABI}/${lib_name}"
            COMMENT "Copying OpenSSL library ${lib_name} for deployment"
        )
    endforeach()
endif()
# --- END: Added for OpenSSL deployment ---
