cc_library(
    name = "freeglut",
    hdrs = glob([
        "incl/config.h",
        "incl/GL/*.h",
    ]),
    srcs = glob(
        [
            "freeglut/*.h",
            "freeglut/*.c",
        ],
    ),
    copts = [
        "-Wall",
        "-Iincl/",
        "-DHAVE_CONFIG_H=1",
    ],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "pigale",
    hdrs = [
        "incl/config.h",
        "incl/Pigale.h",
    ],
    srcs = glob(
        [
            "incl/TAXI/*.h",
            "tgraph/*.cpp",
        ],
    ),
    copts = [
        "-std=c++11",
        "-Wall",
        "-Iincl/",
        "-DHAVE_CONFIG_H=1",
    ],
    visibility = ["//visibility:public"],
)

load("//tools:qt.bzl", "cc_qt_library")
cc_qt_library(
    name = "pigale_qt",
    hdrs = glob([
        "incl/QT/*.h",
        "qt/*.h",
        "qt/icones/*.xpm"
    ]),
    srcs = glob(
        [
            "qt/*.cpp",
        ],
        exclude = [
            "qt/main.cpp",
        ]
    ),
    deps = [
        ":freeglut",
        ":pigale",
    ],
    copts = [
        "-std=c++11",
        "-Wall",
        "-Iincl/",
        "-I/usr/include/qt5/",
        "-I/usr/include/qt5/QtCore/",
        "-I/usr/include/qt5/QtGui/",
        "-I/usr/include/qt5/QtNetwork/",
        "-I/usr/include/qt5/QtOpenGL/",
        "-I/usr/include/qt5/QtPrintSupport/",
        "-I/usr/include/qt5/QtSvg/",
        "-I/usr/include/qt5/QtWidgets/",
        "-I/usr/include/qt5/QtXml/",
    ],
    linkopts = [
        "-lX11",
        "-lGL",
        "-lglut",
        "-lQt5Core",
        "-lQt5Gui",
        "-lQt5Network",
        "-lQt5OpenGL",
        "-lQt5PrintSupport",
        "-lQt5Svg",
        "-lQt5Widgets",
        "-lQt5Xml",
    ],
    visibility = ["//visibility:public"],
)

cc_binary(
    name = "tgraph_test",
    srcs = [ "UsingTgraph/main.cpp" ],
    deps = [ ":pigale" ],
    copts = [
        "-std=c++11",
        "-Wall",
        "-Iincl/",
    ],
    visibility = ["//visibility:public"],
)

cc_binary(
    name = "qt_applet",
    srcs = [ "qt/main.cpp" ],
    deps = [
        ":pigale_qt",
    ],
    copts = [
        "-std=c++11",
        "-Wall",
        "-Iincl/",
        "-I/usr/include/qt5/",
        "-I/usr/include/qt5/QtCore/",
        "-I/usr/include/qt5/QtGui/",
        "-I/usr/include/qt5/QtNetwork/",
        "-I/usr/include/qt5/QtOpenGL/",
        "-I/usr/include/qt5/QtPrintSupport/",
        "-I/usr/include/qt5/QtSvg/",
        "-I/usr/include/qt5/QtWidgets/",
        "-I/usr/include/qt5/QtXml/",
    ],
    linkopts = [
        "-lX11",
        "-lGL",
        "-lglut",
        "-lQt5Core",
        "-lQt5Gui",
        "-lQt5Network",
        "-lQt5OpenGL",
        "-lQt5PrintSupport",
        "-lQt5Svg",
        "-lQt5Widgets",
        "-lQt5Xml",
    ],
    visibility = ["//visibility:public"],
)
