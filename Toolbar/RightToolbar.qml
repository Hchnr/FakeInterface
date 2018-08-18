import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Window 2.2

ToolBar{
    height: parent.height
    RowLayout{
        id: rowlayout
        height: parent.height
        Repeater {
            id: repeater
            model: rightList
            delegate: MyButton {
                id:button
            }
        }
    }

    Component.onCompleted: {
        for(var i=0; i<3; i++)
          console.log(rightList[i].widgetName);
    }

}

