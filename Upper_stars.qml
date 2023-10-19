import QtQuick 2.12

Row {
    id: row_stars
    spacing: 5

    Repeater {
    id: repeater_stars
    model: 13

    delegate:
        Star {
            width: (row_stars.width - (repeater_stars.count - 1) * spacing) / repeater_stars.count
            height: row_stars.height - 10
            anchors{
                verticalCenter: parent.verticalCenter
            }
        }
    }
}

