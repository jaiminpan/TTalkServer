cmake_minimum_required(VERSION 2.6)
PROJECT(server)


INCLUDE (${CMAKE_CURRENT_LIST_DIR}/cmake/check_function.cmake)

SET(SLOG_DST_DIR ${CMAKE_CURRENT_SOURCE_DIR}/base/slog)
SET(SLOG_SRC ${CMAKE_CURRENT_SOURCE_DIR}/slog/slog_api.h)
SET(SLOG_DST ${SLOG_DST_DIR}/slog_api.h)


ADD_CUSTOM_TARGET(sloglink ALL)
makeLink(${SLOG_SRC} ${SLOG_DST} sloglink)


ADD_CUSTOM_TARGET(build-time-make-directory ALL
	COMMAND ${CMAKE_COMMAND} -E make_directory ${SLOG_DST_DIR})
