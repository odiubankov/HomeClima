#include "InputValidator.h"

namespace {
    static const QString IP_REGEXP{R"(^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$)"};
    static const QString PORT_REGEXP{R"(^0*(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5][0-9]{4}|[1-9][0-9]{1,3}|[0-9])$)"};
}

namespace homeclima {

    InputValidator::InputValidator(QObject* parent/* = Q_NULLPTR*/)
        : QObject{parent}
        , ipRegExp_{IP_REGEXP}
        , portRegExp_{PORT_REGEXP}
    {}


    bool InputValidator::isValidIP(const QString& ipAddress) const
    {
        return ipRegExp_.exactMatch(ipAddress);
    }


    bool InputValidator::isValidPort(const QString& port) const
    {
        return portRegExp_.exactMatch(port);
    }
}
