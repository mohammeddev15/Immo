import QtQuick
import QtQuick.Controls

Window {
    width: 1200
    height: 800
    visible: true
    StackView {
            id: myStack
            anchors.fill: parent
            initialItem: Homepage{}


        }


}
