#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "led_controller.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    // Register the LedController class as a QML type
    qmlRegisterType<LedController>("com.example", 1, 0, "LedController");

    engine.load(QUrl(QStringLiteral("../../Main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
