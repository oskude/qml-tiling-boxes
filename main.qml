import QtQuick
import QtQuick.Window

Window {
	width: 640
	height: 480
	visible: true
	color: "dimgray"
	Loader {
		anchors.fill: parent
		source: "BoxLoader.qml"
	}
}
