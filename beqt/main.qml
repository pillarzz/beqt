import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Editor")
    width: 1024
    height: 768
    visible: true


    MainForm {
        id: mainForm1
        anchors.fill: parent
        TabView{
            anchors.fill: parent
            Tab{
                title: "Home"
            }
            Tab{
                title: "Markers"
            }
            Tab{
                title: "Illumination"
            }
        }
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
