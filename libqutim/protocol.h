/****************************************************************************
 *  protocol.h
 *
 *  Copyright (c) 2009 by Nigmatullin Ruslan <euroelessar@gmail.com>
 *
 ***************************************************************************
 *                                                                         *
 *   This library is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************
*****************************************************************************/

#ifndef PROTOCOL_H
#define PROTOCOL_H

#include "configbase.h"

class QWizardPage;

namespace qutim_sdk_0_3
{
	class Contact;
	class Account;
	struct ProtocolPrivate;

	class LIBQUTIM_EXPORT AccountCreationWizard : public QObject
	{
		Q_OBJECT
	public:
		AccountCreationWizard(Protocol *protocol);
		virtual ~AccountCreationWizard();
		virtual QList<QWizardPage *> createPages(QWidget *parent) = 0;
	public slots:
		virtual void registrationFinished() = 0;
	signals:
		void registrationCanceled();
	};

	class LIBQUTIM_EXPORT Protocol : public QObject
	{
		Q_OBJECT
		Q_PROPERTY(QString id READ id)
	public:
		Protocol();
		virtual ~Protocol();
		Config config();
		ConfigGroup config(const QString &group);
		QString id() const;
		virtual AccountCreationWizard *accountCreationWizard() = 0;
	private:
		virtual void loadAccounts() = 0;
		friend class ModuleManager;
		QScopedPointer<ProtocolPrivate> p;
	};
}

#endif // PROTOCOL_H
