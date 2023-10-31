import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    width: 540
    height: 810
    visible: true
    title: qsTr("Hello World")
    color: "#10181E"

    Cameras_box{
        id: cameras_box

        anchors{

            left: parent.left
            right: parent.right
            top: parent.top

            topMargin: 5
        }

        height: parent.height * 0.95/3
    }

    Upper_stars{
        id: upper_stars

        anchors{
            left: parent.left
            right: parent.right
            top: cameras_box.bottom

            topMargin: 5
            leftMargin: 7
            rightMargin: 7
            bottomMargin: 5
        }

        height: parent.height * 0.15/3
    }

    Map_box{
        id: map_box

        anchors{
            left: parent.left
            right: parent.right
            top: upper_stars.bottom

            leftMargin: 5
            rightMargin: 5
            topMargin: 5
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

            leftMargin: 5
            rightMargin: 5
            bottomMargin: 5
            topMargin: 5
        }

        height: parent.height * 0.5/3
    }
}
