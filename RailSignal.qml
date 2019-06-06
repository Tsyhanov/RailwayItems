import QtQuick 2.12
import QtQuick.Controls 2.12

Rectangle{
    id: lmp_frame
    width: 80
    height: 40
    color: "transparent"

    MouseArea{
        anchors.fill: parent
        onClicked: {
            if (lmp_up.state == "RED")
                lmp_up.state = "YELLOW"
            else
                lmp_up.state = "RED"
        }
    }

    Rectangle {
        id: lmp_up
        x: lmp_frame.width*0.5
        y: 0
        width: lmp_frame.width*0.5
        height: width
        color: "red"
        radius: width*0.5
        state: "YELLOW"

        states:[

            State {
                name: "RED"
                PropertyChanges {
                    target: lmp_up;
                    color: "red"
                }
            },
             State {
                name: "YELLOW"
                 PropertyChanges {
                     target: lmp_up;
                     color: "yellow"
                 }
             }
        ]

    }

    Rectangle {
        id: lmp_bottom
        x:0
        y:0
        width: lmp_frame.width*0.5
        height: width
        color: "green"
        radius: width*0.5
    }
}



