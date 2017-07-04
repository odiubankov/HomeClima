#ifndef SERVICEORIGINATOR_H
#define SERVICEORIGINATOR_H

#include <QObject>

namespace homeclima {

    class ServiceOriginator : public QObject
    {
        Q_OBJECT

    public:
        explicit ServiceOriginator(QObject *parent = nullptr);

        Q_INVOKABLE void startService() const;
    };

}

#endif // SERVICEORIGINATOR_H
