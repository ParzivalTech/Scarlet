// Copyright (C) 2023 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause
import QtQuick
import QtQuick.Layouts 2.15
import QtQuick.Controls.Basic
import QtQuick.Controls 2.15

Item {
    // Height, width and any other size related properties containing odd looking float or other dividers
    // that do not seem to have any logical origin are just arbitrary and based on original design
    // and/or personal preference on what looks nice.
    id: root
    property alias backButton: backButton
    property alias themeButton: themeButton

    //property alias logo: logo
    Button {
        id: backButton
        anchors.left: parent.left
        anchors.leftMargin: 20
        icon.color: (Colors.currentTheme == Colors.dark) ? "#FFFFFF" : "#121111"
        icon.source: "images/profile-icon.svg"
        flat: true
        background: null
        transitions: Transition {
            NumberAnimation {
                properties: "scale"
                duration: 100
                easing.type: Easing.InOutQuad
            }
        }
    }

    Text {
        id: banner
        text: qsTr("Hello, Scarlet")
        color: 'red'
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
    }

    Button {
        id: themeButton
        anchors.right: parent.right
        Layout.alignment: Qt.AlignRight
        anchors.rightMargin: 20
        icon.color: (Colors.currentTheme == Colors.dark) ? "#DDE2E8" : "#667085"
        icon.source: "images/theme-light.svg"
        flat: true
        background: null
        transitions: Transition {
            NumberAnimation {
                properties: "scale"
                duration: 100
                easing.type: Easing.InOutQuad
            }
        }
    }
}
