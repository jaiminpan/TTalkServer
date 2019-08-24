cmake_minimum_required(VERSION 2.6)
PROJECT(server)


INCLUDE (${CMAKE_CURRENT_SOURCE_DIR}/src/cmake/check_function.cmake)

SET(DST_INC_DIR ${CMAKE_CURRENT_BINARY_DIR}/src/include)


SET(SLOG_DST_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src/base/slog)
SET(SLOG_SRC ${CMAKE_CURRENT_SOURCE_DIR}/src/slog/slog_api.h)

ADD_CUSTOM_TARGET(sloglink ALL)
makeLink(${SLOG_SRC} ${SLOG_DST_DIR}/slog_api.h sloglink)

ADD_CUSTOM_TARGET(build-time-make-directory ALL
	COMMAND ${CMAKE_COMMAND} -E make_directory ${SLOG_DST_DIR})


ADD_CUSTOM_TARGET(sloglink2 ALL)
makeLink(${SLOG_SRC} ${DST_INC_DIR}/slog_api.h sloglink2)

ADD_CUSTOM_TARGET(build-time-make-directory2 ALL
	COMMAND ${CMAKE_COMMAND} -E make_directory ${DST_INC_DIR})
