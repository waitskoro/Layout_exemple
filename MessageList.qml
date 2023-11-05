import QtQuick 2.0
import QtQuick.Layouts 1.12

Rectangle {
    id: recList
    color: "transparent"
    height: parent.height
    width: parent.width

    anchors {
        bottom: parent.bottom
    }

    Column {
        width: recList.width // Установите ширину
        height: recList.height // Установите высоту

        spacing: 0

        Repeater {
            model: 4
            Rectangle{
                color: "transparent"
                height: recList.height * 1/4
                width: recList.width

                Image {
                   anchors.fill: parent
                   source: "qrc:/source/message.svg" // Источник изображения
                   fillMode: Image.PreserveAspectFit


               }
            }
        }
    }
}
