QT += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

BUILD_OUTPUT_PATH=$$PWD/../
DESTDIR   = $$BUILD_OUTPUT_PATH/bin

INCLUDEPATH += $$PWD/../include
CONFIG   += console
CONFIG   -= app_bundle
TEMPLATE = app

CONFIG += c++11

unix:LIBS += -L$${QSSH_ROOT}/lib -lQSsh

win32:CONFIG(release, debug|release): LIBS += -L$$BUILD_OUTPUT_PATH/libs -lQSsh
else:win32:CONFIG(debug, debug|release): LIBS += -L$$BUILD_OUTPUT_PATH/libs -lQSshd
