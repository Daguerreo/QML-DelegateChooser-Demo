import QtQuick 2.0
import QtQuick.Controls.Material 2.15

EntryDelegate {
    rectColor: "lightgreen"

    property alias value: txt.text

    Text {
        id: txt
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 20
        width: 400

        horizontalAlignment: Text.AlignRight
        color: Material.accent
    }
}
