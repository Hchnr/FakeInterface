import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQml.Models 2.1


ToolButton {
    property ListModel myModel: null
    property string name: model.modelData.widgetName
    hoverEnabled: true
    Rectangle {
        anchors.fill: parent
        border.color: parent.hovered?"blue":"grey"
        border.width: 1
        color: "transparent"
        Image {
            id: image
            source: fakePlayer.getIconFromName(model.modelData.widgetName)
            anchors.fill: parent
        }
    }

    onClicked: onClickedForAll()

    function onClickedForAll() {
        switch (name) {
        case "Subtitle": console.log("new subtitle"); break;
        case "Bookmark": console.log("new bookmark"); break;
        }

    }
}

