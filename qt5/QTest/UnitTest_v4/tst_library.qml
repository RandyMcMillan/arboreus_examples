// ----------------------------------------------------------
/*!
	\qmltype
	\brief

	\list
	\li @notice Template file classes/file.h
	\li @copyright Arboreus (http://arboreus.systems)
	\li @author Alexandr Kirilov (http://alexandr.kirilov.me)
	\li @created 08/09/2020 at 21:04:19
	\endlist
*/
// ----------------------------------------------------------

// System includes
import QtQuick 2.15
import QtTest 1.15

// Application includes


// Component
TestCase {

	name: "LibraryTest";

	function test_math() {
		compare(2 + 2, 4, "2 + 2 = 4");
	}

	function test_fail() {
		compare(2 + 2, 5, "2 + 2 = 5")
	}
}
