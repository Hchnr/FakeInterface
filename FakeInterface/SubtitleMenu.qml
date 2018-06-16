import QtQuick 2.6
import QtQuick.Controls 2.1

Menu {
/*
    MenuItem {
        text: "Cut"
        shortcut: "Ctrl+X"
        onTriggered: {}
    }
*/
    Repeater {
        model: subtitleMenuItems
        delegate: MenuItem {
            text: name

            onClicked: {
                console.log(name + " clicked.")
                if (name === "English" ) {
                }
            }
        }
    }

    ListModel {
        id: subtitleMenuItems
        ListElement {name: "Open a file"; abbr: ""}
        ListElement {name: "English"; abbr: "[en]"}
        ListElement {name: "Chinese"; abbr: "[zh]"}
        ListElement {name: "France"; abbr: "[fr]"}
    }
}
