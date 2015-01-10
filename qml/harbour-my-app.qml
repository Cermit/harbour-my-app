import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow {
    initialPage: FirstPage {id: firstpage}

    Python {
        id: py

        Component.onCompleted: {
            setHandler('count_up', function (number) {
                    console.log("qml " + number)
                    firstpage.label.text = number
            });
        }
    }

    cover: Qt.resolvedUrl("cover/CoverPage.qml")
}


