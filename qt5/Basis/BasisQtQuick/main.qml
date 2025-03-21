/* -------------------------------------------------------------------
 *  @doc
 *  @notice Template file qtquickapplication/empty/main.qml.tpl
 *
 *  @copyright Arboreus (http://arboreus.systems)
 *  @author Alexandr Kirilov (http://alexandr.kirilov.me)
 *  @created 02/08/2019 at 15:43:59
 * */// --------------------------------------------------------------

// System includes
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

// Application includes


// Application window
Window {

	visible: true;
	width: 640;
	height: 480;
	title: qsTr("Hello World");

	CustomComponent {

		height: 100;
		pLeft: [

			Rectangle {

				width: 50;
				height: 50;
				color: "red";
			},

			Rectangle {

				width: 50;
				height: 50;
				color: "red";
			}
		]
		pRight: [

			Rectangle {

				width: 50;
				height: 50;
				color: "green";
			},

			Rectangle {

				width: 50;
				height: 50;
				color: "green";
			}
		]
	}
}
