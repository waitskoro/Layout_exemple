import QtQuick 2.12
import QtLocation 5.12
import QtPositioning 5.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle{
    id: root

    Rectangle{
        id: upper_panel
        width: parent.width
        height: parent.height * 0.1/1

        anchors{
            top: root.top
        }

        color: "black"
    }

    Rectangle{
        id: map
        width: parent.width
        height: parent.height * 0.8/1
        color: "black"

        anchors{
            top: upper_panel.bottom
        }

        Plugin{
            id: mapPlugin
            name: "osm"
        }

        Map{
            anchors.fill: parent
            plugin: mapPlugin
            center: QtPositioning.coordinate(56.29, 84.57) // Tomsk
            zoomLevel: 14
        }
    }

    Rectangle{
        id: low_stars
        width: parent.width
        height: parent.height * 0.1/1
        color: "black"

        anchors{
            top: map.bottom
            bottom: root.bottom
        }

        RowLayout {
            anchors.fill: parent

            Item {
                Layout.fillWidth: true
                Layout.preferredHeight: 5
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
                Layout.fillWidth: true
                Layout.preferredHeight: 5
            }
        }
    }
}
