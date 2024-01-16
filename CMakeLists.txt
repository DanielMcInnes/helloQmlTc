cmake_minimum_required(VERSION 3.16)
project(untitled VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5.2 COMPONENTS Core Quick Qml QuickControls2 REQUIRED)
#qt_policy(SET QTP0001 NEW)

set (QML_MODULE_SINGLETON_SOURCES # All qml singletons have to be added here
    CommonWords.qml
)
set_source_files_properties( ${QML_MODULE_SINGLETON_SOURCES} PROPERTIES QT_QML_SINGLETON_TYPE TRUE )

qt_add_qml_module(MyModule
    URI MyModule
    VERSION 1.0
    STATIC
    OUTPUT_DIRECTORY MyModule
    QML_FILES
    ${QML_MODULE_SINGLETON_SOURCES}
        Label.qml
        ListItem.qml
        ListTextItem.qml
        LongSwitchCaseStatement.qml
    DEPENDENCIES QtCore
    IMPORT_PATH ${CMAKE_CURRENT_BINARY_DIR}
)
target_link_libraries(MyModule PRIVATE Qt6::Core Qt6::Quick Qt6::QuickPrivate Qt6::Qml Qt6::QuickControls2)

qt_add_executable(appuntitled
    main.cpp
)

qt_add_qml_module(appuntitled
    URI untitled
    VERSION 1.0
    QML_FILES main.qml
)
cmake_policy(SET CMP0001 NEW)

set_target_properties(appuntitled PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appuntitled
    PRIVATE Qt6::Core Qt6::Quick MyModuleplugin)

install(TARGETS appuntitled
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
