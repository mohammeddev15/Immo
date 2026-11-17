import QtQuick
import QtQuick.Controls

Page {
    id:edit_data_house
    visible: true

    background: Rectangle { color: "#1e1e1e" }
    Rectangle{
        id:bare
        width: parent.width *0.01
        height: parent.height*0.9
        color: "#A9D6E5"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

    }

    Text {
        id: name_house
        text: backend.house
        font.family: "Castellar"
        font.pointSize: 20
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        color: "#ffffff"
    }


    Rectangle{
        id:myBox1
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
                    edit_data_house.StackView.view.pop()
                    backend.changeColor(3,"red")
                }
            }

    }




    TextField {
        id:data1
        placeholderText:"title - العنوان : "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.1
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }
    }
    TextField {
        id:data2
        placeholderText:"type - النوع : "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.16
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data3
        placeholderText:"status - الحالة : "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.22
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data4
        placeholderText:"address - العنوان : "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.28
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data5
        placeholderText:"latitude: : خط العرض "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.34
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data6
        placeholderText:"longitude-خط الطول : "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.4
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data7
        placeholderText:"surface - المساحة : "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.46
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data8
        placeholderText:"terrainSurface - مساحة الأرض : "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.52
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data9
        placeholderText:"rooms - الغرف : "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.58
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data10
        placeholderText:"bedrooms - غرف النوم : "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.64
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data11
        placeholderText:"salons - الصالونات : "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.7
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data12
        placeholderText:"kitchens - المطابخ : "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.76
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data13
        placeholderText:"bathrooms - الحمامات : "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.82
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data14
        placeholderText:"etage - الطابق : "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.88
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data15
        placeholderText:"yearBuilt - سنة البناء : "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.94
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }

    //SECOND LINE
    TextField {
        id:data16
        placeholderText:"etat - حالة البناء : "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.1
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data17
        placeholderText:"price - الثمن : "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.16
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data18
        placeholderText:"pricePerM2 - ثمن المتر : "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.22
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data19
        placeholderText:"titreFoncier - الرسم العقاري : "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.28
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data20
        placeholderText:"fraisNotaire - مصاريف العدول : "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.34
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data21
        placeholderText:"fraisSyndic - مصاريف السانديك : "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.4
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data22
        placeholderText:"creditPossible - القرض : "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.46
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data23
        placeholderText:"ownerName - اسم المالك : "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.52
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data24
        placeholderText:"ownerPhone - هاتف المالك : "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.58
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data25
        placeholderText:"garage - المرآب : "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.64
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data26
        placeholderText:"jardin - الحديقة : "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.7
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data27
        placeholderText:"balcon - الشرفة : "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.76
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data28
        placeholderText:"piscine - المسبح : "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.82
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data29
        placeholderText:"security - الحراسة : "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.88
        color: "#050505"
        width: parent.width*0.3
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }
    TextField {
        id:data30
        placeholderText:"description - الوصف :"
        font.pointSize: 15
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: parent.height*0.05
        color: "#050505"
        width: parent.width*0.5
        background: Rectangle {
                radius: 20
                color: "white"
                border.color: "#999999"
            }

    }

    Rectangle{
        id:myBox2
        width: parent.width *0.30
        height: parent.height*0.05
        color: "black"
        radius:10
        clip: true

        Text {
            id: text2
            text: qsTr("send - ارسال")
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
        x:parent.width*0.55
        y:parent.height*0.94
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
                    edit_data_house.StackView.view.pop()
                    backend.post_data(data1.text,data2.text,data3.text,data4.text,data5.text,data6.text,data7.text,data8.text,data9.text,data10.text,data11.text,data12.text,data13.text,data14.text,data15.text,data16.text,data17.text,data18.text,data19.text,data20.text,data21.text,data22.text,data23.text,data24.text,data25.text,data26.text,data27.text,data28.text,data29.text,data30.text)
                }
            }

    }
}
