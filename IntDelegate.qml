import QtQuick 2.0
import QtQuick.Controls 2.15

EntryDelegate {
    rectColor: "cyan"

    property alias value: spinBox.value
    property alias min: spinBox.from
    property alias max: spinBox.to

    SpinBox {
        id: spinBox
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 8
    }
}
