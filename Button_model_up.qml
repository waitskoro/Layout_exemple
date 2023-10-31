import QtQuick 2.0

ListModel{

    ListElement{

        width: parent.width * 1/5

        background: Rectangle{
            color: "#20292F"
            border.width: 1
            border.color: "white"
            radius: 6
        }

        Text {
            anchors.centerIn: parent
            text: "Открытие\nдверей\nсенсором"
            color: "white"
            horizontalAlignment: Text.AlignHCenter
        }

        Image{

            source: "qrc:/source/Indicator.svg"
            anchors{
                bottom: parent.bottom
                horizontalCenter: parent.horizontalCenter
                margins: 1
            }

            width: parent.width * 2/4
            height: parent.height * 1/5
        }
    }

    ListElement{

        width: parent.width * 1/5

        background: Rectangle{
            color: "#20292F"
            border.width: 1
            border.color: "white"
            radius: 6
        }

        Text {
            anchors.centerIn: parent
            text: "ВЫКЛ"
            color: "white"
            horizontalAlignment: Text.AlignHCenter
        }

        Image{

            source: "qrc:/source/Indicator.svg"
            anchors{
                bottom: parent.bottom
                horizontalCenter: parent.horizontalCenter
                margins: 1
            }

            width: parent.width * 2/4
            height: parent.height * 1/5
        }
    }

    ListElement{

        width: parent.width * 1/5

        background: Rectangle{
            color: "#20292F"
            border.width: 1
            border.color: "white"
            radius: 6
        }

        Text {
            anchors.centerIn: parent
            text: "ВЫКЛ"
            color: "white"
            horizontalAlignment: Text.AlignHCenter
        }

        Image{

            source: "qrc:/source/Indicator.svg"
            anchors{
                bottom: parent.bottom
                horizontalCenter: parent.horizontalCenter
                margins: 1
            }

            width: parent.width * 2/4
            height: parent.height * 1/5
        }
    }

    ListElement{

        width: parent.width * 1/5

        background: Rectangle{
            color: "#20292F"
            border.width: 1
            border.color: "white"
            radius: 6
        }

        Text {
            anchors.centerIn: parent
            text: "ВЫКЛ"
            color: "white"
            horizontalAlignment: Text.AlignHCenter
        }

        Image{

            source: "qrc:/source/Indicator.svg"
            anchors{
                bottom: parent.bottom
                horizontalCenter: parent.horizontalCenter
                margins: 1
            }

            width: parent.width * 2/4
            height: parent.height * 1/5
        }
    }

    ListElement{

        width: parent.width * 1/5

        background: Rectangle{
            color: "#20292F"
            border.width: 1
            border.color: "white"
            radius: 6
        }

        Text {
            anchors.centerIn: parent
            text: "ВЫКЛ"
            color: "white"
            horizontalAlignment: Text.AlignHCenter
        }

        Image{

            source: "qrc:/source/Indicator.svg"
            anchors{
                bottom: parent.bottom
                horizontalCenter: parent.horizontalCenter
                margins: 1
            }

            width: parent.width * 2/4
            height: parent.height * 1/5
        }
    }
}
