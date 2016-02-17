#-------------------------------------------------
#
# Project created by QtCreator 2016-02-17T11:48:32
#
#-------------------------------------------------

QT       -= gui

TARGET = PDFFactory
TEMPLATE = lib
CONFIG += plugin

DEFINES += PDFFACTORY_LIBRARY

SOURCES += pdffactory.cpp \
    pdfserializer.cpp

HEADERS += pdffactory.h\
        pdffactory_global.h \
    pdfserializer.h

DESTDIR = ../EditorFramework/plugins

unix {
    target.path = /usr/lib
    INSTALLS += target
    headers.files = $$HEADERS
    headers.path = /usr/include/PDFFactoryPlugin
    INSTALLS += headers
}

DISTFILES += \
    pdffactoryplugin.json \
    pdffactoryplugin.json

