import QtQuick 2.12
import QtLocation 5.12
import QtPositioning 5.12
import QtQuick.Controls 2.12

Rectangle{
    width: parent.width
    height: parent.height * 0.8/1
    color: "black"

    Plugin{
        id: mapPlugin
        name: "osm"
    }

    Map{
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(56.29, 84.57) // Tomsk
        zoomLevel: 14
    }
}
