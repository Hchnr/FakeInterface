import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4

import "qrc:///Menu/"

ToolBar{
    height: parent.height
    RowLayout{
        height: parent.height
        Repeater {
            model: leftList
            delegate: MyButton{
                id: button

                Component.onCompleted: {
                    if (button.name == "Subtitle" ) {
                        console.log("Subtitle more.")
                        button.onClicked =  console.log("Subtitle more.");
                    }
                }

            }
        }
    }
}
