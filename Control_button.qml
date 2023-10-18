import QtQuick 2.12
import QtQuick.Controls 2.12

Button {

    id: button

    Rectangle {
        color: "grey"
        border.color: "black"
        radius: 5

        Text {
            text: button.text
            color: "white"
            anchors.centerIn: parent
        }
    }

    onClicked: {

        if (button.text === "Выкл")
        {
            button.text = "Вкл"
        }
        else
        {
            button.text = "Выкл"
        }
    }
}
