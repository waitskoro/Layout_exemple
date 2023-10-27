import QtQuick 2.12
import QtQuick.Controls 2.12

Rectangle{
    id: star
    color: "#414247"

    Image{
        id: image_star
        source: "qrc:/source/star.png"
        anchors.centerIn: parent
        anchors.fill: parent
        height: star.height / 2
        width: star.width / 2
        fillMode: Image.PreserveAspectFit
    }
}
