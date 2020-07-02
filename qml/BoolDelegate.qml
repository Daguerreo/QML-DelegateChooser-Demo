import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

EntryDelegate {
    rectColor: Material.color(Material.Yellow)

    property alias value: comp.checked

    Switch {
        id: comp
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 8
    }
}
