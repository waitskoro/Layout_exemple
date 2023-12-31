import QtQml 2.12
import QtQuick 2.12
import QtGraphicalEffects 1.12
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
        radius: 12

        anchors.bottom: low_stars.bottom

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

            Desaturate {
                id: desature
                anchors.fill: parent
                source: parent
                desaturation: 1.0
            }

            ColorOverlay {
                anchors.fill: desature
                source: desature
                color: "black"
                opacity: 0.4
           }

            MessageList{
                height: parent.height - 100
                width: parent.width  * 0.8/2

                anchors{
                    left: parent.left
                    bottomMargin: 40
                }

            }
        }

        Rectangle{
            id: stone
            height: 16
            width: 1
            color: "transparent"

            anchors{

                margins: 12
                right: map.right
                topMargin: 12
            }
        }

        Rectangle{
            id: rec_image
            color: "transparent"
            height: parent.height * 1/8
            width: parent.width * 1/15

            anchors{

                rightMargin: 12
                right: map.right
                top: stone.bottom
            }

            Image{
                source: "qrc:/source/fork.svg"
                anchors.fill: rec_image
                fillMode: Image.PreserveAspectFit
            }
        }


    }



    Rectangle{
        id: low_stars
        width: parent.width
        height: parent.height * 0.1/1
        color: "transparent"

        Image{
            source: "qrc:/source/frame.png"
            anchors.fill: parent
        }

        anchors{
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
