import QtQuick

Item {
	anchors.fill: parent
	Item {
		id: topBox
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
			bottom: handle.verticalCenter
		}
		Loader {
			anchors.fill: parent
			source: "BoxLoader.qml"
		}
	}
	Item {
		id: bottomBox
		anchors {
			top: handle.verticalCenter
			left: parent.left
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
		anchors.left: parent.left
		anchors.right: parent.right
		height: 4
		color: "orange"
		MouseArea {
			anchors.fill: parent
			drag.target: parent
			drag.axis: Drag.YAxis
			cursorShape: Qt.SplitVCursor
		}
	}
	Component.onCompleted: handle.y = Math.round(parent.height/2)
}
