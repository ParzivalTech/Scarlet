import QtQuick
import QtQuick.Controls.Basic

ApplicationFlowForm {

    id: applicationFlow
    state: "Home"
    property string platform: Qt.platform.os
    property string mode: ""

    StackView {
        id: stack
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: parent.height / 20
    }


    //! [States]
    states: [
        State {
            name: "Home"
            PropertyChanges {
                target: toolbar
                backButton.opacity: 0
                backButton.enabled: false
                themeButton.opacity: 0
                themeButton.enabled: false
                logo.sourceSize.width: 70
                logo.sourceSize.height: 50
            }
            //! [States]
            PropertyChanges {
                target: coffeeText
                visible: false
            }
            PropertyChanges {
                target: stack
                anchors.top: coffeeText.bottom
            }
        },
        State {
            name: "Coffee-selection"
            PropertyChanges {
                target: applicationFlow
                previousState: "Home"

            }
            PropertyChanges {
                target: coffeeText
                text: "Coffee Selection"
            }
            PropertyChanges {
                target: toolbar
                backButton.opacity: 0
                backButton.enabled: false
            }
            PropertyChanges {
                target: stack
                anchors.top: coffeeText.bottom
            }
        },
        State {
            name: "Settings"
            PropertyChanges {
                target: applicationFlow
                previousState: "Coffee-selection"
            }
            PropertyChanges {
                target: stack
                anchors.top: coffeeText.bottom
            }
        },
        State {
            name: "Insert"
            PropertyChanges {
                target: applicationFlow
                previousState: "Settings"
            }
            PropertyChanges {
                target: stack
                anchors.top: coffeeText.bottom
            }
        },
        State {
            name: "Progress"
            PropertyChanges {
                target: applicationFlow
                previousState: "Insert"

            }
            PropertyChanges {
                target: toolbar
                backButton.opacity: 0
                backButton.enabled: false
            }
            PropertyChanges {
                target: stack
                anchors.top: coffeeText.bottom
            }
        },
        State {
            name: "Ready"
            PropertyChanges {
                target: applicationFlow
                previousState: "Progress"

            }
            PropertyChanges {
                target: toolbar
                backButton.opacity: 0
                backButton.enabled: false
            }
            PropertyChanges {
                target: stack
                anchors.top: coffeeText.bottom
            }
        }
    ]
}
