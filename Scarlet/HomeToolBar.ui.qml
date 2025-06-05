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
    property alias logo: logo

    Text {
        id: banner
        text: qsTr("Hello, Scarlet")
        color: 'red'
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
    }

    Button {
        id: backButton
        icon.color: (Colors.currentTheme == Colors.dark) ? "#FFFFFF" : "#121111"
        icon.source: "images/what.jpg"
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

    Image {
        id: logo
        source: "images/what.jpg"
        Layout.alignment: Qt.AlignCenter
        sourceSize.width: height * 1.4
        sourceSize.height: 25
    }
    Button {
        id: themeButton
        Layout.alignment: Qt.AlignRight
        icon.color: (Colors.currentTheme == Colors.dark) ? "#DDE2E8" : "#667085"
        icon.source: (Colors.currentTheme == Colors.dark) ? "images/what.jpg" : "images/what.jpg"
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
