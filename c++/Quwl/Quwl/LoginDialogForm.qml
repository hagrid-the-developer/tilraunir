import QtQuick 2.4
import QtQuick.Layouts 1.14
import QtQuick.Controls 2.14
import QtQuick.Dialogs 1.2

Dialog {
    id: loginDialog
    modality: Qt.WindowModal
    title: "Enter Email and Password"
    //focus: true

    contentItem: GridLayout {
        Keys.onPressed: {
            if ( event.key === Qt.Key_Return ) {
                console.log("Enter pressed");
                loginDialog.accept();
            } else if (event.key === Qt.Key_Escape) {
                console.log("Esc pressed");
                loginDialog.reject();
            } else {
                console.log("Some key pressed");
            }
        }

        focus: true
        LoginForm {
            focus: true
            id: loginForm
        }
    }

    Connections {
        target: loginDialog
        onAccepted: loginDialog.submitted(loginForm.userName, loginForm.password)
    }
    Connections {
        target: loginForm
        onAccepted: loginDialog.accept()
    }


    //standardButtons: StandardButton.Ok

    signal submitted(string userName, string password)
}
