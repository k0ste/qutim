/****************************************************************************
 *  event_test.cpp
 *
 *  Copyright (c) 2010 by Nigmatullin Ruslan <euroelessar@gmail.com>
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

#include "event_test_p.h"
#include <QSettings>
#include <QStringList>
#include <QTime>
#include <QDebug>
#include <QCoreApplication>

namespace qutim_sdk_0_3
{
	void EventTest::testE(Event &event)
	{
		Q_UNUSED(event);
		QSettings settings("/home/elessar/.config/qutim/qutim.EuroElessar/ICQ.3485140/accountsettings.ini");
		Q_UNUSED(settings.allKeys());
	}

	bool EventTest::eventFilter(QObject *, QEvent *ev)
	{
		if(ev->type() == QEvent::User)
		{
			QSettings settings("/home/elessar/.config/qutim/qutim.EuroElessar/ICQ.3485140/accountsettings.ini");
			Q_UNUSED(settings.allKeys());
			return true;
		}
		return false;
	}

	void EventTest::test()
	{
		QSettings settings("/home/elessar/.config/qutim/qutim.EuroElessar/ICQ.3485140/accountsettings.ini");
		Q_UNUSED(settings.allKeys());
	}

	void testEventSystemSpeed()
	{
		const int NUM = 50000;
		QScopedPointer<EventTest> test(new EventTest(0));
		test->test();
		QObject::connect(test.data(), SIGNAL(signal()), test.data(), SLOT(test()));
//		EventManager::registerEventHandler("TestSystem", test.data(), &EventTest::testE);
		Event event("TestSystem");
		QutimEvent qevent;
		qApp->installEventFilter(test.data());
		qDebug("There are %d calls of method:", NUM);
		QTime t;
		{
			t.start();
			for(volatile int i = 0; i < NUM; i++)
				test->test();
			qDebug() << "by direct access" << t.elapsed() << "ms";
		}
		{
			t.start();
			for(volatile int i = 0; i < NUM; i++)
				test->signal();
			qDebug() << "by signal" << t.elapsed() << "ms";
		}
		{
			t.start();
			for(volatile int i = 0; i < NUM; i++)
				event.send();
			qDebug() << "by event" << t.elapsed() << "ms";
		}
		{
			t.start();
			for(volatile int i = 0; i < NUM; i++)
				QCoreApplication::sendEvent(qApp, &qevent);
			qDebug() << "by qevent" << t.elapsed() << "ms";
		}
		qApp->removeEventFilter(test.data());
	}
}

