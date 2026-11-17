import QtQuick
import QtQuick.Controls

Page {
    id :homePage
    Text {
                id: title

                color: "#a37afb"
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: 50
                text: "🎇Immo🎇"
                font.family: "Cinzel"
                font.bold: true
                font.pointSize: 20

                SequentialAnimation on rotation {
                                loops: Animation.Infinite // كرر كل التسلسل للأبد

                                // الحركة 1: اذهب
                                NumberAnimation {
                                    easing.type: Easing.InQuad
                                    from: -20
                                    to: 20
                                    duration: 1000
                                    //easing.type: Easing.OutSine

                                }
                                // الحركة 2: ارجع
                                NumberAnimation {
                                    easing.type: Easing.InQuad
                                    from: 20
                                    to: -20
                                    duration: 1000
                                    //easing.type: Easing.InCubic
                                }
                            }


                }
    Rectangle{
        id:myBox1
        width: parent.width *0.30
        height: parent.height*0.1
        color: "black"
        radius:10
        clip: true

        Text {
            id: text1
            text: qsTr("about")
            font.family: "Stencil"
            font.pointSize: 15
            anchors.centerIn: parent
        }
        gradient: Gradient {
            GradientStop {
                position: 0.69;
                color: backend.color[0];
            }
            GradientStop {
                position: 1.00;
                color: "#ffffff";
            }
        }
        x:parent.width*0.0
        y:parent.height*0.5
        MouseArea {
                anchors.fill: parent
                hoverEnabled: true // هادي ضروري باش يخدم onEntered و onExited

                onEntered: {
                    backend.changeColor(0,"#2d2d2d")

                }
                onExited: {
                    backend.changeColor(0,"#999999")

                }

                onPressed: {
                    backend.changeColor(0,"#314928")

                }
                onReleased:{
                    homePage.StackView.view.push("about.qml")
                }
            }

    }



    Rectangle{
        id:myBox2
        width: parent.width *0.30
        height: parent.height*0.1
        color: "black"
        radius:10
        clip: true

        Text {
            id: text2
            text: qsTr("the terms of service")
            font.family: "Stencil"
            font.pointSize: 15
            anchors.centerIn: parent
        }
        gradient: Gradient {
            GradientStop {
                position: 0.69;
                color: backend.color[1];
            }
            GradientStop {
                position: 1.00;
                color: "#ffffff";
            }
        }
        x:parent.width*0.35
        y:parent.height*0.5
        MouseArea {
                anchors.fill: parent
                hoverEnabled: true // هادي ضروري باش يخدم onEntered و onExited

                onEntered: {
                    backend.changeColor(1,"#2d2d2d")

                }
                onExited: {
                    backend.changeColor(1,"#999999")

                }

                onPressed: {
                    backend.changeColor(1,"#314928")

                }
                onReleased:{
                    homePage.StackView.view.push("terms.qml")
                }
            }

    }




    Rectangle{
        id:myBox3
        width: parent.width *0.30
        height: parent.height*0.1
        color: "black"
        radius:10
        clip: true

        Text {
            id: text3
            text: qsTr("جولة في الإقامة - Tour 3D")
            font.family: "Stencil"
            font.pointSize: 15
            anchors.centerIn: parent
        }
        gradient: Gradient {
            GradientStop {
                position: 0.69;
                color: backend.color[2];
            }
            GradientStop {
                position: 1.00;
                color: "#ffffff";
            }
        }
        x:parent.width*0.70
        y:parent.height*0.5
        MouseArea {
                anchors.fill: parent
                hoverEnabled: true // هادي ضروري باش يخدم onEntered و onExited

                onEntered: {
                    backend.changeColor(2,"#2d2d2d")

                }
                onExited: {
                    backend.changeColor(2,"#999999")

                }

                onPressed: {
                    backend.changeColor(2,"#314928")

                }
                onReleased:{
                    homePage.StackView.view.push("Go_to_3d.qml")
                }
            }

    }
}
