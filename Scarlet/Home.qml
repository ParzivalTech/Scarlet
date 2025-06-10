import QtQuick

HomeForm {
    grid.states: [
        State {
            name: "small"
            when: ((Screen.height * Screen.devicePixelRatio)
                   + (Screen.wdith * Screen.devicePixelRatio)) < 2000
            PropertyChanges {
                target: header
                font.pixelSize: 28
            }
            PropertyChanges{
                target: caption
                font.pixelSize:14
            }
        }
    ]
}
