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
    ProjectsListDelegate {
        id: projectsListDelegate
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
        height: 1000
        anchors.left: parent.left
        anchors.leftMargin: 233
        anchors.right: parent.right
        anchors.rightMargin: 239
        anchors.verticalCenter: parent.verticalCenter
        anchors.top: parent.top
        model: projectsModel
        //delegate: projectsListDelegate
        delegate: Grid {
        id: grid
        rows: 3
        columns: 3
        anchors.fill: parent

        Image {
            id: imgLogo
            width: 100
            height: 100
            source: model.logo_url
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: txtName
            text: model.name
            font.pixelSize: 12
        }

        CheckBox {
            id: chkIsActive
            text: qsTr("Check Box")
        }

        Text {
            id: txtSpentTimeAll
            text: qsTr("Text")
            font.pixelSize: 12
        }

        Text {
            id: txtSpentTimeWeek
            text: qsTr("Text")
            font.pixelSize: 12
        }

        Text {
            id: txtUid
            text: qsTr("Text")
            font.pixelSize: 12
        }
    }
    }
}



/*##^##
Designer {
    D{i:5;anchors_height:160;anchors_width:110;anchors_x:330;anchors_y:250}
}
##^##*/
