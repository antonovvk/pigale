cc_library(
    name = "moc_lib",
    hdrs = [
        "src/tools/moc/keywords.cpp",
        "src/tools/moc/ppkeywords.cpp",
    ],
    srcs = glob(
        [
            "src/tools/moc/*.h",
            "src/tools/moc/*.cpp",
        ],
        exclude = [
            "src/tools/moc/keywords.cpp",
            "src/tools/moc/ppkeywords.cpp",
            "src/tools/moc/mwerks_mac.cpp",
            "src/tools/moc/main.cpp",
        ],
    ),
    copts = [
        "-std=c++11",
        "-Wall",
        "-Isrc/tools/moc/",
        "-I/usr/include/qt5/",
        "-I/usr/include/qt5/QtCore/",
        "-I/usr/include/qt5/QtCore/5.6.2/QtCore/",
        "-fPIC",
    ],
    linkopts = [
        "-lQt5Core",
    ],
    visibility = ["//visibility:public"],
)

cc_binary(
    name = "moc",
    srcs = [ "src/tools/moc/main.cpp" ],
    deps = [ ":moc_lib" ],
    copts = [
        "-std=c++11",
        "-Wall",
        "-Isrc/tools/moc/",
        "-I/usr/include/qt5/",
        "-I/usr/include/qt5/QtCore/",
        "-I/usr/include/qt5/QtCore/5.6.2/QtCore/",
        "-fPIC",
    ],
    visibility = ["//visibility:public"],
)
