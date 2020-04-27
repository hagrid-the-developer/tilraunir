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
    }

    Connections {
        target: loginDialog
        onSubmitted: api.reqToken(userName, password)
    }
    Connections {
        target: api
        onReplyTokenError: {
            loginDialog.open();
        }
    }

    ListView {
        id: listView
        y: 250
        orientation: ListView.Vertical
        height: 1000
        anchors.left: parent.left
        anchors.leftMargin: 233
        anchors.right: parent.right
        anchors.rightMargin: 239
        anchors.verticalCenter: parent.verticalCenter
        anchors.top: parent.top
        model: projectsModel
        delegate: ProjectsListDelegate {}
    }
}



/*##^##
Designer {
    D{i:5;anchors_height:160;anchors_width:110;anchors_x:330;anchors_y:250}
}
##^##*/
