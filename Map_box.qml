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

                FontLoader { id: ibmPlex; source: "qrc:/fonts/IBM Plex Sans/IBMPlexSans-Regular.ttf" }

                Text{
                    text: "     Garibov | " + Qt.formatDateTime(new Date(), "dd MMMM hh:ss")
                    color: "white"
                    font.pixelSize: 10
                    font.family: ibmPlex.name
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            Rectangle{
                color: "transparent"
                width: parent.width * 3/14
                height: parent.height

                RowLayout {
                    anchors.fill: parent

                    Item{
                        Layout.preferredWidth: 5
                    }

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

                    Item{
                        Layout.preferredWidth: 5
                    }

                }
            }

            Rectangle{
                color: "transparent"
                width: parent.width * 3/14
                height: parent.height

                FontLoader { id: jetBrains; source: "qrc:/fonts/JetBrains Mono/JetBrainsMono.ttf" }

                Text{
                    text: "007325"
                    color: "white"
                    font.family: jetBrains.name
                    anchors{
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                }

            }

            Rectangle{
                color: "transparent"
                width: parent.width * 3/14
                height: parent.height

                RowLayout {
                    anchors.fill: parent

                    Item{
                        Layout.preferredWidth: 5
                    }

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

                    Item{
                        Layout.preferredWidth: 5
                    }

                }
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

        Plugin {
            id: mapPlugin
            name: "osm"
            }

        Map {
            id: mapView
            anchors.fill: parent
            plugin: mapPlugin
            center: QtPositioning.coordinate(59.9386, 30.3141)
            zoomLevel: 15
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
                Layout.preferredWidth: 10
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
                Layout.preferredWidth: 10
            }
        }
    }
}
