import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Shapes 1.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Window {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    color: "#000000"
    title: qsTr("RailwayItems")

    //left tab bar (Signal/Point/Track/Station)
    Container {
        id: tabBar

        contentHeight: 480
        contentWidth: 60

        currentIndex: 1

        Layout.fillWidth: false
        Layout.fillHeight: true

        ButtonGroup{
            buttons: columnLayout.children
        }

        contentItem: ColumnLayout{
            id:columnLayout
            spacing: 3
            Repeater{
                model: tabBar.contentModel
            }
        }

        ItemButton{
            text: "Signal"
            checked: true
            display: AbstractButton.TextOnly
            Layout.fillHeight: true
            onClicked: viewloader.setSource("RailSignalView.qml")
        }

        ItemButton{
            text: "Point"
            display: AbstractButton.TextOnly
            Layout.fillHeight: true
            onClicked: viewloader.setSource("RailPointView.qml")
        }

        ItemButton{
            text: "Track"
            display: AbstractButton.TextOnly
            Layout.fillHeight: true
            onClicked: viewloader.setSource("RailTrackView.qml")
        }
        ItemButton{
            text: "Station"
            display: AbstractButton.TextOnly
            Layout.fillHeight: true
            onClicked: viewloader.setSource("RailStationView.qml")
        }

    }

    //use views via Loader
    Loader{
        id:viewloader
        height: 0
        anchors.bottomMargin: 0
        anchors.left: tabBar.right
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        source: "RailSignalView.qml"

    }

}














