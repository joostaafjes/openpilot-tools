######################################################################
# Automatically generated by qmake (3.0) Tue Oct 29 11:15:25 2019
######################################################################

TEMPLATE = app
TARGET = nui
INCLUDEPATH += .

# Input
SOURCES += main.cpp FileReader.cpp Unlogger.cpp FrameReader.cpp
HEADERS = FileReader.hpp Unlogger.hpp FrameReader.hpp

CONFIG += c++14
#CONFIG += debug

QT += widgets network core

BASEDIR = "../../"
PHONELIBS = $$BASEDIR"phonelibs"

INCLUDEPATH = $$PHONELIBS/capnp-cpp/include $$PHONELIBS/yaml-cpp/include

unix:!macx {
  LIBS += -L$$PHONELIBS/capnp-cpp/x64/lib -L$$PHONELIBS/yaml-cpp/x64/lib
}

macx: {
  LIBS += -L$$PHONELIBS/capnp-cpp/mac/lib -L$$PHONELIBS/yaml-cpp/mac/lib
}

LIBS += -lcapnp -lkj -lyaml-cpp

INCLUDEPATH += /usr/local/include
INCLUDEPATH += $$PHONELIBS/capnp-cpp/include $$BASEDIR $$BASEDIR/cereal/messaging $$PHONELIBS/yaml-cpp/include
LIBS += -L/usr/local/lib -lavformat -lavcodec -lavutil -lswscale
LIBS += -lzmq -lbz2 $$BASEDIR/cereal/libmessaging.a


