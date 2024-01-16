import QtQuick
import QtQuick.Templates as CT

CT.Button {
	width: 100
	height: width
	onClicked: console.log("clicked")
	icon.color: "green"

	background: Rectangle {
		color: "red"
	}
}
