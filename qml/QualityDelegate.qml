import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

EntryDelegate {
    rectColor: Material.color(Material.Blue)
    property alias value: slider.value

    Slider {
        id: slider
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 8

        from: 0
        to: 5
    }
}
