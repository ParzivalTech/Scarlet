// Copyright (C) 2023 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause
import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

Item {
    id: home
    property alias getStartedbutton: getStartedButton
    property alias grid: grid
    property alias header: header

    GridLayout {
        id: grid
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: home.top
        anchors.topMargin: 200
        flow: GridLayout.TopToBottom
        Image {
            id: imageHome
            Layout.preferredHeight: home.height / 3
            Layout.preferredWidth: height / 1.16
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.margins: 5
            source: (Colors.currentTheme
                     == Colors.dark) ? "images/sword-dark.svg" : "images/sword-icon.svg"
        }
        Text {
            id: header
            text: qsTr("Stabby Stab")
            font.pixelSize: 32
            font.weight: 700
            color: Colors.currentTheme.textColor
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.topMargin: 20
        }

        CustomButton {
            id: getStartedButton
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.minimumWidth: 150
            Layout.minimumHeight: 40
            buttonText: "Get Started"
        }
    }

    states: [
        State {
            name: "portrait"
            PropertyChanges {
                target: getStartedButton
                Layout.preferredWidth: home.width / 2.2
                Layout.preferredHeight: home.height / 14
                Layout.topMargin: 20
            }
        },
        State {
            name: "landscape"
            PropertyChanges {
                target: grid
                anchors.topMargin: 0
            }
            PropertyChanges {
                target: header
                Layout.topMargin: 0
            }
            PropertyChanges {
                target: getStartedButton
                Layout.preferredWidth: home.width / 4
                Layout.preferredHeight: home.height / 8
                Layout.topMargin: 0
            }
            PropertyChanges {
                target: getStartedButton
                Layout.minimumHeight: 0
            }
        }
    ]
}
