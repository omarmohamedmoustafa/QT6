#ifndef LEDCONTROLLER_H
#define LEDCONTROLLER_H

#include <QObject>
#include <QDebug>

class LedController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool ledState READ ledState WRITE setLedState NOTIFY ledStateChanged) // Expose ledState to QML

public:
    explicit LedController(QObject *parent = nullptr);

    bool ledState() const; // Getter for ledState
    void setLedState(bool newState); // Setter for ledState

signals:
    void ledStateChanged(bool state); // Signal to notify QML when the LED state changes

public slots:
    void toggleLed(); // Slot to toggle the LED

private:
    bool m_ledState; // Internal state of the LED
};

#endif // LEDCONTROLLER_H
