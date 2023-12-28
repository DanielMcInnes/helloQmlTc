import QtQuick
import MyModule 1.0

Window {
	width: 640
	height: 480
	visible: true
	title: qsTr("Hello qmltc")

	MyRectangle {}

	Loader {
		anchors.bottom: parent.bottom
		source: "file:///home/dmcinnes/git/build-helloQmlTc-Desktop_Qt_6_5_2_GCC_64bit-Debug/MyModule/MyRectangle.qml"
	}
}
