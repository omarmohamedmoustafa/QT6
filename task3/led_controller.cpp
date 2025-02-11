#include "led_controller.h"
#include <X11/Xlib.h>
#include <X11/XKBlib.h>
#include <QDebug>

LedController::LedController(QObject *parent) : QObject(parent), m_ledState(false) {}

bool LedController::ledState() const {
    return m_ledState;
}

void LedController::setLedState(bool newState) {
    if (m_ledState != newState) {
        m_ledState = newState;
        emit ledStateChanged(m_ledState);
    }
}

void LedController::toggleLed() {
    setLedState(!m_ledState);

    // Open the X11 display
    Display *display = XOpenDisplay(nullptr);
    if (!display) {
        qWarning() << "Failed to open X11 display.";
        return;
    }

    // Get the current keyboard state
    XkbStateRec state;
    XkbGetState(display, XkbUseCoreKbd, &state);

    // Toggle Caps Lock
    XkbLockModifiers(display, XkbUseCoreKbd, LockMask, m_ledState ? LockMask : 0);

    // Close the display
    XCloseDisplay(display);

    qDebug() << "Caps Lock LED toggled. New state:" << m_ledState;
}
