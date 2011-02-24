#ifndef RESOURCEICONLOADER_H
#define RESOURCEICONLOADER_H
#include <libqutim/iconloader.h>
#include <QStringList>

namespace Core
{
using namespace qutim_sdk_0_3;

class ResourceIconLoader : public IconLoader
{
public:
	ResourceIconLoader();
	virtual QIcon loadIcon(const QString &name);
	virtual QMovie *loadMovie(const QString &name);
	virtual QString iconPath(const QString &name, uint iconSize);
	virtual QString moviePath(const QString &name, uint iconSize);
private:
	QStringList m_icons;
};

}

#endif // RESOURCEICONLOADER_H
