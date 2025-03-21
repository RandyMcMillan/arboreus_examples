// ----------------------------------------------------------
/*!
	\class AGlobal
	\title
	\brief Template file files/cppheader/file.h

	\list
	\li @notice Template file classes/file.h
	\li @copyright Arboreus (http://arboreus.systems)
	\li @author Alexandr Kirilov (http://alexandr.kirilov.me)
	\li @created 14/02/2020 at 21:07:47
	\endlist
*/
// ----------------------------------------------------------

// Class header
#include "aglobal.h"

using namespace std;


// -----------
/*!
	\fn

	Doc.
*/

AGlobal::AGlobal(void) {}


// -----------
/*!
	\fn

	Doc.
*/

AGlobal::~AGlobal(void) {}


// -----------
/*!
	\fn

	Doc.
*/

long long AGlobal::mCurrentTimeMicroseconds(void) {

	return static_cast<long long>(chrono::duration_cast<chrono::microseconds>(
		chrono::system_clock::now().time_since_epoch()
	).count());
}


// -----------
/*!
	\fn

	Doc.
*/

long long AGlobal::mCurrentTimeMilliseconds(void) {

	return static_cast<long long>(chrono::duration_cast<chrono::milliseconds>(
		chrono::system_clock::now().time_since_epoch()
	).count());
}


// -----------
/*!
	\fn

	Doc.
*/

long long AGlobal::mCurrentTimeSeconds(void) {

	return static_cast<long long>(chrono::duration_cast<chrono::seconds>(
		chrono::system_clock::now().time_since_epoch()
	).count());
}


// -----------
/*!
	\fn

	Doc.
*/

string AGlobal::mPwd(void) {

	char oBuffer[FILENAME_MAX];
	getcwd(oBuffer,FILENAME_MAX);
	string oDir(oBuffer);
	return oDir;
}
