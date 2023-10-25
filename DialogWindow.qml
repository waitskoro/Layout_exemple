import QtQuick 2.12
import QtQuick.Dialogs 1.3

Dialog {
    id: dialog
    standardButtons: StandardButton.Cancel | StandardButton.Ok
    modality: Qt.ApplicationModal
    contentItem: Rectangle {
        width: screen.width
        height: screen.height
        color: "lightblue"
        // Добавьте свое содержимое диалогового окна
    }
}
