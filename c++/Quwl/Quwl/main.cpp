#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "quwiapi.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/Main.qml"));

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    QuwiApi api{};
    engine.rootContext()->setContextProperty("api", &api);
    engine.load(url);

    return app.exec();
}
