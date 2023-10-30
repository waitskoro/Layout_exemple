import QtQuick 2.12
import QtQuick.Layouts 1.12

RowLayout {

    Repeater {
        model: 14 // Количество звезд
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "transparent"

            Star{
                anchors.fill: parent
            }
        }
    }
}

