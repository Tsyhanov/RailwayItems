import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12

Rectangle{
    id: point_frame
    width: 120
    height: 40
    color: "transparent"

    states:[
        State {
            name: "Plus"
            PropertyChanges {
                target: point_plus
                color: "red"
            }
            PropertyChanges {
                target: point_minus
                color: "red"
            }
            PropertyChanges {
                target: point_zagal
                color: "red"
            }
        },
        State {
            name: "Minus"
            PropertyChanges {
                target: point_plus
                color: "green"
            }
            PropertyChanges {
                target: point_minus
                color: "green"
                rotation: 45
            }
            PropertyChanges {
                target: point_zagal
                color: "green"
            }
        },
         State {
            name: "Out of Control"

             PropertyChanges {
                 target: point_plus
                 color: "magenta"
             }
             PropertyChanges {
                 target: point_minus
                 color: "magenta"
                 rotation: 45
             }
             PropertyChanges {
                 target: point_zagal
                 color: "magenta"
             }
         }
    ]


    Shape{
        id: point_shape
        width: 120
        height: 40


        ShapePath{
            id: point_plus_sign
            startX: 1
            startY: point_minus.height - point_minus.height - 5
            strokeColor: "grey"
            strokeWidth: 4
            PathLine{x:point_minus.width/2; y:point_minus.height - point_minus.height - 5}
        }

        Rectangle {
            id: point_plus
            x: 0
            y: 0
            width: point_shape.width/3
            height: point_shape.height/4
            state: "Out of Control"
        }

        Rectangle {
            id: point_minus
            x: point_shape.width/3
            y: 0
            width: point_shape.width/3
            height: point_shape.height/4
            transformOrigin: Item.BottomRight
            state: "Out of Control"
        }

        Rectangle {
            id: point_zagal
            x: (point_shape.width/3)*2
            y: 0
            width: point_shape.width/3
            height: point_shape.height/4
            state: "Out of Control"
        }

    }
}



