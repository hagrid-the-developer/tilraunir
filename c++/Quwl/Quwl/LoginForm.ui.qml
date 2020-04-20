import QtQuick 2.4
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

Item {
    id: loginForm
    // modal: true
    width: 800
    height: 200
    // dim: true
    // clip: true
    property alias loginForm: loginForm
    property alias userName: txtUserName.text
    property alias password: txtPassword.text

    //    focus: true
    Image {
        id: image
        y: 0
        width: 800
        height: 200
        fillMode: Image.Stretch
        source: "images/login_bg.png"

        Text {
            id: elemUserName
            x: 34
            y: 145
            width: 118
            height: 15
            text: qsTr("Username:")
            font.pixelSize: 12
        }

        Text {
            id: elemPassword
            x: 34
            y: 177
            width: 118
            height: 15
            text: qsTr("Password:")
            font.pixelSize: 12
        }

        TextInput {
            id: txtUserName
            x: 168
            y: 140
            width: 553
            height: 20
            text: qsTr("Username")
            focus: true
            activeFocusOnTab: true
            selectByMouse: true
            mouseSelectionMode: TextInput.SelectWords
            cursorVisible: true
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 12

            Rectangle {
                id: rectUserName
                color: "#ffffff"
                radius: 7
                visible: false
                anchors.fill: parent
            }
        }

        TextInput {
            id: txtPassword
            x: 168
            y: 175
            width: 553
            height: 20
            text: qsTr("Text Input")
            activeFocusOnTab: true
            selectByMouse: true
            mouseSelectionMode: TextInput.SelectCharacters
            overwriteMode: true
            echoMode: TextInput.Password
            cursorVisible: true
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 12

            Rectangle {
                id: rectPassword
                color: "#ffffff"
                radius: 7
                visible: false
                anchors.fill: parent
            }
        }

        Rectangle {
            id: rectangle
            height: 100
            anchors.bottomMargin: 98
            anchors.fill: parent
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#805bcce9"
                }

                GradientStop {
                    position: 1
                    color: "#000000"
                }
            }
            opacity: 1

            Text {
                id: element
                x: 103
                y: 22
                width: 622
                height: 45
                text: qsTr("Quwi Login")
                font.capitalization: Font.SmallCaps
                style: Text.Normal
                font.weight: Font.Light
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 33
            }
        }
    }

    Connections {
        target: loginForm
        onClicked: print("clicked")
    }
}

/*##^##
Designer {
    D{i:8;anchors_height:100}
}
##^##*/

