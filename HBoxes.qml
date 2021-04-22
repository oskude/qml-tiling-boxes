import QtQuick

Item {
	anchors.fill: parent
	Item {
		id: leftBox
		anchors {
			top: parent.top
			left: parent.left
			right: handle.horizontalCenter
			bottom: parent.bottom
		}
		Loader {
			anchors.fill: parent
			source: "BoxLoader.qml"
		}
	}
	Item {
		id: rightBox
		anchors {
			top: parent.top
			left: handle.horizontalCenter
			right: parent.right
			bottom: parent.bottom
		}
		Loader {
			anchors.fill: parent
			source: "BoxLoader.qml"
		}
	}
	Rectangle {
		id: handle
		anchors.top: parent.top
		anchors.bottom: parent.bottom
		width: 4
		color: "orange"
		MouseArea {
			anchors.fill: parent
			drag.target: parent
			drag.axis: Drag.XAxis
			cursorShape: Qt.SplitHCursor
		}
	}
	Component.onCompleted: handle.x = Math.round(parent.width/2)
}
