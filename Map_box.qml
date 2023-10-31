import QtQuick 2.12
import QtLocation 5.12
import QtPositioning 5.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle{
    id: root
    radius: 12
    color: "black"

    Rectangle{
        id: upper_panel
        width: parent.width
        height: parent.height * 0.1/1
        color: "transparent"

        anchors{
            top: root.top
        }

        Row{
            anchors.fill: parent

            Rectangle{
                color: "transparent"
                width: parent.width * 5/14
                height: parent.height

                Text{
                    text: "     Garibov | " + Qt.formatDateTime(new Date(), "dd MMMM hh:ss")
                    color: "white"
                    font.pixelSize: 10
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            Rectangle{
                color: "transparent"
                width: parent.width * 3/14
                height: parent.height

                RowLayout {
                    anchors.fill: parent

                    Repeater {
                        model: 4
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

            Rectangle{
                color: "pink"
                width: parent.width * 3/14
                height: parent.height

            }

            Rectangle{
                color: "blue"
                width: parent.width * 3/14
                height: parent.height
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

            Item{
                Layout.preferredWidth: 15
            }

            Repeater {
                model: 21
                Rectangle {
                    color: "transparent"
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    Star{
                        anchors.fill: parent
                    }
                }
            }

            Item{
                Layout.preferredWidth: 15
            }
        }
    }
}
