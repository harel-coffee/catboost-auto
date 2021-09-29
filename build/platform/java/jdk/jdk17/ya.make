
RESOURCES_LIBRARY()
INCLUDE(${ARCADIA_ROOT}/build/platform/java/jdk/resources.inc)

DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
    JDK17
    ${JDK17_DARWIN} FOR DARWIN
    ${JDK17_DARWIN_ARM64} FOR DARWIN-ARM64
    ${JDK17_LINUX} FOR LINUX
    ${JDK17_WINDOWS} FOR WIN32
)

IF(OS_DARWIN AND ARCH_ARM64)
    DECLARE_EXTERNAL_RESOURCE(WITH_JDK17 ${JDK17_DARWIN_ARM64})
ELSEIF(OS_DARWIN)
    DECLARE_EXTERNAL_RESOURCE(WITH_JDK17 ${JDK17_DARWIN})
ELSEIF(OS_LINUX)
    DECLARE_EXTERNAL_RESOURCE(WITH_JDK17 ${JDK17_LINUX})
ELSEIF(OS_WINDOWS)
    DECLARE_EXTERNAL_RESOURCE(WITH_JDK17 ${JDK17_WINDOWS})
ENDIF()

END()
