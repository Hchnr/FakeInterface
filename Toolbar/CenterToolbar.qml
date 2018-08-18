import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0

ToolBar{
    height: parent.height
    property alias centerToolbarRp: centerToolbarRp
    RowLayout{
        id: centerLayout
        height: parent.height
        property alias centerToolbarRp: centerToolbarRp
        Repeater {
            id: centerToolbarRp
            model: centerList
            delegate: ToolButton {
                // Text { text: model.modelData.widgetName }
                property string imgsrc: ""
                hoverEnabled: true
                Rectangle {
                    id: buttonBorder
                    anchors.fill: parent
                    border.color: parent.hovered?"blue":"grey"
                    border.width: 1
                    color: "transparent"
                    Image {
                        id: image
                        source: imgsrc
                        anchors.fill: parent
                    }
                }


                Component.onCompleted: {
                    imgsrc = fakePlayer.getIconFromName(model.modelData.widgetName)
                }

                onClicked: onclicked()
                function onclicked() {
                    if (model.modelData.widgetName === "Play") {
                        if (fakePlayer.isPlay) {
                            imgsrc = fakePlayer.getIconFromName("Stop")
                        }
                        else {
                            imgsrc = fakePlayer.getIconFromName("Play")
                        }
                        fakePlayer.isPlay = !fakePlayer.isPlay;
                    }
                }
            }
        }
    }
}


