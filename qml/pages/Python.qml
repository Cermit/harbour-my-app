import QtQuick 2.0
import io.thp.pyotherside 1.0

Python {
    id: py

    Component.onCompleted: {
        var path = Qt.resolvedUrl('../../').substr('file://'.length);
        addImportPath(path);

        // Import the main module
        importModule('main', function () {
            console.log('Main module is now imported')
        });

        onError: console.log('Error: ' + traceback)

    }
}
