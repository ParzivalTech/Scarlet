import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls.Basic

Rectangle {
    id: root
    color: Colors.currentTheme.background
    property alias homeToolBar: homeToolBar
    property alias home: home
    property alias stack: stack
    anchors.topMargin: parent.height / 20

    HomeToolBar {
        id: homeToolBar
        anchors.bottomMargin: parent.height / 80
        width: parent.width
        height: 35
        anchors.bottom: parent.bottom
    }

    StackView {
        id: stack
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: parent.height / 20
        initialItem: Home {
            id: home
            visible: true
            state: applicationFlow.mode
        }
    }
}
