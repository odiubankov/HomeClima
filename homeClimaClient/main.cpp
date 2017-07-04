#include "InputValidator.h"
#include "ServiceOriginator.h"

#include <QGuiApplication>
#include <QQmlApplicationEngine>


namespace{

    void registerQMLTypes()
    {
        qmlRegisterType<homeclima::InputValidator>("HomeClima", 0, 0, "InputValidator");
        qmlRegisterType<homeclima::ServiceOriginator>("HomeClima", 0, 0, "ServiceOriginator");
    }

}


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    registerQMLTypes();

    return app.exec();
}
