import QtQuick
import QtQuick.Controls
import QtQuick.VirtualKeyboard

Window {
    id: window
    visible: true
    width: 1920
    height: 1080
    title: "Task 2"

    // Button 1 - Top Left
    Column {
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 20
        spacing: 10

        Button {
            text: "Button_TopLeft"
            onClicked: imageWindow1.visible = !imageWindow1.visible // toggle visibility of image 1
        }

        Rectangle {
            id: imageWindow1
            width: 960
            height: 450
            visible: false

            Image {
                source: "qrc:/img1.png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
            }

            Button {
                text: "X"
                anchors.top: parent.top
                anchors.right: parent.right
                width: 20
                height: 20
                onClicked: imageWindow1.visible = false
            }
        }
    }

    // Button 2 - Top Right
    Column {
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.margins: 20
        spacing: 10

        Button {
            text: "Button_TopRight"
            onClicked: imageWindow2.visible = !imageWindow2.visible
        }

        Rectangle {
            id: imageWindow2
            width: 960
            height: 450
            visible: false

            Image {
                source: "qrc:/img2.png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
            }

            Button {
                text: "X"
                anchors.top: parent.top
                anchors.right: parent.right
                width: 20
                height: 20
                onClicked: imageWindow2.visible = false
            }
        }
    }

    // Button 3 - Bottom Left
    Column {
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.margins: 20
        spacing: 10

        Button {
            text: "Button_BottomLeft"
            onClicked: imageWindow3.visible = !imageWindow3.visible
        }

        Rectangle {
            id: imageWindow3
            width: 960
            height: 450
            visible: false

            Image {
                source: "qrc:/img3.png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
            }

            Button {
                text: "X"
                anchors.top: parent.top
                anchors.right: parent.right
                width: 20
                height: 20
                onClicked: imageWindow3.visible = false
            }
        }
    }

    // Button 4 - Bottom Right
    Column {
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.margins: 20
        spacing: 10

        Button {
            text: "Button_BottomRight"
            onClicked: imageWindow4.visible = !imageWindow4.visible
        }

        Rectangle {
            id: imageWindow4
            width: 960
            height: 450
            visible: false

            Image {
                source: "qrc:/img4.png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
            }

            Button {
                text: "X"
                anchors.top: parent.top
                anchors.right: parent.right
                width: 20
                height: 20
                onClicked: imageWindow4.visible = false
            }
        }
    }
}
