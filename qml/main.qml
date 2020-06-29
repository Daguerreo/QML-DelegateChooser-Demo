import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Qt.labs.qmlmodels 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Delegate Chooser Demo")

    ListView {
        anchors.fill: parent
        delegate: delegateChooser
        model: ListModel {
            ListElement { name: "Status"; type: "string"; valueString: "OK" }
            ListElement { name: "Synchronize"; type: "bool"; valueBool: false }
            ListElement { name: "Tolerance"; type: "int"; valueInt: 7; min: 0; max: 10 }
            ListElement { name: "Quality"; type: "quality"; quality: 3 }
            ListElement { name: "Safe Mode"; type: "bool"; valueBool: true }
        }
    }

    DelegateChooser {
        id: delegateChooser
        role: "type"

        DelegateChoice {
            roleValue: "bool"
            BoolDelegate {
                // explicitely calling model, not actually necessary
                entryName: model.name
                value: model.valueBool
            }
        }
        DelegateChoice {
            roleValue: "string"
            StringDelegate {
                // all these values are model's role
                entryName: name
                value: valueString
            }
        }
        DelegateChoice {
            roleValue: "int"
            IntDelegate {
                // all these values are model's role
                entryName: name
                value: valueInt
                min: min
                max: max
            }
        }

        // an inline delegate with custom property
        DelegateChoice {
            roleValue: "quality"
            EntryDelegate {
                rectColor: "cyan"
                entryName: name
                Slider {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 8

                    from: 0
                    to: 5
                    value: quality
                }
            }
        }
    }
}
