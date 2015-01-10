import QtQuick 2.0
import Sailfish.Silica 1.0
import io.thp.pyotherside 1.0

Page {
    id: page
    property alias label: label

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: page.height
        contentWidth: page.width

        MouseArea {
            anchors.fill: parent
            onClicked: py.call("main.count_up",[label.text])
        }

        Label {
            id: label
            anchors.centerIn: parent
            font.pixelSize: 200
            text: "0"
        }

        PullDownMenu {
             MenuItem {
                id: menu_about
                text: "About"
                onClicked: pageStack.push(Qt.resolvedUrl("About.qml"))
            }
  
            MenuItem {
                id: menu_start
                text: "First Menu Entry"
                onClicked: py.call("main.count_up",[label.text])
            }
        }

        PushUpMenu {
             MenuItem {
                id: menu_
                text: "Reset"
                onClicked: label.text = '0'
            }
        }
    }
}


