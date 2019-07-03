import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12

Rectangle{
    id: track_frame
    state: "Stop"

    states:[
        State {
            name: "Free"
            PropertyChanges {
                target: track_line;
                color: "grey"
            }
        },
        State {
            name: "Occupied"
            PropertyChanges {
                target: track_line;
                color: "red"
            }
        },
         State {
            name: "Out of Control"
             PropertyChanges {
                 target: track_line;
                 color: "magenta"
             }
         }
    ]


    Shape{
        id: track_shape
        width: 120
        height: 15
/*
        ShapePath{
            startX: 0
            startY: 0
            strokeColor: "grey"
            strokeWidth: 3
            PathLine{x:lmp_shape.x; y:lmp_shape.height}
        }

        ShapePath{
            startX: 0
            startY: lmp_shape.height/2
            strokeColor: "grey"
            strokeWidth: 3
            PathLine{x:lmp_shape.width/3; y:lmp_shape.height/2}
        }
*/
        Rectangle {
            id: track_line
            x: 0
            y: 0
            width: track_shape.width
            height: track_shape.height
            state: "Out of Control"
        }
    }
}



