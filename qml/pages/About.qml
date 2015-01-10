import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: page
    SilicaFlickable {
        anchors.fill: parent
        contentHeight: childrenRect.height

        PageHeader {
            id: header
            title: qsTr("About")
        }
    }
}





