import QtQuick
import QtQuick.Controls
import QtQuick3D
import QtQuick3D.Helpers

Page {
    id:page3d



    View3D{
            id: root
            anchors.fill: parent

            environment: SceneEnvironment {
                backgroundMode: SceneEnvironment.Color
                clearColor: "#A9D6E5"
            }

            PerspectiveCamera {
                id: camera
                z: 500
                y: 800

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



            WasdController  {
                        controlledObject: camera
                        speed: 1.5
                    }

            MouseArea {
                anchors.fill: parent
                onClicked: (mouse) => {
                    var r = root.pick(mouse.x, mouse.y)
                    if(r.objectHit){
                        console.log("you clicked : " + r.objectHit.objectName)
                        backend.save_name_house_in_house(r.objectHit.objectName)
                        page3d.StackView.view.push("Edit_data_house.qml")

                    }
                }
            }




        }

    Rectangle{
        id:myBox10
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
