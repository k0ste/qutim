# #####################################################################
# Automatically generated by qmake (2.01a) ?? 21. ??? 23:41:14 2010
# #####################################################################
TEMPLATE = app
TARGET = qutim
DEPENDPATH += . \
    corelayers\accountcreator \
    corelayers\adiumchat \
    corelayers\adiumsrvicons \
    corelayers\authdialog \
    corelayers\configbackends \
    corelayers\contactinfo \
    corelayers\contactlist \
    corelayers\emoticonssettings \
    corelayers\filetransfer \
    corelayers\idledetector \
    corelayers\idlestatuschanger \
    corelayers\jsonhistory \
    corelayers\kopeteemoticonsbackend \
    corelayers\localization \
    corelayers\NoCryptoService \
    corelayers\password \
    corelayers\qsoundbackend \
    corelayers\qticons \
    corelayers\servicechooser \
    corelayers\trayicon \
    corelayers\xsettingsdialog \
    corelayers\adiumchat\actions \
    corelayers\adiumchat\modifiers \
    corelayers\adiumchat\settings \
	corelayers\contactlist\simpletagseditor \
	symbian/mainwindow

INCLUDEPATH += . \
    .. \
    ../libqutim/
DEFINES += QUTIM_CORE
QT += webkit \
    script \
    network \
    xml
include(../3rdparty/q-xdg-build/q-xdg.pri)

# Input
HEADERS += modulemanagerimpl.h \
    profilecreationpage.h \
    profilecreationwizard.h \
    profiledialog.h \
    corelayers/accountcreator/accountcreator.h \
    corelayers/accountcreator/accountcreatorlist.h \
    corelayers/accountcreator/accountcreatorprotocols.h \
    corelayers/accountcreator/accountcreatorwizard.h \
    corelayers/adiumchat/chatlayerimpl.h \
    corelayers/adiumchat/chatsessionimpl.h \
    corelayers/adiumchat/chatsessionitemdelegate.h \
    corelayers/adiumchat/chatsessionmodel.h \
    corelayers/adiumchat/chatstyle.h \
    corelayers/adiumchat/chatstyleoutput.h \
    corelayers/adiumchat/chatwidget.h \
    corelayers/adiumchat/conferencetabcompletion.h \
    corelayers/adiumchat/messagemodifier.h \
    corelayers/adiumsrvicons/serviceicons.h \
    corelayers/authdialog/authdialogimpl.h \
    corelayers/authdialog/authdialogimpl_p.h \
    corelayers/configbackends/jsonconfigbackend.h \
    corelayers/configbackends/plistconfigbackend.h \
    corelayers/contactinfo/contactinfo.h \
    corelayers/emoticonssettings/emoticonsselector.h \
    corelayers/emoticonssettings/emoticonssettings.h \
    corelayers/filetransfer/filetransferdialog.h \
    corelayers/filetransfer/simplefiletransfer.h \
    corelayers/idlestatuschanger/idlestatuschanger.h \
    corelayers/idlestatuschanger/idlestatuswidget.h \
    corelayers/jsonhistory/historywindow.h \
    corelayers/jsonhistory/jsonhistory.h \
    corelayers/kopeteemoticonsbackend/kopeteemoticonsbackend.h \
    corelayers/kopeteemoticonsbackend/kopeteemoticonsprovider.h \
    corelayers/localization/localizationmodule.h \
    corelayers/localization/localizationsettings.h \
    corelayers/NoCryptoService/nocryptoservice.h \
    corelayers/password/simplepassworddialog.h \
    corelayers/password/simplepasswordwidget.h \ # corelayers/qsoundbackend/qsoundbackend.h \
    corelayers/qticons/iconsloaderimpl.h \
    corelayers/servicechooser/protocolchooserwidget.h \
    corelayers/servicechooser/servicechooser.h \
    corelayers/servicechooser/servicechooserwidget.h \
    corelayers/servicechooser/servicedelegate.h \
    corelayers/servicechooser/serviceitem.h \
    corelayers/adiumchat/actions/chatemoticonswidget.h \
    corelayers/adiumchat/modifiers/timemodifier.h \
    corelayers/adiumchat/settings/chatappearance.h \
    corelayers/adiumchat/settings/chatsettings.h \
    corelayers/adiumchat/settings/chatvariable.h \
	symbian/contactlist/simplecontactlist.h \
	symbian/contactlist/simplecontactlistdelegate.h \
	symbian/contactlist/simplecontactlistitem.h \
	symbian/contactlist/simplecontactlistmodel.h \
	symbian/contactlist/simplecontactlistview.h \
    symbian/contactlist/simpletagseditor/simpletagseditor.h \
    symbian/mobilesettings/mobilesettingslayer.h \
    symbian/mobilesettings/mobilesettingsitem.h \
	symbian/mobilesettings/mobilesettingsdialog.h \
    symbian/mainwindow/s60mainwindow.h

FORMS += profilecreationpage.ui \
    profiledialog.ui \
    corelayers/accountcreator/accountcreatorlist.ui \
    corelayers/accountcreator/accountcreatorprotocols.ui \
    corelayers/adiumchat/chatwidget.ui \
    corelayers/authdialog/authdialog.ui \
    corelayers/contactinfo/userinformation.ui \
    corelayers/emoticonssettings/emoticonsselector.ui \
    corelayers/filetransfer/filetransferdialog.ui \
    corelayers/idlestatuschanger/idlestatuswidget.ui \
    corelayers/jsonhistory/historywindow.ui \
    corelayers/localization/localizationsettings.ui \
    corelayers/password/simplepasswordwidget.ui \
    corelayers/servicechooser/servicechooserwidget.ui \
    corelayers/adiumchat/settings/chatappearance.ui \
    symbian/contactlist/simpletagseditor/simpletagseditor.ui \
    symbian/mobilesettings/mobilesettingsdialog.ui \
	symbian/mainwindow/s60mainwindow.ui

SOURCES += modulemanagerimpl.cpp \
    profilecreationpage.cpp \
    profilecreationwizard.cpp \
    profiledialog.cpp \
    corelayers/accountcreator/accountcreator.cpp \
    corelayers/accountcreator/accountcreatorlist.cpp \
    corelayers/accountcreator/accountcreatorprotocols.cpp \
    corelayers/accountcreator/accountcreatorwizard.cpp \
    corelayers/adiumchat/chatlayerimpl.cpp \
    corelayers/adiumchat/chatsessionimpl.cpp \
    corelayers/adiumchat/chatsessionitemdelegate.cpp \
    corelayers/adiumchat/chatsessionmodel.cpp \
    corelayers/adiumchat/chatstyle.cpp \
    corelayers/adiumchat/chatstyleoutput.cpp \
    corelayers/adiumchat/chatwidget.cpp \
    corelayers/adiumchat/conferencetabcompletion.cpp \
    corelayers/adiumchat/messagemodifier.cpp \
    corelayers/adiumsrvicons/serviceicons.cpp \
    corelayers/authdialog/authdialogimpl.cpp \
    corelayers/configbackends/jsonconfigbackend.cpp \
    corelayers/configbackends/plistconfigbackend.cpp \
    corelayers/contactinfo/contactinfo.cpp \
    symbian/contactlist/simplecontactlist.cpp \
    symbian/contactlist/simplecontactlistdelegate.cpp \
    symbian/contactlist/simplecontactlistitem.cpp \
    symbian/contactlist/simplecontactlistmodel.cpp \
    symbian/contactlist/simplecontactlistview.cpp \
    corelayers/emoticonssettings/emoticonsselector.cpp \
    corelayers/emoticonssettings/emoticonssettings.cpp \
    corelayers/filetransfer/filetransferdialog.cpp \
    corelayers/filetransfer/simplefiletransfer.cpp \
    corelayers/idlestatuschanger/idlestatuschanger.cpp \
    corelayers/idlestatuschanger/idlestatuswidget.cpp \
    corelayers/jsonhistory/historywindow.cpp \
    corelayers/jsonhistory/jsonhistory.cpp \
    corelayers/kopeteemoticonsbackend/kopeteemoticonsbackend.cpp \
    corelayers/kopeteemoticonsbackend/kopeteemoticonsprovider.cpp \
    corelayers/localization/localizationmodule.cpp \
    corelayers/localization/localizationsettings.cpp \
    corelayers/NoCryptoService/nocryptoservice.cpp \
    corelayers/password/simplepassworddialog.cpp \
    corelayers/password/simplepasswordwidget.cpp \ # corelayers/qsoundbackend/qsoundbackend.cpp \
    corelayers/qticons/iconsloaderimpl.cpp \
    corelayers/servicechooser/protocolchooserwidget.cpp \
    corelayers/servicechooser/servicechooser.cpp \
    corelayers/servicechooser/servicechooserwidget.cpp \
    corelayers/servicechooser/servicedelegate.cpp \
    corelayers/servicechooser/serviceitem.cpp \
    corelayers/adiumchat/actions/chatemoticonswidget.cpp \
    corelayers/adiumchat/modifiers/timemodifier.cpp \
    corelayers/adiumchat/settings/chatappearance.cpp \
    corelayers/adiumchat/settings/chatsettings.cpp \
    corelayers/adiumchat/settings/chatvariable.cpp \
    symbian/contactlist/simpletagseditor/simpletagseditor.cpp \
	symbian/main.cpp \
    symbian/mobilesettings/mobilesettingslayer.cpp \
    symbian/mobilesettings/mobilesettingsitem.cpp \
    symbian/mobilesettings/mobilesettingsdialog.cpp \
	symbian/mainwindow/s60mainwindow.cpp

RESOURCES += ../qutim.qrc

symbian { 
    LIBS += -llibqutim
	TARGET.UID3 = 0xEF76E162
    TARGET.CAPABILITY = NetworkServices \
        ReadUserData \
        WriteUserData
    ICON = qutim_64.svg

	libqutim.sources = libqutim.dll
	libqutim.path = /sys/bin
	DEPLOYMENT += libqutim
}
