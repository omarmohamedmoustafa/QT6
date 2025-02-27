import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Task_1")

    Row {
        anchors.centerIn: parent
        spacing: 20

        // First rectangle
        Rectangle {
            width: 100
            height: 100
            color: "red"
            border.color: "blue"
            border.width: 5
            radius: 10

            Text {
                anchors.centerIn: parent
                text: "Hello"
                font.pixelSize: 20
            }
        }

        // Second Rectangle
        Rectangle {
            width: 100
            height: 100
            color: "green"
            border.color: "gray"
            border.width: 5
            radius: 10

            Text {
                anchors.centerIn: parent
                text: "World"
                font.pixelSize: 20
            }
        }

        // Third Rectangle
        Rectangle {
            width: 100
            height: 100
            color: "blue"
            border.color: "yellow"
            border.width: 5
            radius: 10

            Text {
                anchors.centerIn: parent
                text: "!"
                font.pixelSize: 20
            }
        }

        // Fourth Rectangle
        Rectangle {
            width: 100
            height: 100
            color: "purple"
            border.color: "gray"
            border.width: 5
            radius: 10

            Text {
                anchors.centerIn: parent
                text: "Omar"
                font.pixelSize: 20
            }
        }

        // Fifth Circle
        Rectangle {
            width: 100
            height: 100
            color: "pink"
            border.color: "black"
            border.width: 5
            radius: 50

            Text {
                anchors.centerIn: parent
                text: "Mohmed"
                font.pixelSize: 20
            }
        }
    }
}
