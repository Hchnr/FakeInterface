import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Window 2.2

ToolBar{
    height: parent.height
    RowLayout{
        height: parent.height
        Repeater {
            model: rightList
            delegate: ToolButton {
                // Text { text: model.modelData.widgetName }
                Image {
                    source: fakePlayer.getIconFromName(model.modelData.widgetName)
                }
                onClicked: {
                    if (model.modelData.widgetName === "Fullscreen") {
                        if (fakePlayer.isFullScreen)
                            fakePlayer.visibility = Window.Windowed
                        else
                            fakePlayer.visibility = Window.FullScreen
                        fakePlayer.isFullScreen = !fakePlayer.FullScreen
                    }
                }
            }
        }
    }
}

