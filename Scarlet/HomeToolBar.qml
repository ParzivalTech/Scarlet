import QtQuick

HomeToolBarForm {
    themeButton.onClicked : applicationFlow.themeButton()
    themeButton.states: State {
        name: "pressed"
        when: themeButton.pressed
        PropertyChanges {
            target: themeButton
            scale: 1.1

        }
    }
}
