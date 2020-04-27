#include <QObject>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "model.h"
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
    ProjectsListModel projectsModel;
    Model model{&api, &projectsModel};

    engine.rootContext()->setContextProperty("api", &api);
    engine.rootContext()->setContextProperty("model", &model);
    engine.rootContext()->setContextProperty("projectsModel", &projectsModel);
    engine.load(url);

    return app.exec();
}
