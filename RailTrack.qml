import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12

Rectangle{
    id: track_frame
    state: "Stop"
    width: 120
    height: 15
    color: "transparent"

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


/*

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
            width: parent.width
            height: parent.height
            state: "Out of Control"
        }
}
