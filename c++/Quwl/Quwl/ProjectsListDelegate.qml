import QtQuick 2.0
import QtQuick.Controls 2.14

Item {
    Grid {
        id: grid
        rows: 3
        columns: 3
        anchors.fill: parent

        Image {
            id: imgLogo
            width: 100
            height: 100
            source: logo_url
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: txtName
            text: name
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

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_height:400;anchors_width:400;anchors_x:115;anchors_y:40}
}
##^##*/
