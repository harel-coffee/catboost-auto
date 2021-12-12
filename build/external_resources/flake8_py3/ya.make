RESOURCES_LIBRARY()



IF (HOST_OS_DARWIN AND HOST_ARCH_ARM64 OR
    HOST_OS_DARWIN AND HOST_ARCH_X86_64 OR
    HOST_OS_LINUX AND HOST_ARCH_PPC64LE OR
    HOST_OS_LINUX AND HOST_ARCH_X86_64 OR
    HOST_OS_WINDOWS AND HOST_ARCH_X86_64)
ELSE()
    MESSAGE(FATAL_ERROR Unsupported host platform for FLAKE8_PY3)
ENDIF()

DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
    FLAKE8_PY3
    sbr:2617984240 FOR DARWIN-ARM64
    sbr:2617985759 FOR DARWIN
    sbr:2617984621 FOR LINUX-PPC64LE
    sbr:2617987339 FOR LINUX
    sbr:2617986064 FOR WIN32
)

END()
