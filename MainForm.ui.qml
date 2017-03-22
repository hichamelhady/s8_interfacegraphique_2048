import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import QtQuick.Controls.Styles 1.4


Item {
    width: 540
    height: 700
    Rectangle {
        id: rectangle2
        color: "#faf8ef"
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            x: 45
            y: 222
            width: 450
            height: 445
            color: "#bbada0"
            scale: 1
            transformOrigin: Item.Center

            Grid {
                id: grilledujeu
                x: -1
                y: -4
                width: 452
                height: 458
                opacity: 1
                clip: false
                visible: true
                scale: 0.9
                transformOrigin: Item.Center
                rows: 4;
                columns: 4;
                spacing: 10

                Repeater {
                    id: grille_
                   model: 16
                   delegate: Rectangle {
                        id:cases
                        width: 420/4; height: 420/4
                        radius: 5
                        color: "#cdc1b4"


                        Text{
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.family: "Tahoma"
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: 40
                            focus: true
                            //text : grille.state
                            text: index

                        }

                    }
                }

            }
        }

        Label {
            id: label
            x: 45
            y: 50
            width: 149
            height: 64
            color: "#8c8178"
            text: qsTr("2048")
            font.pixelSize: 50
            font.family: "Arial"
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            fontSizeMode: Text.Fit
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        }

        Rectangle {
            id: rectangle3
            x: 275
            y: 54
            width: 80
            height: 55
            radius: 5
            color: "#bbada0"

        }

        Rectangle {
            id: rectangle4
            x: 375
            y: 54
            width: 120
            height: 55
            radius: 5
            color: "#bbada0"
        }

        Button {
            id: button
            x: 275
            y: 137
            width: 220
            height: 49
            style: ButtonStyle {
                background: Rectangle {
                    color: "#8c8178"
                    radius: 5
                    Text{
                        id: boutton
                        width: 176
                        anchors.centerIn: parent
                        text: qsTr("Recommencer")
                        visible: true
                        scale: 1
                        wrapMode: Text.NoWrap
                        horizontalAlignment: Text.AlignHCenter
                        textFormat: Text.RichText
                        font.family: localFont.name
                        font.pixelSize: 26
                        font.bold: false
                        color:"#ffffff"

                    }

                }
            }

            MouseArea {
                id: mouseArea
                anchors.fill: parent
            }
        }
    }



}
