import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

import HomeClima 0.0

Pane {
    id: startServicePane

    Button {
        id: startServiceButton
        text: qsTr("Start service")
        Layout.fillWidth: true
        anchors.margins: 20
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: serviceOriginator.startService();
    }

    ServiceOriginator{
        id: serviceOriginator;
    }
}
