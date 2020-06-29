import QtQuick 2.0
import QtQuick.Controls.Material 2.15

Item {
    property alias entryName: titleText.text
    property alias rectColor: rect.color
    property color textColor: Material.background
    property color lineColor: Material.foreground

    anchors.left: parent.left
    anchors.right: parent.right
    height: 48

    Rectangle {
        id: rect
        radius: 5
        width: 32
        height: 32

        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.verticalCenter: parent.verticalCenter
    }

    Text {
        id: titleText
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: rect.right
        anchors.leftMargin: 10

        color: lineColor
        font.pixelSize: 14
    }

    Rectangle {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        height: 1
        color: textColor
    }
}
