import QtQuick 2.4
import QtQuick.Dialogs 1.2

Dialog {
    id: loginDialog
    width: 800
    height: 700
    //visible: true
    modality: Qt.WindowModal
    title: "Enter Email and Password"

    //width: 800
    //height: 400
    LoginForm {
        id: loginForm
        //x: 0
        //y: 69
    }

    Connections {
        target: loginDialog
        onAccepted: loginDialog.submitted(loginForm.userName, loginForm.password)
    }

    standardButtons: StandardButton.Ok

    signal submitted(string userName, string password)
}
