import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12


Rectangle {
    id: root
    color: "black"

    property Cameras cameraPanene
    property var gridRepeater: gridRepeater

    SwipeView{
        id: swipeView
        width: parent.width
        height: parent.height


        Repeater{
            id: myRepeater
            model: 2

            Item{

                GridLayout {
                    id: camerasGrid
                    columns: 2
                    columnSpacing : 1
                    rowSpacing : 1
                    rows: 2
                    anchors.fill: parent

                    Repeater {
                        id: gridRepeater
                        model: 4

                        delegate: Cameras {
                            id: cameraPane
                            border.width: 1

                            Text {
                                text: "Камера " + (index + 1)
                                anchors.centerIn: parent
                            }

                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            // Обработчик для кнопки "назад" или другого события, чтобы вернуться к исходному состоянию
                            function resetToInitialState() {
                                for (var i = 0; i < gridRepeater.count; i++) {
                                    var camera = gridRepeater.itemAt(i)
                                    camera.visible = true
                                    camera.Layout.preferredWidth = 0
                                    camera.Layout.preferredHeight = 0
                                }
                                left_button.visible = true
                                right_button.visible = true
                                close_button.visible = false
                            }

                            // Обработчик для клика на камеру
                            MouseArea {
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

                                        // Скрываем тексты других камер
                                        for (var i = 0; i < gridRepeater.count; i++) {
                                            var otherCamera = gridRepeater.itemAt(i)
                                            if (otherCamera !== cameraPane) {
                                                otherCamera.visible = false
                                            }
                                        }
                                    } else {
                                        cameraPane.Layout.preferredWidth = 0
                                        cameraPane.Layout.preferredHeight = 0
                                        resetToInitialState()
                                    }
                                }
                            }

                            Button {
                                    id: close_button
                                    visible: false

                                    height: 40
                                    width: 40

                                    anchors {
                                        right: parent.right
                                    }

                                    background: Image {
                                        source: "qrc:/source/close.svg"
                                    }

                                    onClicked: {
                                        for (var i = 0; i < gridRepeater.count; i++) {
                                            var camera = gridRepeater.itemAt(i)
                                            camera.visible = true
                                            camera.Layout.preferredWidth = 0
                                            camera.Layout.preferredHeight = 0
                                        }
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

    Rectangle {
            id: notification
            width: parent.width
            height: 0
            color: "lightblue"
            visible: false
            anchors.bottom: parent.bottom

            Text {
                text: "Это уведомление при нажатии на кнопку"
                anchors.centerIn: parent
            }

            Behavior on height {
                NumberAnimation {
                    duration: 500
                }
            }

            Button {
                text: "Показать уведомление"
                onClicked: {
                    notification.visible = true
                    notification.height = 50

                    // Скрыть уведомление через 3 секунды (3000 миллисекунд)
                    Qt.createQmlObject('import QtQuick 2.15; Timer { interval: 3000; running: true; onTriggered: { notification.visible = false } }', notification)
                }
            }
        }
}





