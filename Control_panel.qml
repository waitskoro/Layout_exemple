import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle {
    id: control_panel
    color: "transparent"


    Rectangle{
        id: part_first
        color: "blue"
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

                text: "Открытие\nдверей\nсенсором"
            }

            Control_button{

                text: "ВЫКЛ"
            }

            Control_button{

                text: "ВЫКЛ"
            }

            Control_button{

                text: "ВЫКЛ"
            }

            Control_button{

                text: "ВЫКЛ"
            }
        }
    }

    Rectangle{
        id: part_second
        color: "green"
        width: parent.width
        height: parent.height * 0.6/1

        anchors{
            left: parent.left
            right: parent.right
            top: part_first.bottom
            bottom: parent.bottom
        }

        RowLayout{
            id: buttonRow_s
            anchors.fill: parent

            Control_button{

                text: "1\nдверь"
            }

            Control_button{

                text: "2\nдверь"
            }

            Control_button{

                text: "3\nдверь"
            }

            Control_button{

                text: "4\nдверь"
            }
        }
    }
}
