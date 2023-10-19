import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle {
    id: control_panel
    color: "pink"

    Rectangle{
       id: part_first
       color: "blue"
       width: parent.width
       height: parent.height * 0.4/1

       anchors{
           left: parent.left
           right: parent.right
           top: parent.top
       }

       RowLayout{
           id: layout_first
           spacing: 5

           Control_button{
               text: "Открытие\nдверей\nсенсором"

           }

           Control_button{
               text: "Выкл"

           }

           Control_button{
               text: "Выкл"

           }

           Control_button{
               text: "Выкл"

           }

           Control_button{
               text: "Выкл"

           }


       }


    Rectangle{
       id: part_second
       color: "green"
       width: parent.width
       height: parent.height * 0.6/1

       anchors{
           left: parent.left
           right: parent.right
           top: part_first.bottom
           bottom: parent.bottom
            }
        }
    }
}
