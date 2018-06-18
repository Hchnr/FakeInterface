import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.3

Rectangle {
    color: "grey"
    width: parent.width
    height: sliderBar.height + toolBar.height
    property alias sliderBar: sliderBar
    property alias toolBar: toolBar

    Column{
        anchors.bottom: parent.bottom
        SliderBar{
            id: sliderBar
            width:fakePlayer.width
            height: 10
            value: 0
            init : 0
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
