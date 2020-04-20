import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.14

ApplicationWindow {
    id:mainWindow
    visible: true
    width: 1000
    height: 1000
    title: qsTr("Quwl")

    Connections {
        target: mainWindow
        Component.onCompleted: {
            loginDialog.open();
        }
    }

    LoginDialogForm {
        id: loginDialog
        //x: -1096
        //y: -388
    }

    Connections {
    }

    Connections {
        target: loginDialog
        onSubmitted: api.reqToken(userName, password)
    }
}


