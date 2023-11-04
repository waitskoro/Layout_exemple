import QtQuick 2.0

Rectangle {

    width: 180
    height: 200

    ListView {
        anchors.fill: parent
        model: ListModel {
            ListElement { source: "qrc:/source/message.svg" }
            ListElement { source: "qrc:/source/message.svg" }
            ListElement { source: "qrc:/source/message.svg" }
        }

        delegate: Item {
            width: parent.width
            height: 20

            Image {
                source: model.source
                anchors.fill: parent
            }
        }
    }

}
