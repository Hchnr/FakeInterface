import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3

Window {
    id: fakePlayer
    visible: true
    width: 1000
    height: 960
    minimumWidth: 900
    title: qsTr("A Fake Interface")

    property bool isFullScreen: false
    property bool isToolbarVisible: true
    property var initHeight: 960

    // get the icon path of widgets
    function getIconFromName(name) {
        var m = {"Bookmark": "image/buttons-svg/tv.svg",
              "Chat": "image/buttons-svg/messages.svg",
              "Random": "image/buttons-svg/shuffle_on.svg",
              "Loop": "image/buttons-svg/repeat_all.svg",
              "Slower": "image/buttons-svg/slower.svg",
              "Previous": "image/buttons-svg/dvd_prev.svg",
              "Play": "image/buttons-svg/play.svg",
              "Next": "image/buttons-svg/dvd_next.svg",
              "Faster": "image/buttons-svg/faster.svg",
              "Fullscreen": "image/buttons-svg/renderer.svg",
              "Playlist": "image/buttons-svg/playlist.svg",
              "TBD": "image/buttons-svg/stop.svg"

        }
        return m[name]
    }

    Column{
        VideoWidget{
            id:videoWidget
            color:"black"
            width:fakePlayer.width
            height: fakePlayer.height-60
        }

        SliderBar{
            id: sliderBar
            width:fakePlayer.width
            height: 10
            value: 0
            init : 0
            Timer{
                interval: 1000;
                repeat: true;
                running: true;
                onTriggered: {
                    if(parent.value < 0.991){
                        parent.setValue(parent.value+=0.01)
                    }else{
                        // stop();
                    }
                }
            }
        }
        RowLayout{
            id: toolBar
            width:fakePlayer.width
            height: 50
            LeftToolbar{
                anchors.left: parent.left
            }

            CenterToolbar{
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
