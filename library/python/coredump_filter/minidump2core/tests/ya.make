PY2TEST()



DATA(
    arcadia/library/python/coredump_filter/tests
)

TEST_SRCS(
    test_minidump2core.py
)

PEERDIR(
    library/python/coredump_filter/minidump2core/src
)

END()
