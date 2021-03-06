#-------------------------------------------------
#
# Project created by QtCreator 2016-03-21T11:47:37
#
#-------------------------------------------------

QT += core gui opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets 

TARGET = Asteroids3D
DESTDIR = ..
OBJECTS_DIR = .obj
MOC_DIR = .moc
RCC_DIR = .rcc
UI_DIR = .ui

CONFIG += c++11 debug

TEMPLATE = app

BULLETPATH += $$system(ls -d ../bullet*)
LIBS += -lGL -lGLU -L$$BULLETPATH/bin

include(bulletLibs.pro)

message(The BULLETPATH = ($$BULLETDEPEND))
              
INCLUDEPATH += $$system(find . -type d)
INCLUDEPATH += $$BULLETPATH $$BULLETPATH/src

DEPENDPATH += BULLETDEPEND

include(Sources.pro)

RESOURCES = Asteroids.qrc

QMAKE_CXXFLAGS += -O2
