import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Rectangle {
    id: root
    property alias homeToolBar: homeToolBar
    anchors.topMargin: parent.height / 20
    // ToolBar {
    //     id: homeToolBar
    //     x: 0
    //     height: 40
    //     anchors.left: parent.left
    //     anchors.right: parent.right
    //     layer.format: ShaderEffectSource.Alpha
    //     contentHeight: toolButton.implicitHeight
    //     background: Rectangle {
    //         id: toolbarColor
    //         color: "#FF2400"
    //     }

    //     Text {
    //         id: _text
    //         text: qsTr("Hello, Scarlet")
    //         anchors.verticalCenter: parent.verticalCenter
    //         font.pixelSize: 25
    //         font.bold: true
    //         anchors.horizontalCenter: parent.horizontalCenter
    //     }
    // }
    HomeToolBar {
        id: homeToolBar
        anchors.topMargin: parent.height / 80
        width: parent.width
        height: 35
    }
}
