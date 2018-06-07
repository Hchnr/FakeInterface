import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4

ToolBar{
    RowLayout{

        ToolButton {
            scale: 0.5
            iconSource: "image/buttons/renderer.png"
            onClicked: {
                if (fakePlayer.isFullScreen){
                    fakePlayer.showNormal()
             }
                else {
                    fakePlayer.showFullScreen()
                }
                fakePlayer.isFullScreen = !fakePlayer.isFullScreen
            }
        }
        ToolButton {
            scale: 0.5
            iconSource: "image/buttons/playlist.png"
        }
        ToolButton {
            scale: 0.5
            iconSource: "image/buttons/stop.png"
        }
    }

}
