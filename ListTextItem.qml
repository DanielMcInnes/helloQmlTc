import QtQuick
import MyModule

ListItem {
	id: root

	property var value
	property alias secondaryText: secondaryLabel.text
	property alias secondaryLabel: secondaryLabel

	content.children: [
		Label {
			id: secondaryLabel

			anchors.verticalCenter: parent.verticalCenter
			width: 300
			visible: root.secondaryText.length > 0
			text: value === undefined ? "" : value
			font.pixelSize: 30
			color: "black"
			wrapMode: Text.Wrap
			horizontalAlignment: Text.AlignRight
			verticalAlignment: Text.AlignVCenter
		}
	]
}
