import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    width: 600
    height: 1200
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

        height: parent.height * 1/3
    }

    Upper_stars{
        id: upper_stars
        anchors{

            left: parent.left
            right: parent.right
            top: cameras_box.bottom
        }

        height: parent.height * 0.3/3
    }

    Map_box{
        id: map_box

        anchors{
            left: parent.left
            right: parent.right
            top: upper_stars.bottom
        }

        height: parent.height * 1.1/3
    }

    Lower_stars{
        id: lower_stars

        anchors{

            left: parent.left
            right: parent.right
            top: map_box.bottom
        }

        height: parent.height * 0.1/3
    }

    Control_panel{
        id: control_panel
        anchors{

            left: parent.left
            right: parent.right
            top: lower_stars.bottom
            bottom: parent.bottom
        }

        height: parent.height * 0.4/3
    }

}
