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
                onClicked: shuntingSignal.state = "Out of Control"
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
                id: stopradio
                text: "Stop"
                onClicked: shuntingSignal.state = "Stop"
                checked: false
                contentItem: Text {
                    text: stopradio.text
                    font: stopradio.font
                    color: "white"
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: stopradio.indicator.width + stopradio.spacing
                }
            }
            RadioButton{
                id: proceedradio
                text: "Proceed"
                onClicked: shuntingSignal.state = "Proceed"
                checked: false
                contentItem: Text {
                    text: proceedradio.text
                    font: proceedradio.font
                    color: "white"
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: proceedradio.indicator.width + proceedradio.spacing
                }
            }
        }
    }


    RailShuntingSignal{
        id: shuntingSignal
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 250
        anchors.leftMargin: 10
    }

}




