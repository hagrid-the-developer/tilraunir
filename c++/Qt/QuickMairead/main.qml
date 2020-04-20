import QtQuick 2.12
import QtQuick.Window 2.12

Window {
  visible: true
  width: 200
  height: 200
  title: qsTr("Hello World")
  Rectangle {
    anchors.fill: parent
    color: "white"
  }
  ListModel {
    id: data
    ListElement {c: "red"; w: 100; h: 100 }
    ListElement {c: "blue"; w: 200; h: 100 }
    ListElement {c: "green"; w: 100; h: 100 }
    ListElement {c: "yellow"; w: 200; h: 100 }
  }
  Flow {
    anchors.fill: parent
    Repeater {
      model: data
      delegate: Rectangle {color: c; width: w; height: h; }
    }
  }
}
