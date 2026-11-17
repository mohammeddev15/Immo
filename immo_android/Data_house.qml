import QtQuick
import QtQuick.Controls

Page {
    id:data_house
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
                    data_house.StackView.view.pop()
                    backend.changeColor(3,"red")
                }
            }

    }




    Text {
        text:"title :   "+backend.title+"   : العنوان "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.1
        color: "#ffffff"
    }
    Text {
        text:"type :   "+backend.type+"   : النوع "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.16
        color: "#ffffff"
    }
    Text {
        text:"status :   "+backend.status+"   : الحالة "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.22
        color: "#ffffff"
    }
    Text {
        text:"address :   "+backend.address+"   : العنوان "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.28
        color: "#ffffff"
    }
    Text {
        text:"latitude : "+backend.latitude+"   : خط العرض "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.34
        color: "#ffffff"
    }
    Text {
        text:"longitude :   "+backend.longitude+"   : خط الطول"
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.4
        color: "#ffffff"
    }
    Text {
        text:"surface :   "+backend.surface+"   : المساحة "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.46
        color: "#ffffff"
    }
    Text {
        text:"terrainSurface :   "+backend.terrainSurface+"   : مساحة الأرض "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.52
        color: "#ffffff"
    }
    Text {
        text:"rooms :   "+backend.rooms+"   : الغرف "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.58
        color: "#ffffff"
    }
    Text {
        text:"bedrooms :   "+backend.bedrooms+"   : غرف النوم "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.64
        color: "#ffffff"
    }
    Text {
        text:"salons :   "+backend.salons+"   : الصالونات "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.7
        color: "#ffffff"
    }
    Text {
        text:"kitchens :   "+backend.kitchens+"   : المطابخ "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.76
        color: "#ffffff"
    }
    Text {
        text:"bathrooms :   "+backend.bathrooms+"   : الحمامات "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.82
        color: "#ffffff"
    }
    Text {
        text:"etage :   "+backend.etage+"   : الطابق "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.88
        color: "#ffffff"
    }
    Text {
        text:"yearBuilt :   "+backend.yearBuilt+"   : سنة البناء "
        font.pointSize: 15
        x:parent.width*0.05
        y:parent.height*0.94
        color: "#ffffff"
    }

    //SECOND LINE
    Text {
        text:"etat :   "+backend.etat+"   : حالة البناء "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.1
        color: "#ffffff"
    }
    Text {
        text:"price :   "+backend.price+"   : الثمن "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.16
        color: "#ffffff"
    }
    Text {
        text:"pricePerM2 :   "+backend.pricePerM2+"   : ثمن المتر "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.22
        color: "#ffffff"
    }
    Text {
        text:"titreFoncier :   "+backend.titreFoncier+"   : الرسم العقاري "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.28
        color: "#ffffff"
    }
    Text {
        text:"fraisNotaire :   "+backend.fraisNotaire+"   : مصاريف العدول "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.34
        color: "#ffffff"
    }
    Text {
        text:"fraisSyndic :   "+backend.fraisSyndic+"   : مصاريف السانديك "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.4
        color: "#ffffff"
    }
    Text {
        text:"creditPossible :   "+backend.creditPossible+"   : القرض "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.46
        color: "#ffffff"
    }
    Text {
        text:"ownerName :   "+backend.ownerName+"   : اسم المالك "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.52
        color: "#ffffff"
    }
    Text {
        text:"ownerPhone :   "+backend.ownerPhone+"   : هاتف المالك "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.58
        color: "#ffffff"
    }
    Text {
        text:"garage :   "+backend.garage+"   : المرآب "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.64
        color: "#ffffff"
    }
    Text {
        text:"jardin :   "+backend.jardin+"   : الحديقة "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.7
        color: "#ffffff"
    }
    Text {
        text:"balcon :   "+backend.balcon+"   : الشرفة "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.76
        color: "#ffffff"
    }
    Text {
        text:"piscine :   "+backend.piscine+"   : المسبح "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.82
        color: "#ffffff"
    }
    Text {
        text:"security :   "+backend.security+"   : الحراسة "
        font.pointSize: 15
        x:parent.width*0.55
        y:parent.height*0.88
        color: "#ffffff"
    }
    Text {
        text:backend.description
        font.pointSize: 15
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: parent.height*0.05
        color: "#ffffff"
    }
}
