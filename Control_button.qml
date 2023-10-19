import QtQuick 2.12
import QtQuick.Controls 2.12

Button {

    id: button

    Rectangle {
        color: "grey"
        border.color: "black"
        radius: 5

        Text {
            color: "white"
            anchors.centerIn: parent
        }
    }
}
