import QtQuick 2.15
import QtQuick.Controls 2.15

Component {
    id: customButtonStyle
    Button {
        background: Rectangle {
            radius: 10
            color: control.pressed ? "lightgray" : "lightblue"
            border.color: "blue"
            border.width: 2
        }

        Text {
            text: control.text
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}
