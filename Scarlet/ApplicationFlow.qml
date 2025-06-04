import QtQuick

ApplicationFlowForm {

    id: applicationFlow
    state: "Home"
    property string platform: Qt.platform.os
    property string mode: ""

}
