import QtQml 2.12
import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4

Button {
    id: controlButton
    width: parent.width
    height: parent.height

    Layout.fillWidth: true
    Layout.fillHeight: true

    background: Image {
        id: buttonImage
        source: "qrc:/source/neutral_button.svg" // Исходное изображение
        anchors.fill: parent
    }

    onClicked: {
        // Изменить картинку внутреннего Image элемента при нажатии
        if (buttonImage.source == "qrc:/source/neutral_button.svg")
        {
            buttonImage.source = "qrc:/source/on_button.svg"; // Новое изображение
        }
        else if (buttonImage.source == "qrc:/source/on_button.svg")
        {
            buttonImage.source = "qrc:/source/neutral_button.svg"; // Возврат к исходному изображению
        }

    }
}
