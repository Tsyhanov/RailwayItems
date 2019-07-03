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
                onClicked: point.state = "Out of Control"
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
                id: plusradio
                text: "Plus"
                onClicked: point.state = "Plus"
                checked: false
                contentItem: Text {
                    text: plusradio.text
                    font: plusradio.font
                    color: "white"
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: plusradio.indicator.width + plusradio.spacing
                }
            }
            RadioButton{
                id: minusradio
                text: "Minus"
                onClicked: point.state = "Minus"
                checked: false
                contentItem: Text {
                    text: minusradio.text
                    font: minusradio.font
                    color: "white"
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: minusradio.indicator.width + minusradio.spacing
                }
            }
        }
    }


    RailPoint{
        id: point
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 250
        anchors.leftMargin: 10
    }

}




