#ifndef JCONNECTION_H
#define JCONNECTION_H

#include <gloox/client.h>
#include <gloox/presencehandler.h>
#include <gloox/disco.h>

#include "jconnectiontcpbase.h"
#include "../../jprotocol.h"

namespace Jabber
{
	using namespace gloox;

	class JAccount;
	struct JConnectionPrivate;

	class JConnection : public QObject, PresenceHandler
	{
		Q_OBJECT
		public:
			JConnection(JAccount *account);
			~JConnection();
			void loadSettings();
			void setConnectionPresence(Presence::PresenceType presence);
			Client *client();
		protected:
			void handlePresence(const Presence &presence);
		private:
			QScopedPointer<JConnectionPrivate> p;
	};
}

#endif // JCONNECTION_H
