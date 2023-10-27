import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Button {
    id: controlButton
    width: parent.width
    height: parent.height

    Layout.fillWidth: true
    Layout.fillHeight: true

    Text {
        anchors.centerIn: parent
        text: controlButton.text
        font.pixelSize: 12
        color: "white"
        horizontalAlignment: Text.AlignHCenter
    }
}

