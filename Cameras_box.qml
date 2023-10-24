import QtQuick 2.12
import QtQuick.Controls 2.12

Rectangle {
    color: "black"

    property int currentIndex: -1

    SwipeView{
        id: swipeView
        width: parent.width
        height: parent.height

        Item{

            Grid{
                columns: 2
                rows: 2
                anchors.fill: parent

                Repeater {
                    model: 4
                    delegate: Cameras {

                        border.width: 2

                        Text {
                            text: "Камера " + (index + 1)
                            anchors.centerIn: parent
                        }


                    }
                }
            }
        }

        Item{

            Grid{
                columns: 2
                rows: 2
                anchors.fill: parent

                Repeater {
                    model: 4
                    delegate: Cameras {
                    border.width: 2

                    Text {
                        text: "Камера " + (index + 1)
                        anchors.centerIn: parent
                        }
                    }
                }
            }
        }
    }

    Button {
        text: "<"
        height: parent.height * 1/3
        width: parent.width * 1/15

        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
        }

        onClicked: {
            if (swipeView.currentIndex > 0) {
                swipeView.currentIndex--
            }
        }
    }

    Button {
        text: ">"
        height: parent.height * 1/3
        width: parent.width * 1/15

        anchors{
            right: parent.right
            verticalCenter: parent.verticalCenter
        }

        onClicked: {
        if (swipeView.currentIndex < swipeView.count - 1) {
            swipeView.currentIndex++
            }
        }
    }
}





