cmake_minimum_required(VERSION 3.16)

project(task3 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find necessary Qt modules
find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2)

# Find X11 for keyboard control
find_package(X11 REQUIRED)
qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(apptask3
    main.cpp
    led_controller.cpp
)

qt_add_qml_module(apptask3
    URI task3
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES dimmed_led.png lit_led.png
        SOURCES led_controller.cpp
        SOURCES led_controller.h
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(apptask3 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.apptask3
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(apptask3
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS apptask3
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
# Link the required libraries
target_link_libraries(apptask3
    PRIVATE Qt6::Quick
    PRIVATE Qt6::QuickControls2
    PRIVATE X11  # Corrected X11 linking
)
