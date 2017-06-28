import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

import HomeClima 0.0

Pane {
    id: loginPane

    TextField {
        id: ipTextField
        placeholderText: qsTr("IP")
        anchors.margins: 20
        anchors.horizontalCenter: parent.horizontalCenter
    }

    TextField {
        id: portTextField
        placeholderText: qsTr("Port")
        anchors.margins: 20
        anchors.top: ipTextField.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: connectButton
        text: qsTr("Connect")
        Layout.fillWidth: true
        anchors.margins: 20
        anchors.top: portTextField.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: loginPane.validateInputAndConnect()
    }

    InputValidator{
        id: inputValidator;
    }

    function validateInputAndConnect(){
        if (loginPane.isInputValid()){

        }
    }

    function isInputValid(){
        if (!inputValidator.isValidIP(ipTextField.text)){
            invalidInputDialog.errorLabelTop.text = qsTr("Please enter correct IP address");
            invalidInputDialog.invalidTextField = ipTextField;
            invalidInputDialog.open();
            return false;
        }

        if (!inputValidator.isValidPort(portTextField.text)){
            invalidInputDialog.errorLabelTop.text = qsTr("Please enter correct port");
            invalidInputDialog.invalidTextField = portTextField;
            invalidInputDialog.open();
            return false;
        }

        return true;
    }

    InvalidInputDialog{
        id: invalidInputDialog
    }
}
