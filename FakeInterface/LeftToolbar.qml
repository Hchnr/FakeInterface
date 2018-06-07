import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4

ToolBar{
    height: parent.height
    RowLayout{
        height: parent.height
        ToolButton {
            scale: 0.5
            iconSource: "image/buttons/tv.png"
        }
        ToolButton {
            scale: 0.5
            height: 16
            width: 16
            iconSource: "image/buttons/messages.png"
        }
        ToolButton {
            scale: 0.5
            height: 16
            width: 16
            iconSource: "image/buttons/shuffle_on.png"
        }
        ToolButton {
            scale: 0.5
            height: 16
            width: 16
            iconSource: "image/buttons/repeat_all.png"
        }
    }

}
