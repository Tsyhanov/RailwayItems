import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12


Frame{
    id: mainFrame
    width: parent.width
    height: parent.height

    Rectangle{
        id: mainRect
        width: 360
        height: 640
        color: "black"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        RailTrack {
            id: railTrack
            x: 35
            y: 313
        }

        RailPoint {
            id: railPoint
            x: 161
            y: 300
        }

        RailShuntingSignal {
            id: railShuntingSignal
            x: 161
            y: 254
        }

    }

}
