import QtQuick 2.12
import QtQuick.Controls 2.12

Rectangle{
    id: star
    radius: 4
    color: "transparent"

    Image{
        id: image_star
        source: "qrc:/source/star.svg"
        anchors.centerIn: parent
        anchors.fill: parent
        height: star.height / 2
        width: star.width / 2
        fillMode: Image.PreserveAspectFit
    }
}
