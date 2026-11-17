import QtQuick

import QtQuick.Controls
Page{
    id: rules10
    background: Rectangle { color: "#1e1e1e" }

    title: qsTr("ٌRules")

    Text {
        id: title

        color: "#a37afb"
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 5
        text: qsTr("terms")
        font.family: "Arial Rounded MT"
        font.pointSize: 35

    }


    Rectangle {
        //width: myText.width + 20
        //height: myText.height + 10
        color: "#0f2d2a" // هذا هو لون الخلفية
        radius: 5
        width: parent.width * 0.9
        height: parent.height * 0.8
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 20
        clip: true // ضروري

        Flickable {
            id: flick
            anchors.fill: parent
            anchors.margins: 10
            contentWidth: width // هادي كتمنع السكرول الأفقي
            contentHeight: myText.implicitHeight
            ScrollBar.vertical: ScrollBar {}

            Text {
                id: myText
                width: flick.width*0.90 // عرض النص هو عرض المنطقة
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""
                color: "#ffffff"
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }
    }

    Button {
            id:btn0
            width: parent.width *0.1
            height: parent.height*0.1
            x:parent.width*0.01
            //y:parent.height*0.25
            text: "back"


            onClicked: rules10.StackView.view.pop()
            background: Rectangle {
                    color: "red" // هذا هو لون الزر
                    radius: 10
                    border.color: "red"
                }

                contentItem: Text {
                    text: parent.text
                    color: "black" // هذا لون الكتابة
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
        }

}
