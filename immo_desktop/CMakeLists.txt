cmake_minimum_required(VERSION 3.16)

project(Immo VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick Core Gui Quick Quick3D REQUIRED)

qt_add_executable(appImmo
    main.cpp
    icon.rc
)

qt_add_qml_module(appImmo
    URI Immo
    VERSION 1.0
    QML_FILES main.qml
    QML_FILES Homepage.qml
    SOURCES backend.h backend.cpp
    QML_FILES Go_to_3d.qml
    QML_FILES Towson.qml
    RESOURCES maps/textureData.jpg maps/textureData146.jpg maps/textureData148.png maps/textureData16.jpg maps/textureData18.png maps/textureData24.jpg maps/textureData26.png maps/textureData33.jpg maps/textureData35.png maps/textureData38.jpg maps/textureData40.png maps/textureData47.jpg maps/textureData49.png maps/textureData6.png maps/textureData60.jpg maps/textureData62.png maps/textureData65.jpg maps/textureData67.png maps/textureData74.jpg maps/textureData76.png maps/textureData93.png meshes/brownstone_Classic_1_Brownstone_Facade_Flr_1_0_001_mesh.mesh meshes/brownstone_ClassicComplex_1_Brownstone_Facade_Flr_2_0_mesh.mesh meshes/brownstone_ClassicComplex_2_Brownstone_Facade_Flr_2_0_mesh.mesh meshes/brownstone_Commercial_1_Brownstone_Facade_Flr_5_0_mesh.mesh meshes/brownstone_Commercial_1_C_Brownstone_Facade_Flr_5_0_mesh.mesh meshes/brownstone_FlatFacade_12_B_Brownstone_Facade_Flr_4_0_mesh.mesh meshes/brownstone_FlatFacade_12_Brownstone_Facade_Flr_4_0_mesh.mesh meshes/brownstone_FlatFacade_12_C_Brownstone_Facade_Flr_5_0_mesh.mesh meshes/brownstone_FlatFacade_1_Brownstone_Facade_Flr_2_0_mesh.mesh meshes/brownstone_FlatFacade_2_Brownstone_Facade_Flr_3_0_mesh.mesh meshes/brownstone_FlatFacade_3_Brownstone_Facade_Flr_1_0_mesh.mesh meshes/brownstone_FlatFacade_4_Brownstone_Facade_Flr_2_0_mesh.mesh meshes/brownstone_FlatFacade_5_Brownstone_Facade_Flr_3_0_mesh.mesh meshes/brownstone_FlatFacade_6_B_Brownstone_Facade_Flr_1_0_mesh.mesh meshes/brownstone_FlatFacade_6_Brownstone_Facade_Flr_1_0_mesh.mesh meshes/brownstone_FlatFacade_7_B_Brownstone_Facade_Flr_3_Dif_0_mesh.mesh meshes/brownstone_FlatFacade_7_Brownstone_Facade_Flr_3_Dif_0_mesh.mesh meshes/brownstone_FlatFacade_8_Brownstone_Facade_Flr_5_0_mesh.mesh meshes/brownstone_FlatFacade_9_B_Brownstone_Facade_Flr_4_0_mesh.mesh meshes/brownstone_FlatFacade_9_Brownstone_Facade_Flr_4_0_mesh.mesh meshes/brownstone_FlatFacade_9_C_Brownstone_Facade_Flr_5_0_mesh.mesh meshes/brownstone_FlatFacadeComplex_1_Brownstone_Facade_Flr_1_0_mesh.mesh meshes/brownstone_FlatFacadeComplex_2_Brownstone_Facade_Flr_4_0_mesh.mesh meshes/brownstone_Harlem_1_B_Brownstone_Facade_Flr_1_0_mesh.mesh meshes/brownstone_Harlem_1_Brownstone_Facade_Flr_1_0_mesh.mesh meshes/brownstone_Lowrise_1_B_Brownstone_Facade_Flr_3_0_mesh.mesh meshes/brownstone_Lowrise_1_Brownstone_Facade_Flr_3_0_mesh.mesh meshes/brownstone_Lowrise_1_C_Brownstone_Facade_Flr_4_0_mesh.mesh meshes/roof_flat_center_mesh.mesh
    QML_FILES Data_house.qml
    RESOURCES icon.rc
    RESOURCES appicon.ico
    QML_FILES about.qml
    QML_FILES terms.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appImmo PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appImmo
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appImmo
    PRIVATE Qt6::Quick
    Qt6::Core
    Qt6::Gui
    Qt6::Quick
    Qt6::Quick3D)

include(GNUInstallDirs)
install(TARGETS appImmo
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
