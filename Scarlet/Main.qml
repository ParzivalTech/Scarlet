import QtQuick
import QtQuick.Controls.Basic

ApplicationWindow {

    width: 1000
    height: 600
    visible: true
    title: qsTr("Hello Scarlet")

    ApplicationFlow {
        width: parent.width
        height: parent.height
        mode: (Screen.height > Screen.width) ? "portrait" : "landscape"
    }

}

