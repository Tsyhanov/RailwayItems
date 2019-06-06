import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4


Frame{
    id: mainFrame

    ButtonGroup{
        id:stateGroup

    }

    ColumnLayout{
        RadioButton{
            id: oocradio
            text: "Out of Control"
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


    RailShuntingSignal{
        id: shuntingSignal
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 250
        anchors.leftMargin: 10
    }

}




