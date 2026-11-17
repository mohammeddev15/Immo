import QtQuick
import QtQuick.Controls
import QtQuick3D
import QtQuick3D.Helpers

Page {
    id:page3d
    View3D{
            id: root
            anchors.fill: parent

            property bool isMobile: Qt.platform.os === "android" || Qt.platform.os === "ios"
            property real camRotY: 0
            property real camRotX: -25

            environment: SceneEnvironment {
                backgroundMode: SceneEnvironment.Color
                clearColor: "#A9D6E5"
            }

            PerspectiveCamera {
                id: camera
                z: 500
                y: 800
                eulerRotation.x: root.camRotX
                eulerRotation.y: root.camRotY
                PointLight {
                            y: 180
                            brightness: 10
                            castsShadow: true
                            shadowFactor: 75
                            shadowBias: 20
                            position: Qt.vector3d(50, 50, 20)
                        }
            }





            // === 5 مصابيح مجهدين موزعين على المدينة ===
            Node {
                id: cityLights

                // 1 - الوسط
                PointLight {
                    position: Qt.vector3d(0, 1000, 0)
                    brightness: 300
                    color: "white"
                    castsShadow: true
                    shadowFactor: 90
                    shadowBias: 10
                }
                // 2 - القنت الفوق على اليسار
                PointLight {
                    position: Qt.vector3d(-3500, 1000, -1500)
                    brightness: 250
                    color: "white"
                    castsShadow: true
                    shadowFactor: 90
                }
                // 3 - القنت الفوق على اليمين
                PointLight {
                    position: Qt.vector3d(3500, 1000, -1500)
                    brightness: 250
                    color: "white"
                    castsShadow: true
                    shadowFactor: 90
                }
                // 4 - القنت التحت على اليسار
                PointLight {
                    position: Qt.vector3d(-3500, 1000, 1500)
                    brightness: 250
                    color: "white"
                    castsShadow: true
                    shadowFactor: 90
                }
                // 5 - القنت التحت على اليمين
                PointLight {
                    position: Qt.vector3d(3500, 1000, 1500)
                    brightness: 250
                    color: "white"
                    castsShadow: true
                    shadowFactor: 90
                }
            }
            Towson   {
                position: Qt.vector3d(0, 0, 0)
                    scale: Qt.vector3d(30, 30, 30)

                }




                // 2 - ديال التيليفون - دوران بصبع واحد





        }

    DragHandler {
        enabled: root.isMobile
        target: null
        onActiveTranslationChanged: (delta) => {
            root.camRotY -= delta.x * 0.5
            root.camRotX -= delta.y * 0.5
            //if(root.camRotX > -10) root.camRotX = -10
            //if(root.camRotX < -80) root.camRotX = -80
        }
    }

    // 3 - زوم بجوج صبعان
    PinchHandler {
        enabled: root.isMobile
        target: null
        onActiveScaleChanged: (delta) => {
            var step = (delta - 1) * 500

            var yaw = root.camRotY * Math.PI / 180
            var pitch = root.camRotX * Math.PI / 180

            // هادا هو الأمام ديال الكاميرا، ماشي محور العالم
            var fx = -Math.sin(yaw) * Math.cos(pitch)
            var fy = Math.sin(pitch)
            var fz = -Math.cos(yaw) * Math.cos(pitch)

            var nx = camera.position.x + fx * step
            var ny = camera.position.y + fy * step
            var nz = camera.position.z + fz * step

            // باش ما تهبطش تحت الأرض
            //if (ny < 50) ny = 50

            // باش ما تفوتش المدينة و ما تبعدش بزاف
            var dist = Math.sqrt(nx*nx + ny*ny + nz*nz)
            //if (dist < 150) return
            //if (dist > 2500) return

            camera.position = Qt.vector3d(nx, ny, nz)
        }
    }

    // 4 - الضغط على الدار - TapHandler خدام حسن فالتيليفون من MouseArea
    TapHandler {
        onTapped: (eventPoint) => {
            var p = eventPoint.position
            var r = root.pick(p.x, p.y)
            if(r.objectHit){
                        console.log("you clicked : " + r.objectHit.objectName)
                        backend.save_name_house_in_house(r.objectHit.objectName)
                        backend.get_data(r.objectHit.objectName)
                        page3d.StackView.view.push("Data_house.qml")
            }
        }
    }




    Rectangle{
        id:myBox2
        width: parent.width *0.1
        height: parent.height*0.05
        color: "black"
        radius:10
        clip: true

        Text {
            id: text1
            text: qsTr("back")
            font.family: "Stencil"
            font.pointSize: 15
            anchors.centerIn: parent
        }
        gradient: Gradient {
            GradientStop {
                position: 0.69;
                color: backend.color[3];
            }
            GradientStop {
                position: 1.00;
                color: "#ffffff";
            }
        }
        x:parent.width*0.001
        y:parent.height*0.001
        MouseArea {
                anchors.fill: parent
                hoverEnabled: true // هادي ضروري باش يخدم onEntered و onExited

                onEntered: {
                    backend.changeColor(3,"#911111")

                }
                onExited: {
                    backend.changeColor(3,"red")

                }

                onPressed: {
                    backend.changeColor(3,"#5d0b0b")

                }
                onReleased:{
                    page3d.StackView.view.pop()
                    backend.changeColor(3,"red")
                }
            }

    }


}
