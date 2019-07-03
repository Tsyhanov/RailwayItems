import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12


Frame{
    id: mainFrame

    Rectangle{
        id: radioStateRect
        color: "transparent"
        border.color: "white"
        width: 120
        height: 140

        ColumnLayout{
            anchors.fill: radioStateRect
            RadioButton{
                id: oocradio
                text: "Out of Control"
                onClicked: track.state = "Out of Control"
                checked: true
                contentItem: Text {
                    text: oocradio.text
                    font: oocradio.font
                    color: "white"
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: oocradio.indicator.width + oocradio.spacing
                }
            }
            RadioButton{
                id: freeradio
                text: "Free"
                onClicked: track.state = "Free"
                checked: false
                contentItem: Text {
                    text: freeradio.text
                    font: freeradio.font
                    color: "white"
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: freeradio.indicator.width + freeradio.spacing
                }
            }
            RadioButton{
                id: occupiedradio
                text: "Occupied"
                onClicked: track.state = "Occupied"
                checked: false
                contentItem: Text {
                    text: occupiedradio.text
                    font: occupiedradio.font
                    color: "white"
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: occupiedradio.indicator.width + occupiedradio.spacing
                }
            }
        }
    }


    RailTrack{
        id: track
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 250
        anchors.leftMargin: 10
    }

}






