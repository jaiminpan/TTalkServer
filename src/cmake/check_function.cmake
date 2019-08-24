
macro(makeLink src dest target)
add_custom_command(TARGET ${target} POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E create_symlink ${src} ${dest}
    DEPENDS ${dest}
    COMMENT "symbolic link ${src} -> ${dest}"
)
endmacro()

macro(makeCopy src dest target)
add_custom_command(TARGET ${target} POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy ${src} ${dest}
    DEPENDS ${dest}
    COMMENT "Copy ${src} -> ${dest}"
)
endmacro()
