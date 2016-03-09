#-------------------------------------------------
#
# Project created by QtCreator 2016-03-04T17:11:37
#
#-------------------------------------------------

QT       += widgets

QT       -= gui

TARGET = ThemeImplementation2
TEMPLATE = lib
CONFIG += plugin

DEFINES += THEMEIMPLEMENTATION2_LIBRARY

SOURCES += themeimplementation2.cpp

HEADERS += themeimplementation2.h\
        themeimplementation2_global.h

DESTDIR = ../EditorFramework/plugins

unix {
    target.path = /usr/lib
    INSTALLS += target
    headers.files = $$HEADERS
    headers.path = /usr/include/TestPlugin
    INSTALLS += headers
}

DISTFILES += \
    themeimplementation2plugin.json

unix|win32: LIBS += -lEditorFrameworkInterfaces
