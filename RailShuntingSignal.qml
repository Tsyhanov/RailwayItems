import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12

Rectangle{
    id: lmp_frame
    state: "Stop"
    width: 60
    height: 40
    color: "transparent"

    states:[
        State {
            name: "Out of Control"
            PropertyChanges {
                target: lmp_up;
                color: "grey"
            }
        },
        State {
            name: "Stop"
            PropertyChanges {
                target: lmp_up;
                color: "red"
            }
        },
         State {
            name: "Proceed"
             PropertyChanges {
                 target: lmp_up;
                 color: "yellow"
             }
         }
    ]


    Shape{
        id: lmp_shape
        width: 60
        height: 40

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

        Rectangle {
            id: lmp_up
            x: lmp_shape.width*0.3
            y: 0
            width: (lmp_shape.width*0.3)*2
            height: width
            radius: width*0.5
//            state: "Stop"

        }

    }

}



