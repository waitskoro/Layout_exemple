import QtQuick 2.12
import QtQuick.Controls 2.12

Rectangle {
    id: root
    color: "black"

    property int row: 0
    property int column: 0

    SwipeView{
        id: swipeView
        width: parent.width
        height: parent.height

        Repeater{
            model: 2

            Item{

                Grid{
                    id: grid_container
                    columns: 2
                    rows: 2
                    anchors.fill: parent

                    Repeater {
                        model: 4
                        delegate: Cameras {
                            id: cam
                            property bool fullscreen: false

                            border.width: 2
                            Text {
                                text: "Камера " + (index + 1)
                                anchors.centerIn: parent
                            }

                            MouseArea {
                                anchors.fill: parent

                                onClicked: {
                                    onClicked: dialogLoader.source = "DialogWindow.qml"
                                }

                            }

                            Loader {
                                id: dialogLoader
                                onLoaded: {
                                    item.open();
                                }
                            }
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
            if (swipeView.currentIndex < swipeView.count - 1)
                swipeView.currentIndex++
        }
    }
}





