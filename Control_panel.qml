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

            Control_button_up{
                id: myButton

                Text{
                    anchors.centerIn: parent
                    anchors.margins: 5
                    text: "Открытие\nдверей\nсенсором"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 10
                }

            }

            Control_button_up{

                Text{
                    id: text_1
                    anchors.centerIn: parent
                    text: "ВЫКЛ"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 18
                    anchors.margins: 5
                }

                onClicked: {
                    if (text_1.text === "ВЫКЛ") {
                        text_1.text = "ВКЛ";
                    } else {
                        text_1.text = "ВЫКЛ";
                    }
                    console.log("Button clicked, text is now: " + text_1.text);
                }
            }

            Control_button_up{

                Text{
                    id: text_2
                    anchors.centerIn: parent
                    text: "ВЫКЛ"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 18
                }

                onClicked: {
                    if (text_2.text === "ВЫКЛ") {
                        text_2.text = "ВКЛ";
                    } else {
                        text_2.text = "ВЫКЛ";
                    }
                    console.log("Button clicked, text is now: " + text_2.text);
                }

            }

            Control_button_up{

                Text{
                    id: text_3
                    anchors.centerIn: parent
                    text: "ВЫКЛ"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 18
                }

                onClicked: {
                    if (text_3.text === "ВЫКЛ") {
                        text_3.text = "ВКЛ";
                    } else {
                        text_3.text = "ВЫКЛ";
                    }
                    console.log("Button clicked, text is now: " + text_3.text);
                }

            }

            Control_button_up{

                Text{
                    id: text_4
                    anchors.centerIn: parent
                    text: "ВЫКЛ"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 18
                }


                onClicked: {
                    if (text_4.text === "ВЫКЛ") {
                        text_4.text = "ВКЛ";
                    } else {
                        text_4.text = "ВЫКЛ";
                    }
                    console.log("Button clicked, text is now: " + text_4.text);
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

            Control_button_down{

                Text{
                    anchors.centerIn: parent
                    text: "1\nдверь"
                    horizontalAlignment: Text.AlignHCenter
                    font.family: jetBrains.name
                    color: "white"
                    font.pixelSize: 18
                    lineHeight: 0.7
                    anchors.margins: 5
                }

                width: parent.width * 1/5

            }

            Control_button_down{

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



            }

            Control_button_down{

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

            }

            Control_button_down{

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

            }
        }
    }
}
