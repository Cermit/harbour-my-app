import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    Label {
        id: label
        anchors.centerIn: parent
        text: firstpage.label.text
        font.pixelSize: 200
    }

     CoverActionList {
        //enabled: true

        CoverAction {
            iconSource: 'image://theme/icon-cover-refresh'
            onTriggered: firstpage.label.text = '0'
        }
        CoverAction {
            iconSource: 'image://theme/icon-cover-next'
            onTriggered: py.call("main.count_up",[firstpage.label.text]);
        }
    }
}


