cmake_minimum_required(VERSION 3.16)

project(ToDoList2 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Quick)


qt_add_executable(appToDoList2
    main.cpp
)

qt_add_qml_module(appToDoList2
    URI ToDoList2
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES icons.qrc
    RESOURCES
    icons/4115237-add-plus_114047.ico
    icons/settings-cogwheel-button_icon-icons.com_72559.ico
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appToDoList2 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appToDoList2
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appToDoList2
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appToDoList2
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
