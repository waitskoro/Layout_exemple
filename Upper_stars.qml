import QtQuick 2.12
import QtQuick.Layouts 1.12

RowLayout {

    Item {
        Layout.preferredWidth: 2 // Отступ слева
    }


    Repeater {
        model: 21 // Количество звезд
        Rectangle {
            color: "#414247"
            Layout.fillWidth: true
            Layout.fillHeight: true

            Star{
                anchors.fill: parent
            }
        }
    }

    Item {
        Layout.preferredWidth: 2 // Отступ справа
    }
}

