import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    width: 500
    height: 800
    visible: true
    title: qsTr("Hello World")
    color: "black"

    Cameras_box{
        id: cameras_box

        anchors{

            left: parent.left
            right: parent.right
            top: parent.top
        }

        height: parent.height * 0.95/3
    }

    Upper_stars{
        id: upper_stars

        anchors{
            left: parent.left
            right: parent.right
            top: cameras_box.bottom
        }

        height: parent.height * 0.15/3
    }

    Map_box{
        id: map_box

        anchors{
            left: parent.left
            right: parent.right
            top: upper_stars.bottom
        }

        height: parent.height * 1.4/3
    }

    Control_panel{
        id: control_panel

        anchors{

            left: parent.left
            right: parent.right
            top: map_box.bottom
            bottom: parent.bottom
        }

        height: parent.height * 0.5/3
    }
}
