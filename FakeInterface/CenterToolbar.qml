import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4

ToolBar{
    RowLayout{
        ToolButton {
            scale: 0.5
            iconSource: "image/buttons/slower.png"
        }
        ToolButton {
            scale: 0.5
            iconSource: "image/buttons/dvd_prev.png"
        }
        ToolButton {
            scale: 0.5
            iconSource: "image/buttons/play.png"
            onClicked: {
                iconSource = "image/buttons/stop.png"
            }
        }
        ToolButton {
            scale: 0.5
            iconSource: "image/buttons/dvd_next.png"
        }
        ToolButton {
            scale: 0.5
            iconSource: "image/buttons/faster.png"
        }
    }

}
