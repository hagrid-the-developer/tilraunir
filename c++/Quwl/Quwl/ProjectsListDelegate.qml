import QtQuick 2.0
import QtQuick.Controls 2.14

Item {
    width: parent.width; height: 128
    Grid {
        id: grid
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
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
            enabled: is_active
            text: qsTr("Is Active")
            checkable: false
        }

        Text {
            id: txtSpentTimeAll
            text: "125"
            font.pixelSize: 12
        }

        Text {
            id: txtSpentTimeWeek
            text: "23"
            font.pixelSize: 12
        }

        Text {
            id: txtUid
            text: id
            font.pixelSize: 12
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_height:400;anchors_width:400;anchors_x:115;anchors_y:40}
}
##^##*/
