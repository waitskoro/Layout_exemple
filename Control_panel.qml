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

            Repeater{
                model: listUpperButtons
                delegate: Control_button_up{

                    Text{
                        id:text_1
                        anchors.centerIn: parent
                        text: model.name
                        horizontalAlignment: Text.AlignHCenter
                        font.family: jetBrains.name
                        color: "white"
                        font.pixelSize: model.fontsize
                        anchors.margins: 5

                    }

                    onClicked: {
                        if (text_1.text === "ВЫКЛ") {
                            text_1.text = "ВКЛ";
                        }
                        else if (text_1.text === "ВКЛ")
                        {
                            text_1.text = "ВЫКЛ"
                        }

                        if(text_1.txet){

                        }

                        console.log("Button clicked, text is now: " + text_1.text);
                    }
                }
            }
        }

        ListModel {
            id: listUpperButtons

            ListElement
            {
                name: "Открытие\nдверей\nсенсором"
                fontsize: 10
            }

            ListElement
            {
                name: "ВЫКЛ"
                fontsize: 18
            }

            ListElement
            {
                name: "ВЫКЛ"
                fontsize: 18
            }

            ListElement
            {
                name: "ВЫКЛ"
                fontsize: 18
            }

            ListElement
            {
                name: "ВЫКЛ"
                fontsize: 18
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

            Repeater{
                model: listDownButtons
                delegate: Control_button_down{

                    Text{
                        id:text_2
                        anchors.centerIn: parent
                        text: model.name
                        horizontalAlignment: Text.AlignHCenter
                        font.family: jetBrains.name
                        color: "white"
                        font.pixelSize: model.fontsize
                        anchors.margins: 5

                    }

                    onClicked: {
                        if (text_2.text === "ВЫКЛ") {
                            text_2.text = "ВКЛ";
                        }
                        else if (text_2.text === "ВКЛ")
                        {
                            text_2.text = "ВЫКЛ"
                        }

                        if(text_2.txet){

                        }

                        console.log("Button clicked, text is now: " + text_2.text);
                    }
                }
            }
        }

        ListModel {
            id: listDownButtons

            ListElement
            {
                name: "1\nдверь"
                fontsize: 18
            }

            ListElement
            {
                name: "2\nдверь"
                fontsize: 18
            }

            ListElement
            {
                name: "3\nдверь"
                fontsize: 18
            }

            ListElement
            {
                name: "4\nдверь"
                fontsize: 18
            }
        }
    }
}
