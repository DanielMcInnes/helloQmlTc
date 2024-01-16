import QtQuick
import QtQuick.Templates as T
import MyModule

MyItem {
	property alias text: label.text

	width: 200
	height: width
	content.children: [
		T.Label {
			id: label

			width: 200
			height: width
			color: "red"
		}
	]
}
