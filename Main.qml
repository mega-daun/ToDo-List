import QtQuick
import QtQuick.Controls

Window
{
    width: 960
    height: 480
    visible: true
    title: qsTr("Todo List")
    Rectangle
    {
        id: menuSide
        anchors.left: parent.left
        anchors.top: parent.top
        height: parent.height
        width: 10*(parent.width/100)
        color: "#a7abaf"
        Button
        {
            id: addButton
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: parent.width/2-width/2
            anchors.topMargin: anchors.leftMargin
            width: parent.height/10
            height: width
            IconImage
            {
                anchors.fill: parent
                source: "icons/4115237-add-plus_114047.ico"
            }
            onPressed:
            {
                addPopup.visible = true;
            }
        }
        Button
        {
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: parent.width/2-width/2
            anchors.bottomMargin: anchors.leftMargin
            width: parent.height/10
            height: width
            IconImage
            {
                anchors.fill: parent
                source: "icons/settings-cogwheel-button_icon-icons.com_72559.ico"
            }
            onPressed:
            {
                if (!settingsSide.visible)
                {
                    addButton.enabled = false;
                    tasksSide.visible = false;
                    settingsSide.visible = true;
                }else
                {
                    addButton.enabled = true;
                    tasksSide.visible = true;
                    settingsSide.visible = false;
                }
            }
        }
    }
    Rectangle
    {
        id: tasksSide
        visible: true
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: menuSide.width
        width: parent.width - menuSide.width
        height: parent.height
        Text
        {
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.centerIn: parent
            text: qsTr("Tasks")
        }
    }
    Rectangle
    {
        id: settingsSide
        visible: false
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: menuSide.width
        width: parent.width - menuSide.width
        height: parent.height
        Text
        {
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.centerIn: parent
            text: qsTr("Settings")
        }
    }
    Popup
    {
        id: addPopup

    }
}
