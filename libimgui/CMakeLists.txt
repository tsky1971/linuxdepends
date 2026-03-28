cmake_minimum_required(VERSION 3.16)
project(imgui_sdl3_vulkan VERSION 1.0)

# Pakete finden
find_package(SDL3 REQUIRED)
find_package(Vulkan REQUIRED)

set(IMGUI_DIR "${CMAKE_CURRENT_SOURCE_DIR}/imgui")

# ImGui Kern-Dateien
set(IMGUI_SOURCES
    ${IMGUI_DIR}/imgui.cpp
    ${IMGUI_DIR}/imgui_demo.cpp
    ${IMGUI_DIR}/imgui_draw.cpp
    ${IMGUI_DIR}/imgui_tables.cpp
    ${IMGUI_DIR}/imgui_widgets.cpp
)

# ImGui Backends (SDL3 + Vulkan)
set(IMGUI_BACKENDS
    ${IMGUI_DIR}/backends/imgui_impl_sdl3.cpp
    ${IMGUI_DIR}/backends/imgui_impl_vulkan.cpp
)

# Library erstellen
add_library(imgui_lib STATIC ${IMGUI_SOURCES} ${IMGUI_BACKENDS})

# Include-Pfade setzen
target_include_directories(imgui_lib PUBLIC 
    $<BUILD_INTERFACE:${IMGUI_DIR}>
    $<BUILD_INTERFACE:${IMGUI_DIR}/backends>
    $<INSTALL_INTERFACE:include/imgui>
    ${Vulkan_INCLUDE_DIRS}
)

# Verknüpfung
target_link_libraries(imgui_lib PUBLIC SDL3::SDL3 Vulkan::Vulkan)

# ---------------------------------------------------------
# INSTALL TARGETS (für /usr/local/)
# ---------------------------------------------------------

include(GNUInstallDirs)

# 1. Die Library selbst (libimgui_lib.a) nach /usr/local/lib/
install(TARGETS imgui_lib
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

# 2. Die Header-Dateien nach /usr/local/include/imgui/
# Wir kopieren die Core-Header und die spezifischen Backends
install(FILES 
    ${IMGUI_DIR}/imgui.h 
    ${IMGUI_DIR}/imconfig.h 
    ${IMGUI_DIR}/imgui_internal.h 
    ${IMGUI_DIR}/imstb_rectpack.h 
    ${IMGUI_DIR}/imstb_textedit.h 
    ${IMGUI_DIR}/imstb_truetype.h 
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/imgui
)

install(FILES 
    ${IMGUI_DIR}/backends/imgui_impl_sdl3.h 
    ${IMGUI_DIR}/backends/imgui_impl_vulkan.h
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/imgui
)
