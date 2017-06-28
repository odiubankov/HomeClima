import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

Dialog {
    x: (parent.width - width) / 2
    y: (parent.height - height) / 2
    parent: ApplicationWindow.overlay
    focus: true
    modal: true
    standardButtons: Dialog.Ok
    property alias errorLabelTop: errorLabel

    ColumnLayout {
        spacing: 20
        anchors.fill: parent
        Label {
            id: errorLabel;
            elide: Label.ElideRight
            Layout.fillWidth: true
        }
    }

    property TextField invalidTextField

    onAccepted: invalidTextField.forceActiveFocus()
}
