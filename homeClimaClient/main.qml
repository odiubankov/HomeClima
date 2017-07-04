import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 360
    height: 520
    title: qsTr("Home Clima")


    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("SplashScreen.qml")

        function showConnectionScreen(){
            stackView.pop();
//            stackView.push(Qt.resolvedUrl("ConnectionAddress.qml"));
            stackView.push(Qt.resolvedUrl("StartServiceTmp.qml"))
        }
    }

    Timer {
        repeat: false
        interval: 1000
        running: true
        onTriggered: stackView.showConnectionScreen()
    }
}
