import QtQuick

Item {
	id: root
	clip: true
	Column {
		anchors.centerIn: parent
		Text {
			text: "h-split"
			MouseArea {
				anchors.fill: parent
				onClicked: root.parent.source = "HBoxes.qml"
			}
		}
		Text {
			text: "v-split"
			MouseArea {
				anchors.fill: parent
				onClicked: root.parent.source = "VBoxes.qml"
			}
		}
	}
}
