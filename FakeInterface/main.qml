import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3

Window {
    id: fakePlayer
    visible: true
    width: 1000
    height: 960
    title: qsTr("A Fake Interface")
    Column{
        VideoWidget{
            id:screen
            color:"black"
            width:fakePlayer.width
            height: fakePlayer.height-60
        }

        SliderBar{
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
            width:fakePlayer.width
            height: 50
            LeftToolbar{
                anchors.left: parent.left
            }

            MidToolbar{
                anchors.horizontalCenter: parent.horizontalCenter
            }

            SliderBar{
                anchors.right: parent.right
            }
        }
    }
}
