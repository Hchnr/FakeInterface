import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.3
import QtQuick.Controls 2.2

Rectangle {
    color: "grey"
    width: parent.width
    height: sliderBar.height + toolBar.height
    property alias sliderBar: control
    property alias toolBar: toolBar

    Column{
        anchors.bottom: parent.bottom
        /*
        SliderBar{
            id: sliderBar
            width:fakePlayer.width
            height: 10
            value: 0
            init : 0
        }
        */
        Slider {
            id: control

            width: parent.width

            value: 0.5

            background: Rectangle {
                x: control.leftPadding
                y: control.topPadding + control.availableHeight / 2 - height / 2
                implicitWidth: 200
                implicitHeight: 4
                width: control.availableWidth
                height: implicitHeight
                radius: 2
                color: "#bdbebf"

                Rectangle {
                    width: control.visualPosition * parent.width
                    height: parent.height
                    color: "#c62f2f"
                    radius: 2
                }
            }

            handle: Rectangle {
                x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
                y: control.topPadding + control.availableHeight / 2 - height / 2
                implicitWidth: 15
                implicitHeight: 15
                radius: 5
                color: control.pressed ? "#f0f0f0" : "#f6f6f6"
                border.color: "#bdbebf"
            }
        }

        RowLayout{
            id: toolBar
            width:fakePlayer.width
            height: 50
            property alias centerToolbar: centerToolbar
            LeftToolbar{
                anchors.left: parent.left
            }

            CenterToolbar{
                id: centerToolbar
                anchors.horizontalCenter: parent.horizontalCenter
            }

            RowLayout {
                anchors.right: parent.right
                SliderBar{
                    anchors.right: rightToolbar.left
                }
                RightToolbar{
                    id: rightToolbar
                    anchors.right: parent.right
                }
            }
        }
    }
}
