// ----------------------------------------------------------
/*!
	\class ALogger
	\title
	\brief Template file classes/cpp/file.cpp

	\list
	\li @notice Template file classes/file.h
	\li @copyright Arboreus (http://arboreus.systems)
	\li @author Alexandr Kirilov (http://alexandr.kirilov.me)
	\li @created 02/08/2020 at 14:15:50
	\endlist
*/
// ----------------------------------------------------------

// Class header
#include "alogger.h"


// -----------
/*!
	\fn

	Doc.
*/

ALogger::ALogger(void) {

}


// -----------
/*!
	\fn

	Doc.
*/

ALogger::~ALogger(void) {

}


// -----------
/*!
	\fn

	Doc.
*/

long long ALogger::mCurrentTimeMicroseconds(void) {

	return static_cast<long long>(chrono::duration_cast<chrono::microseconds>(
		chrono::system_clock::now().time_since_epoch()
	).count());
}


// -----------
/*!
	\fn

	Doc.
*/

long long ALogger::mCurrentTimeMilliseconds(void) {

	return static_cast<long long>(chrono::duration_cast<chrono::milliseconds>(
		chrono::system_clock::now().time_since_epoch()
	).count());
}


// -----------
/*!
	\fn

	Doc.
*/

long long ALogger::mCurrentTimeSeconds(void) {

	return static_cast<long long>(chrono::duration_cast<chrono::seconds>(
		chrono::system_clock::now().time_since_epoch()
	).count());
}
