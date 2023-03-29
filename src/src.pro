QT += core gui network
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11
TEMPLATE = lib
DEFINES += QSSH_LIBRARY

DESTDIR   = $$PWD/../libs

SOURCES = *.cpp
HEADERS = $$PWD/../include/*.h
INCLUDEPATH += $$PWD/../include

FORMS = $$PWD/sshkeycreationdialog.ui
include($$PWD/../botan/botan.pri)

TARGET  = $$qtLibraryTarget(QSsh)
