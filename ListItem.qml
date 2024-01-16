import QtQuick
import MyModule

Item {
	id: root

	property alias content: content

	Row {
		id: content

		anchors {
			right: parent.right
			verticalCenter: parent.verticalCenter
		}
		spacing: 20
		width: 300
	}

}
