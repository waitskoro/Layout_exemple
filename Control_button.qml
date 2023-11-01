import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4

Button {
    id: controlButton
    width: parent.width
    height: parent.height

    Layout.fillWidth: true
    Layout.fillHeight: true

    background: Rectangle{
        color: "#20292F"
        border.width: 1
        border.color: "white"
        radius: 6
    }
}
