import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    property url textureData: "maps/textureData.jpg"
    property url textureData47: "maps/textureData47.jpg"
    property url textureData49: "maps/textureData49.png"
    property url textureData146: "maps/textureData146.jpg"
    property url textureData40: "maps/textureData40.png"
    property url textureData38: "maps/textureData38.jpg"
    property url textureData60: "maps/textureData60.jpg"
    property url textureData35: "maps/textureData35.png"
    property url textureData33: "maps/textureData33.jpg"
    property url textureData62: "maps/textureData62.png"
    property url textureData148: "maps/textureData148.png"
    property url textureData26: "maps/textureData26.png"
    property url textureData24: "maps/textureData24.jpg"
    property url textureData65: "maps/textureData65.jpg"
    property url textureData74: "maps/textureData74.jpg"
    property url textureData18: "maps/textureData18.png"
    property url textureData67: "maps/textureData67.png"
    property url textureData6: "maps/textureData6.png"
    property url textureData16: "maps/textureData16.jpg"
    property url textureData76: "maps/textureData76.png"
    property url textureData93: "maps/textureData93.png"
    Texture {
        id: _16_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData76
    }
    Texture {
        id: _10_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData49
    }
    Texture {
        id: _15_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData74
    }
    Texture {
        id: _17_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData
    }
    Texture {
        id: _11_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData60
    }
    Texture {
        id: _12_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData62
    }
    Texture {
        id: _14_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData67
    }
    Texture {
        id: _8_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData40
    }
    Texture {
        id: _13_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData65
    }
    Texture {
        id: _19_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData146
    }
    Texture {
        id: _9_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData47
    }
    Texture {
        id: _0_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData6
    }
    Texture {
        id: _7_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData38
    }
    Texture {
        id: _20_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData148
    }
    Texture {
        id: _6_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData35
    }
    Texture {
        id: _5_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData33
    }
    Texture {
        id: _1_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData16
    }
    Texture {
        id: _4_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData26
    }
    Texture {
        id: _3_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData24
    }
    Texture {
        id: _18_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData93
    }
    Texture {
        id: _2_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData18
    }
    PrincipledMaterial {
        id: brownstone_Wall_1_001_material
        baseColorMap: _19_texture
        metalnessMap: _20_texture
        roughnessMap: _20_texture
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: colormap_material
        baseColorMap: _0_texture
        metalness: 0.4000000059604645
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: brownstone_Facade_Flr_1_001_material
        baseColorMap: _1_texture
        metalnessMap: _2_texture
        roughnessMap: _2_texture
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: brownstone_Facade_Flr_2_001_material
        baseColorMap: _3_texture
        metalnessMap: _4_texture
        roughnessMap: _4_texture
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: brownstone_Facade_Flr_5_001_material
        baseColorMap: _5_texture
        metalnessMap: _6_texture
        roughnessMap: _6_texture
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: brownstone_Firstfloor_1_001_material
        baseColorMap: _7_texture
        metalnessMap: _8_texture
        roughnessMap: _8_texture
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: midcity_Facade_FLR_1_001_material
        baseColorMap: _9_texture
        metalnessMap: _10_texture
        roughnessMap: _10_texture
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: brownstone_Facade_Flr_6_001_material
        baseColorMap: _11_texture
        metalnessMap: _12_texture
        roughnessMap: _12_texture
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: brownstone_Maskedstuff_1_001_material
        baseColorMap: _13_texture
        metalnessMap: _14_texture
        roughnessMap: _14_texture
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: brownstone_Facade_Flr_4_001_material
        baseColorMap: _15_texture
        metalnessMap: _16_texture
        roughnessMap: _16_texture
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: brownstone_Facade_Flr_3_001_material
        baseColorMap: _17_texture
        metalnessMap: _18_texture
        roughnessMap: _18_texture
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Node {
        id: root
        Model {
            id: roof_flat_center
            position: Qt.vector3d(0, -2.04401, -4.67261)
            scale: Qt.vector3d(208.811, 24.0997, 124.333)
            //pickable: true
            objectName: "dar_1"
            source: "meshes/roof_flat_center_mesh.mesh"
            materials: [
                colormap_material
            ]
        }
        Node {
            id: sketchfab_model
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(1, 1, 1)
            Node {
                id: ea235635be1f45918d59334ba9b55f42_fbx
                rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                scale: Qt.vector3d(1, 1, 1)
                Node {
                    id: rootNode
                    Node {
                        id: brownstone_Classic_1
                        position: Qt.vector3d(-90, 0, 13.5304)
                        scale: Qt.vector3d(0.975292, 1, 1)
                        Node {
                            id: object_4
                            position: Qt.vector3d(-7.6139, 2.36681, 9.72298)
                            Model {
                                id: brownstone_Classic_1_Brownstone_Facade_Flr_1_0
                                position: Qt.vector3d(7.62939e-06, 0, 0)
                                pickable: true
                                objectName: "dar_2"
                                source: "meshes/brownstone_Classic_1_Brownstone_Facade_Flr_1_0_001_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_ClassicComplex_1
                        position: Qt.vector3d(-57.1302, 0, -26.1362)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: object_110
                            position: Qt.vector3d(18.4047, -10.8479, 0)
                            Model {
                                id: brownstone_ClassicComplex_1_Brownstone_Facade_Flr_2_0
                                position: Qt.vector3d(3.8147e-06, 0, 0)
                                pickable: true
                                objectName: "dar_3"
                                source: "meshes/brownstone_ClassicComplex_1_Brownstone_Facade_Flr_2_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_2_001_material,
                                    brownstone_Facade_Flr_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_ClassicComplex_2
                        position: Qt.vector3d(-60.5284, 2.38419e-06, 53.7665)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: object_114
                            position: Qt.vector3d(-3.01097, -10.0908, 0.00146246)
                            Model {
                                id: brownstone_ClassicComplex_2_Brownstone_Facade_Flr_2_0
                                pickable: true
                                objectName: "dar_4"
                                source: "meshes/brownstone_ClassicComplex_2_Brownstone_Facade_Flr_2_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_2_001_material,
                                    brownstone_Facade_Flr_5_001_material,
                                    brownstone_Firstfloor_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_Commercial_1
                        position: Qt.vector3d(-98.3237, 0.00244236, 53.5304)
                        rotation: Qt.quaternion(0.707107, 0, 0.707107, 0)
                        scale: Qt.vector3d(0.000845, 0.000845, 0.000845)
                        Node {
                            id: object_119
                            position: Qt.vector3d(5120.69, -2.89282, 8603.6)
                            Model {
                                id: brownstone_Commercial_1_Brownstone_Facade_Flr_5_0
                                position: Qt.vector3d(0.000406608, 0, -0.00761944)
                                pickable: true
                                objectName: "dar_5"
                                source: "meshes/brownstone_Commercial_1_Brownstone_Facade_Flr_5_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_5_001_material,
                                    midcity_Facade_FLR_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_Commercial_1_C
                        position: Qt.vector3d(-98.3238, 0.00244236, -26.901)
                        rotation: Qt.quaternion(0.707107, 0, 0.707107, 0)
                        scale: Qt.vector3d(0.000845, 0.000845, 0.000845)
                        Node {
                            id: object_7
                            position: Qt.vector3d(5120.69, 6831.15, 8603.61)
                            Model {
                                id: brownstone_Commercial_1_C_Brownstone_Facade_Flr_5_0
                                position: Qt.vector3d(-0.00095839, 6.01625e-05, -0.0094706)
                                pickable: true
                                objectName: "dar_6"
                                source: "meshes/brownstone_Commercial_1_C_Brownstone_Facade_Flr_5_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_5_001_material,
                                    midcity_Facade_FLR_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_1
                        position: Qt.vector3d(-17.8149, 0, 53.5304)
                        Node {
                            id: object_11
                            position: Qt.vector3d(-10.0007, 15.3876, 10)
                            Model {
                                id: brownstone_FlatFacade_1_Brownstone_Facade_Flr_2_0
                                pickable: true
                                objectName: "dar_7"
                                source: "meshes/brownstone_FlatFacade_1_Brownstone_Facade_Flr_2_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_2_001_material,
                                    brownstone_Firstfloor_1_001_material,
                                    brownstone_Facade_Flr_6_001_material,
                                    brownstone_Maskedstuff_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_12
                        position: Qt.vector3d(102.185, 0, -26.4696)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(0.664614, 0.583817, 0.436558)
                        Node {
                            id: object_67
                            position: Qt.vector3d(2.2993, -26.4644, 0)
                            Model {
                                id: brownstone_FlatFacade_12_Brownstone_Facade_Flr_4_0
                                pickable: true
                                objectName: "dar_8"
                                source: "meshes/brownstone_FlatFacade_12_Brownstone_Facade_Flr_4_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_4_001_material,
                                    brownstone_Firstfloor_1_001_material,
                                    brownstone_Maskedstuff_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_12_B
                        position: Qt.vector3d(102.185, 0, 13.5304)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(0.664614, 0.583817, 0.436558)
                        Node {
                            id: object_72
                            position: Qt.vector3d(2.2993, -26.4644, 0)
                            Model {
                                id: brownstone_FlatFacade_12_B_Brownstone_Facade_Flr_4_0
                                position: Qt.vector3d(0, -3.8147e-06, 0)
                                pickable: true
                                objectName: "dar_9"
                                source: "meshes/brownstone_FlatFacade_12_B_Brownstone_Facade_Flr_4_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_4_001_material,
                                    brownstone_Maskedstuff_1_001_material,
                                    brownstone_Firstfloor_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_12_C
                        position: Qt.vector3d(102.185, 0, 53.5304)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(0.664614, 0.583817, 0.436558)
                        Node {
                            id: object_77
                            position: Qt.vector3d(2.2993, -26.4644, 0)
                            Model {
                                id: brownstone_FlatFacade_12_C_Brownstone_Facade_Flr_5_0
                                position: Qt.vector3d(0, -7.6294e-06, 0)
                                pickable: true
                                objectName: "dar_10"
                                source: "meshes/brownstone_FlatFacade_12_C_Brownstone_Facade_Flr_5_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_5_001_material,
                                    midcity_Facade_FLR_1_001_material,
                                    brownstone_Maskedstuff_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_2
                        position: Qt.vector3d(-44.5976, 0, 13.5304)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: object_17
                            position: Qt.vector3d(-9.59761, 0, 0)
                            Model {
                                id: brownstone_FlatFacade_2_Brownstone_Facade_Flr_3_0
                                pickable: true
                                objectName: "dar_11"
                                source: "meshes/brownstone_FlatFacade_2_Brownstone_Facade_Flr_3_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_3_001_material,
                                    brownstone_Maskedstuff_1_001_material,
                                    brownstone_Facade_Flr_6_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_3
                        position: Qt.vector3d(-17.8149, 0, -26.4696)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: object_22
                            position: Qt.vector3d(-5, 0.736843, 0)
                            Model {
                                id: brownstone_FlatFacade_3_Brownstone_Facade_Flr_1_0
                                pickable: true
                                objectName: "dar_12"
                                source: "meshes/brownstone_FlatFacade_3_Brownstone_Facade_Flr_1_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_1_001_material,
                                    midcity_Facade_FLR_1_001_material,
                                    brownstone_Maskedstuff_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_4
                        position: Qt.vector3d(22.1847, 0.0466309, 53.5304)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Model {
                            id: brownstone_FlatFacade_4_Brownstone_Facade_Flr_2_0
                            pickable: true
                            objectName: "dar_13"
                            source: "meshes/brownstone_FlatFacade_4_Brownstone_Facade_Flr_2_0_mesh.mesh"
                            materials: [
                                brownstone_Facade_Flr_2_001_material,
                                brownstone_Firstfloor_1_001_material
                            ]
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_5
                        position: Qt.vector3d(4.36305, 0, 13.5304)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: object_30
                            position: Qt.vector3d(-5, 0, 0)
                            Model {
                                id: brownstone_FlatFacade_5_Brownstone_Facade_Flr_3_0
                                pickable: true
                                objectName: "dar_14"
                                source: "meshes/brownstone_FlatFacade_5_Brownstone_Facade_Flr_3_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_3_001_material,
                                    brownstone_Firstfloor_1_001_material,
                                    brownstone_Maskedstuff_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_6
                        position: Qt.vector3d(22.1854, 0, -26.4696)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: object_35
                            position: Qt.vector3d(-10.0007, 3.12275, -0.5)
                            Model {
                                id: brownstone_FlatFacade_6_Brownstone_Facade_Flr_1_0
                                pickable: true
                                objectName: "dar_15"
                                source: "meshes/brownstone_FlatFacade_6_Brownstone_Facade_Flr_1_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_1_001_material,
                                    brownstone_Firstfloor_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_6_B
                        position: Qt.vector3d(62.1854, 0, -26.4696)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: object_39
                            position: Qt.vector3d(-10.0007, 3.12275, -0.5)
                            Model {
                                id: brownstone_FlatFacade_6_B_Brownstone_Facade_Flr_1_0
                                pickable: true
                                objectName: "dar_16"
                                source: "meshes/brownstone_FlatFacade_6_B_Brownstone_Facade_Flr_1_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_1_001_material,
                                    brownstone_Firstfloor_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_7
                        position: Qt.vector3d(49.7028, 0, 13.5304)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: object_43
                            position: Qt.vector3d(-5.00001, 0, 0)
                            Model {
                                id: brownstone_FlatFacade_7_Brownstone_Facade_Flr_3_Dif_0
                                pickable: true
                                objectName: "dar_17"
                                source: "meshes/brownstone_FlatFacade_7_Brownstone_Facade_Flr_3_Dif_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_3_001_material,
                                    brownstone_Maskedstuff_1_001_material,
                                    brownstone_Firstfloor_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_7_B
                        position: Qt.vector3d(62.1851, 0, 53.5304)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: object_48
                            position: Qt.vector3d(-5, 0, 0)
                            Model {
                                id: brownstone_FlatFacade_7_B_Brownstone_Facade_Flr_3_Dif_0
                                position: Qt.vector3d(3.8147e-06, 0, 0)
                                pickable: true
                                objectName: "dar_18"
                                source: "meshes/brownstone_FlatFacade_7_B_Brownstone_Facade_Flr_3_Dif_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_3_001_material,
                                    brownstone_Firstfloor_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_8
                        position: Qt.vector3d(72.4246, 0, -80)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Model {
                            id: brownstone_FlatFacade_8_Brownstone_Facade_Flr_5_0
                            position: Qt.vector3d(7.62939e-06, -7.62939e-06, 0)
                            pickable: true
                            objectName: "dar_19"
                            source: "meshes/brownstone_FlatFacade_8_Brownstone_Facade_Flr_5_0_mesh.mesh"
                            materials: [
                                brownstone_Facade_Flr_5_001_material,
                                brownstone_Maskedstuff_1_001_material,
                                brownstone_Firstfloor_1_001_material
                            ]
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_9
                        position: Qt.vector3d(-137.871, 0.0466309, -27.462)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Model {
                            id: brownstone_FlatFacade_9_Brownstone_Facade_Flr_4_0
                            pickable: true
                            objectName: "dar_20"
                            source: "meshes/brownstone_FlatFacade_9_Brownstone_Facade_Flr_4_0_mesh.mesh"
                            materials: [
                                brownstone_Facade_Flr_4_001_material,
                                brownstone_Maskedstuff_1_001_material,
                                midcity_Facade_FLR_1_001_material
                            ]
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_9_B
                        position: Qt.vector3d(-137.815, 0, 52.9694)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Model {
                            id: brownstone_FlatFacade_9_B_Brownstone_Facade_Flr_4_0
                            pickable: true
                            objectName: "dar_21"
                            source: "meshes/brownstone_FlatFacade_9_B_Brownstone_Facade_Flr_4_0_mesh.mesh"
                            materials: [
                                brownstone_Facade_Flr_4_001_material,
                                midcity_Facade_FLR_1_001_material
                            ]
                        }
                    }
                    Node {
                        id: brownstone_FlatFacade_9_C
                        position: Qt.vector3d(-137.815, 0, 13.5304)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Model {
                            id: brownstone_FlatFacade_9_C_Brownstone_Facade_Flr_5_0
                            pickable: true
                            objectName: "dar_22"
                            source: "meshes/brownstone_FlatFacade_9_C_Brownstone_Facade_Flr_5_0_mesh.mesh"
                            materials: [
                                brownstone_Facade_Flr_5_001_material,
                                midcity_Facade_FLR_1_001_material,
                                brownstone_Maskedstuff_1_001_material
                            ]
                        }
                    }
                    Node {
                        id: brownstone_FlatFacadeComplex_1
                        position: Qt.vector3d(-34.025, 0, -76.9313)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: object_82
                            position: Qt.vector3d(-13.4477, -20.3652, -0.419059)
                            Model {
                                id: brownstone_FlatFacadeComplex_1_Brownstone_Facade_Flr_1_0
                                position: Qt.vector3d(-3.8147e-06, 3.871e-06, 0)
                                pickable: true
                                objectName: "dar_23"
                                source: "meshes/brownstone_FlatFacadeComplex_1_Brownstone_Facade_Flr_1_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_1_001_material,
                                    brownstone_Facade_Flr_2_001_material,
                                    brownstone_Firstfloor_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_FlatFacadeComplex_2
                        position: Qt.vector3d(-117.982, 0, -76.9313)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: object_87
                            position: Qt.vector3d(13.5077, -24.8379, 0)
                            Model {
                                id: brownstone_FlatFacadeComplex_2_Brownstone_Facade_Flr_4_0
                                pickable: true
                                objectName: "dar_24"
                                source: "meshes/brownstone_FlatFacadeComplex_2_Brownstone_Facade_Flr_4_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_4_001_material,
                                    brownstone_Facade_Flr_2_001_material,
                                    midcity_Facade_FLR_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_Harlem_1
                        position: Qt.vector3d(100, 0, -80)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Model {
                            id: brownstone_Harlem_1_Brownstone_Facade_Flr_1_0
                            position: Qt.vector3d(-7.62939e-06, -7.62939e-06, 0)
                            pickable: true
                            objectName: "dar_25"
                            source: "meshes/brownstone_Harlem_1_Brownstone_Facade_Flr_1_0_mesh.mesh"
                            materials: [
                                brownstone_Facade_Flr_1_001_material,
                                brownstone_Wall_1_001_material
                            ]
                        }
                    }
                    Node {
                        id: brownstone_Harlem_1_B
                        position: Qt.vector3d(32.0725, 0, -76.9313)
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Model {
                            id: brownstone_Harlem_1_B_Brownstone_Facade_Flr_1_0
                            position: Qt.vector3d(0, -7.62939e-06, 0)
                            pickable: true
                            objectName: "dar_26"
                            source: "meshes/brownstone_Harlem_1_B_Brownstone_Facade_Flr_1_0_mesh.mesh"
                            materials: [
                                brownstone_Facade_Flr_1_001_material,
                                brownstone_Wall_1_001_material
                            ]
                        }
                    }
                    Node {
                        id: brownstone_Lowrise_1
                        position: Qt.vector3d(152.185, 0, -64.8792)
                        Node {
                            id: object_98
                            position: Qt.vector3d(-10.0485, 8.51616, 20)
                            Model {
                                id: brownstone_Lowrise_1_Brownstone_Facade_Flr_3_0
                                pickable: true
                                objectName: "dar_27"
                                source: "meshes/brownstone_Lowrise_1_Brownstone_Facade_Flr_3_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_3_001_material,
                                    midcity_Facade_FLR_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_Lowrise_1_B
                        position: Qt.vector3d(152.185, 0, -14.8792)
                        Node {
                            id: object_102
                            position: Qt.vector3d(-10.0485, 8.51616, 20)
                            Model {
                                id: brownstone_Lowrise_1_B_Brownstone_Facade_Flr_3_0
                                pickable: true
                                objectName: "dar_28"
                                source: "meshes/brownstone_Lowrise_1_B_Brownstone_Facade_Flr_3_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_3_001_material,
                                    midcity_Facade_FLR_1_001_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: brownstone_Lowrise_1_C
                        position: Qt.vector3d(152.185, 0, 35.1208)
                        Node {
                            id: object_106
                            position: Qt.vector3d(-10.0485, 8.51616, 20)
                            Model {
                                id: brownstone_Lowrise_1_C_Brownstone_Facade_Flr_4_0
                                position: Qt.vector3d(0, 0, 2.42724e-06)
                                pickable: true
                                objectName: "dar_29"
                                source: "meshes/brownstone_Lowrise_1_C_Brownstone_Facade_Flr_4_0_mesh.mesh"
                                materials: [
                                    brownstone_Facade_Flr_4_001_material,
                                    midcity_Facade_FLR_1_001_material
                                ]
                            }
                        }
                    }
                }
            }
        }
    }

    // Animations:
}
