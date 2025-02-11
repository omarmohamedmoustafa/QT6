import QtQuick 2.15
import QtQuick.Controls 2.15
import com.example 1.0

ApplicationWindow {
    visible: true
    width: 1000
    height: 1000
    title: "Button State Example"

    // Create an instance of the LedController
    LedController {
        id: ledController
        onLedStateChanged: {
            isButtonOn = state; // Update QML property when C++ state changes
        }
    }

    property bool isButtonOn: ledController.ledState // Bind QML property to C++ property

    Column {
        anchors.centerIn: parent
        spacing: 20

        // Button to toggle state
        Button {
            text: isButtonOn ? "Turn Off" : "Turn On"
            anchors.horizontalCenter: parent.horizontalCenter
            width: 200
            height: 100
            font.pixelSize: 24 // Set the font size in pixels

            onClicked: {
                ledController.toggleLed(); // Call C++ slot to toggle LED
            }
        }

        // Text to display button state
        Text {
            text: isButtonOn ? "State: ON" : "State: OFF"
            font.pixelSize: 30

                color:isButtonOn ? "green" : "red"

            anchors.horizontalCenter: parent.horizontalCenter
        }

        // LED icon
        Image {
            id: ledIcon
            source: isButtonOn ? "lit_led.png" : "dimmed_led.png" // Replace with your image paths
            width: 500
            height: 500
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
