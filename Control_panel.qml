import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle {
    id: control_panel
    color: "transparent"

    FontLoader { id: jetBrains; source: "qrc:/fonts/JetBrains Mono/JetBrainsMono.ttf"}

    Rectangle{
        id: part_first
        color: "transparent"
        width: parent.width
        height: parent.height * 0.4/1

        anchors{
            left: parent.left
            right: parent.right
            top: parent.top
        }

        RowLayout{
            id: buttonRow_f
            anchors.fill: parent

            Control_button{

                Text{
                    anchors.centerIn: parent
                    text: "Открытие\nдверей\nсенсором"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 10
                }

                width: parent.width * 1/5

                Image{

                    source: "qrc:/source/Indicator.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors{
                        bottom: parent.bottom
                        horizontalCenter: parent.horizontalCenter
                        margins: 1
                    }

                    width: parent.width * 2/4
                    height: parent.height * 1/5
                }
            }

            Control_button{

                Text{
                    anchors.centerIn: parent
                    text: "ВЫКЛ"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 18
                }

                width: parent.width * 1/5

                Image{

                    source: "qrc:/source/Indicator.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors{
                        bottom: parent.bottom
                        horizontalCenter: parent.horizontalCenter
                        margins: 1
                    }

                    width: parent.width * 2/4
                    height: parent.height * 1/5
                }
            }

            Control_button{

                Text{
                    anchors.centerIn: parent
                    text: "ВЫКЛ"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 18
                }

                width: parent.width * 1/5

                Image{

                    source: "qrc:/source/Indicator.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors{
                        bottom: parent.bottom
                        horizontalCenter: parent.horizontalCenter
                        margins: 1
                    }

                    width: parent.width * 2/4
                    height: parent.height * 1/5
                }
            }

            Control_button{

                Text{
                    anchors.centerIn: parent
                    text: "ВЫКЛ"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 18
                }

                width: parent.width * 1/5

                Image{

                    source: "qrc:/source/Indicator.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors{
                        bottom: parent.bottom
                        horizontalCenter: parent.horizontalCenter
                        margins: 1
                    }

                    width: parent.width * 2/4
                    height: parent.height * 1/5
                }
            }

            Control_button{

                Text{
                    anchors.centerIn: parent
                    text: "ВЫКЛ"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 18
                }


                font.pixelSize: 12
                width: parent.width * 1/5

                Image{

                    source: "qrc:/source/Indicator.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors{
                        bottom: parent.bottom
                        horizontalCenter: parent.horizontalCenter
                        margins: 1
                    }

                    width: parent.width * 2/4
                    height: parent.height * 1/5
                }
            }
        }
    }

    Rectangle{
        id: part_second
        color: "transparent"
        width: parent.width
        height: parent.height * 0.6/1

        anchors{
            left: parent.left
            right: parent.right
            top: part_first.bottom
            bottom: parent.bottom

            topMargin: 5
        }

        RowLayout{
            id: buttonRow_s
            anchors.fill: parent

            Control_button{

                Text{
                    anchors.centerIn: parent
                    text: "1\nдверь"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 18
                    lineHeight: 0.7
                }

                width: parent.width * 1/5

                Image{

                    source: "qrc:/source/Indicator.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors{
                        bottom: parent.bottom
                        horizontalCenter: parent.horizontalCenter
                        margins: 1
                    }

                    width: parent.width * 2/4
                    height: parent.height * 1/5
                }
            }

            Control_button{

                Text{
                    anchors.centerIn: parent
                    text: "2\nдверь"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 18
                    lineHeight: 0.7
                }

                width: parent.width * 1/5

                Image{

                    source: "qrc:/source/Indicator.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors{
                        bottom: parent.bottom
                        horizontalCenter: parent.horizontalCenter
                        margins: 1
                    }

                    width: parent.width * 2/4
                    height: parent.height * 1/5
                }
            }

            Control_button{

                Text{
                    anchors.centerIn: parent
                    text: "3\nдверь"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 18
                    lineHeight: 0.7
                }

                width: parent.width * 1/5

                Image{

                    source: "qrc:/source/Indicator.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors{
                        bottom: parent.bottom
                        horizontalCenter: parent.horizontalCenter
                        margins: 1
                    }

                    width: parent.width * 2/4
                    height: parent.height * 1/5
                }
            }

            Control_button{

                Text{
                    anchors{

                        centerIn: parent
                    }

                    text: "4\nдверь"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 18
                    lineHeight: 0.7

                }

                width: parent.width * 1/5

                Image{

                    source: "qrc:/source/Indicator.svg"
                    fillMode: Image.PreserveAspectFit
                    anchors{
                        bottom: parent.bottom
                        horizontalCenter: parent.horizontalCenter
                        margins: 1
                    }

                    width: parent.width * 2/4
                    height: parent.height * 1/5
                }
            }
        }
    }
}
