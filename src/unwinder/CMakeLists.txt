include_directories(BEFORE ${VM_DIR})
include_directories(BEFORE ${VM_DIR}/${ARCH_SOURCES_DIR})
include_directories(BEFORE ${CMAKE_CURRENT_SOURCE_DIR})
include_directories(BEFORE ${CLR_DIR}/src/unwinder)
include_directories(${CLR_DIR}/src/debug/ee)
include_directories(${CLR_DIR}/src/gc)
include_directories(${CLR_DIR}/src/gcdump)
include_directories(${CLR_DIR}/src/debug/daccess)

set(UNWINDER_SOURCES
    unwinder.cpp
)

if(CLR_CMAKE_PLATFORM_ARCH_AMD64)
    include_directories(amd64)
    
    list(APPEND UNWINDER_SOURCES
        amd64/unwinder_amd64.cpp
    )
elseif(CLR_CMAKE_PLATFORM_ARCH_I386)
# nothing needed for x86
elseif(CLR_CMAKE_PLATFORM_ARCH_ARM)
    include_directories(arm)
    
    list(APPEND UNWINDER_SOURCES
        arm/unwinder_arm.cpp
    )
elseif(CLR_CMAKE_PLATFORM_ARCH_ARM64)
    include_directories(arm64)
    
    list(APPEND UNWINDER_SOURCES
        arm64/unwinder_arm64.cpp
    )
else()
  clr_unknown_arch()
endif()

convert_to_absolute_path(UNWINDER_SOURCES ${UNWINDER_SOURCES})

if(CLR_CMAKE_PLATFORM_UNIX)
    add_compile_options(-fPIC)
endif(CLR_CMAKE_PLATFORM_UNIX)

if(CLR_CMAKE_PLATFORM_UNIX)    
    add_subdirectory(wks)
endif(CLR_CMAKE_PLATFORM_UNIX)

add_subdirectory(dac)
