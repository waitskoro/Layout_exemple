import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle {
    id: root
    color: "black"

    property Cameras cameraPanene

    SwipeView{
        id: swipeView
        width: parent.width
        height: parent.height

        Repeater{
            model: 2

            Item{

                GridLayout {
                    id: camerasGrid
                    columns: 2
                    rows: 2
                    anchors.fill: parent

                    Repeater {
                        id: gridRepeater
                        model: 4

                        delegate: Cameras {
                            id: cameraPane

                            Text {
                                text: "Камера " + (index + 1)
                                anchors.centerIn: parent
                            }

                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            MouseArea{
                                id: area
                                anchors.fill: parent

                                onClicked: {
                                    if (cameraPane.Layout.preferredWidth === 0) {
                                        cameraPane.Layout.preferredWidth = parent.width
                                        cameraPane.Layout.preferredHeight = parent.height

                                        left_button.visible = false
                                        right_button.visible = false
                                        close_button.visible = true

                                        cameraPanene = cameraPane

                                    }
                                    else {

                                        cameraPane.Layout.preferredWidth = 0
                                        cameraPane.Layout.preferredHeight = 0

                                        left_button.visible = true
                                        right_button.visible = true
                                        close_button.visible = false
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    Button{
        id: close_button
        visible: false

        height: parent.height * 1/10
        width: parent.width * 1/15

        anchors{
            right: parent.right
            topMargin: 10
        }

        background: Image{
            source: "qrc:/source/close.svg"
        }

        onClicked: {
            cameraPanene.Layout.preferredWidth = 0
            cameraPanene.Layout.preferredHeight = 0
            left_button.visible = true
            right_button.visible = true
            close_button.visible = false
        }
    }

    Button {
        id: left_button
        text: "<"
        height: parent.height * 1/3
        width: parent.width * 1/18

        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
        }

        background: Image{
            source: "qrc:/source/on_right.svg"
        }

        onClicked: {
            if (swipeView.currentIndex > 0) {
                swipeView.currentIndex--
            }
        }
    }

    Button {
        id: right_button
        text: ">"
        height: parent.height * 1/3
        width: parent.width * 1/18

        anchors{
            right: parent.right
            verticalCenter: parent.verticalCenter
        }

        background: Image{
            source: "qrc:/source/on_left.svg"
        }

        onClicked: {
            if (swipeView.currentIndex < swipeView.count - 1)
                swipeView.currentIndex++
        }
    }
}





