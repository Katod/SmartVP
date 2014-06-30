import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Button {
    id: button
    style: ButtonStyle {
        background: Item {
            Image {
                id: bkgdIm
                anchors.fill: parent
                source: button.iconSource
                Connections {
                    target: button
                    onPressedChanged: {
                        if (button.pressed) {bkgdIm.anchors.leftMargin = 1; bkgdIm.anchors.topMargin = 1;} else
                            {bkgdIm.anchors.leftMargin = 0; bkgdIm.anchors.topMargin = 0}
                    }
                }
            }
        }
        label: Item {}
    }
}
