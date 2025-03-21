// ----------------------------------------------------------
/*!
	\headerfile AConfig
	\title
	\brief Template file wizard/classes/cpp/file.h

	\list
	\li @notice Template file classes/file.h
	\li @copyright Arboreus (http://arboreus.systems)
	\li @author Alexandr Kirilov (http://alexandr.kirilov.me)
	\li @created 28/01/2023 at 16:47:05
	\endlist
*/
// ----------------------------------------------------------

#ifndef ACONFIG_H
#define ACONFIG_H

// System includes

// Precompiled includes
#include <aconfigpch.h>

// Application includes
#include <aloggerglobal.h>
#include <astorekitconfiginterface.h>

// Constants and definitions

// Namespace

// Class definitions
class AConfig :
	public QObject,
	public AStorekitConfigInterface {

	Q_OBJECT
	Q_INTERFACES(
		AStorekitConfigInterface
	)

	public:

		explicit AConfig(QObject* parent = nullptr);
		virtual ~AConfig(void);

		void mInit(void);


	// ----------------------------------
	// AStorekitConfigInterface

	public:

		void mStorekitConfigInterface_ProducIDs(QString inID);
};

#endif // ACONFIG_H
