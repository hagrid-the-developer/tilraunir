import QtQuick 2.4
import QtQuick.Layouts 1.14
import QtQuick.Dialogs 1.2

Dialog {
    id: loginDialog
    modality: Qt.WindowModal
    title: "Enter Email and Password"

    contentItem: GridLayout {LoginForm {
        id: loginForm
    } }

    Connections {
        target: loginDialog
        onAccepted: loginDialog.submitted(loginForm.userName, loginForm.password)
    }
    Connections {
        target: loginForm
        onAccepted: loginDialog.accept()
    }


    standardButtons: StandardButton.Ok

    signal submitted(string userName, string password)
}
