#include "ServiceOriginator.h"

#include <QAndroidJniObject>
#include <QAndroidJniEnvironment>
#include <QtAndroid>

namespace homeclima {

    ServiceOriginator::ServiceOriginator(QObject *parent)
        : QObject{parent}
    {}


    void ServiceOriginator::startService() const
    {
        QAndroidJniObject::callStaticMethod<void>("org/qtproject/example/ClientService",
                                                      "startClientService",
                                                      "(Landroid/content/Context;)V",
                                                      QtAndroid::androidActivity().object());
    }

}
