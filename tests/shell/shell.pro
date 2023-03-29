QT += network

include(../testssh.pri)
TARGET=shell
SOURCES=main.cpp shell.cpp ../remoteprocess/argumentscollector.cpp
HEADERS=shell.h ../remoteprocess/argumentscollector.h
