import QtQuick
import MyModule

Window {
	width: 640
	height: 480
	visible: true
	title: qsTr("Hello qmltc")

	LongSwitchCaseStatement {
		anchors.fill: parent
	}
}
