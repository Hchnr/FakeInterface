import QtQuick 2.0

Text {
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.bottom: parent.bottom
    id: subtitleText
    font.family: "Ubuntu"
    font.pixelSize: 28
    color: "white"
    verticalAlignment: Text.AlignTop
    horizontalAlignment: Text.AlignHCenter
    wrapMode: Text.WordWrap
    text: qsTr("subtitle here. subtitle here. subtitle here. subtitle here.")

    Component.onCompleted: {
        // should load srt file here
    }
    function getSubtitle(index) {
        var texts = "1\n00:02:45,660 --> 00:02:46,870\nDon't you do it.\n\n2\n00:02:48,420 --> 00:02:50,150\nDon't you fuckin' do it.\n\n"
        var textList = texts.split('\n');
        return textList[index*4+2];
    }

    Timer{
        id: subtitleTimer
        interval: 2000;
        repeat: true;
        running: true;
        property int i: 0
        onTriggered: {
            parent.text = getSubtitle(i)
            if(i==0) i=1;
            else     i=0;
        }
    }
}


