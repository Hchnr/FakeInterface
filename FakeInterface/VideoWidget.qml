import QtQuick 2.0

Rectangle{
    Image{
        id:img
        source: "./image/fakePlayer.jpg"
        anchors.fill: parent

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onPositionChanged: {
                if(fakePlayer.isFullScreen) {
                    if(toolBar.visible) {
                        mouseTimer.restart()

                    }
                    else {
                        videoWidget.height -= 50
                        toolBar.visible = true
                        mouseTimer.restart()
                        console.log("moved.")
                    }
                }
            }
        }
        Timer{
            id: mouseTimer
            interval: 3000;
            repeat: true;
            running: true;
            onTriggered: {
                if(fakePlayer.isFullScreen) {
                    toolBar.visible = false
                    videoWidget.height += 50
                    mouseTimer.stop()
                }
            }
        }
    }
    Subtitle {
        height: 80
        width: parent.width-40
    }
}
