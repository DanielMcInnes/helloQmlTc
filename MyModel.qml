import QtQuick
import MyModule

Rectangle {
	width: 100
	height: 100
	color: "pink"

	Component.onCompleted: console.log("MyModel completed")
}
