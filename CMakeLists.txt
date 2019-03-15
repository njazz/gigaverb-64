cmake_minimum_required (VERSION 2.8)
SET(CMAKE_CXX_FLAGS "-std=c++11")

project (gigaverb_64)

include_directories(./src)
include_directories(./src/extra)

if(APPLE)
add_definitions(-DMAC_VERSION)
endif()

if (WIN32)
add_definitions(-DWIN_VERSION)
add_definitions(-DNOMINMAX)
add_definitions(-DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=TRUE)
SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /EHsc")
SET (LINK_FLAGS "${LINK_FLAGS} -shared --enable-auto-import")
endif()

include_directories(submodules/max-sdk/source/c74support/max-includes)
include_directories(submodules/max-sdk/source/c74support/msp-includes)

set (CMAKE_OSX_ARCHITECTURES "x86_64" "i386")

if (WIN32)
    target_link_libraries(py_shared "-FORCE:UNRESOLVED")
endif()

target_link_libraries(py_shared ${PYTHON_LIBRARIES})

macro(gigaverb_external name_ext_)
    set(name_ ${name_ext_})
    set(obj_ "${name_ext_}")
    add_library(${name_} MODULE src/gverb~.c src/gverbdsp.c)
    set_property(TARGET ${name_} PROPERTY CXX_STANDARD 11)

    target_link_libraries(${name_} PRIVATE ${LIBS} "-undefined dynamic_lookup")
    set_target_properties(${name_} PROPERTIES PREFIX "")
    set_target_properties(${name_} PROPERTIES SUFFIX ".mxo")
    set_target_properties(${name_} PROPERTIES BUNDLE TRUE)
    set_target_properties(${name_} PROPERTIES BUNDLE_EXTENSION "mxo")

    install(TARGETS ${name_} DESTINATION ${PROJECT_SOURCE_DIR}/bin)

    set_target_properties(${name_} PROPERTIES OUTPUT_NAME ${obj_})
endmacro(gigaverb_external)

gigaverb_external("gigaverb~")

