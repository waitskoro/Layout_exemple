import QtQuick 2.12
import QtLocation 5.12
import QtPositioning 5.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle{
    id: root
    radius: 24
    color: "black"

    Rectangle{
        id: upper_panel
        width: parent.width
        height: parent.height * 0.1/1
        color: "transparent"

        anchors{
            top: root.top
        }

        RowLayout{
            anchors.fill: parent

            Rectangle{
                color: "transparent"
                height: parent.height * 2/5
                width: parent.width
                anchors.verticalCenter: parent.verticalCenter

                Text{
                    text: "     Garibov | " + Qt.formatDateTime(new Date(), "dd MMMM hh:ss")
                    color: "white"
                }
            }

            Rectangle{
                height: parent.height * 1/5
                width: parent.width
                color: "transparent"

                Repeater {
                    model: 4 // Количество звезд
                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true

                        Star{
                            anchors.fill: parent
                        }
                    }
                }

            }

            Rectangle{
                color: "transparent"
                height: parent.height * 1/5
                width: parent.width

            }

            Rectangle{
                color: "transparent"
                height: parent.height * 1/5
                width: parent.width
            }
        }
    }

    Rectangle{
        id: map
        width: parent.width
        height: parent.height * 0.8/1
        color: "transparent"

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
        color: "transparent"

        anchors{
            top: map.bottom
            bottom: root.bottom
        }

        RowLayout {
            anchors.fill: parent

            Repeater {
                model: 21 // Количество звезд
                Rectangle {
                    color: "transparent"
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    Star{
                        anchors.fill: parent
                    }
                }
            }
        }
    }
}
