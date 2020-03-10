import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
  visible: true
  width: 640
  height: 480
  title: qsTr("Scroll")

  ScrollView {
    anchors.rightMargin: 0
    anchors.bottomMargin: 0
    anchors.leftMargin: 0
    anchors.topMargin: 0
    anchors.fill: parent

    ListView {
      width: parent.width
      model: 20
      delegate: ItemDelegate {
        text: "Item " + (index + 1)
        width: parent.width
      }

      CheckBox {
          id: checkBox
          x: 29
          y: 5
          text: qsTr("Check Box")
      }
    }
  }
}
