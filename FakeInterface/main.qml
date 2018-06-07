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

    Column{
        VideoWidget{

            id:videoWidget
            color:"black"
            width:fakePlayer.width
            height: fakePlayer.height-60
/*
            MouseArea{
                anchors.fill: parent
                onPositionChanged: {
                        toolBar.visible = true
                        videoWidget.height = initHeight-60
                        mouseTimer.restart()
                        fakePlayer.alert("still for 5s.")
                    }

                Timer{
                    id: mouseTimer
                    interval: 3000;
                    repeat: true;
                    running: true;
                    onTriggered: {
                        toolBar.visible = false
                        videoWidget.height = initHeight-10
                        mouseTimer.stop()
                    }
                }
            }
            */
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

            MidToolbar{
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
