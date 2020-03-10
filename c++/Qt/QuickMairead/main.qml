import QtQuick 2.12
import QtQuick.Window 2.12

Window {
  visible: true
  width: 640
  height: 480
  title: qsTr("Hello World")

  Text {
      id: element
      x: 159
      y: 66
      width: 299
      height: 39
      text: qsTr("Everything Works")
      font.pixelSize: 12
  }

  Grid {
      id: grid
      x: 89
      y: 40
      width: 400
      height: 400
      rows: 2
      columns: 2
  }
}
