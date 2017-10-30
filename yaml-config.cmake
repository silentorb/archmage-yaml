
set(lib_dir "${CMAKE_CURRENT_LIST_DIR}/bin/${GENERATOR_KEY}/lib")

if (MINGW)
  target_link_libraries(${CURRENT_TARGET} "${lib_dir}/libyaml-cpp.a")
elseif (MSVC)
  target_link_libraries(${CURRENT_TARGET} "${lib_dir}/libyaml-cppmdd.lib")
else ()
  message(FATAL_ERROR "Platform support not yet implemented.")
endif ()
include_directories(${CMAKE_CURRENT_LIST_DIR}/bin/${GENERATOR_KEY}/include)
#target_link_libraries(${CURRENT_TARGET} "${lib_dir}/${gtest_library}")
#target_link_libraries(${CURRENT_TARGET} "${lib_dir}/${gtest_main}")
#
#if (MSVC) # Compiled shared.
#  add_custom_command(TARGET ${CURRENT_TARGET} POST_BUILD
#    COMMAND ${CMAKE_COMMAND} -E copy ${lib_dir}/gtest.dll $<TARGET_FILE_DIR:${CURRENT_TARGET}>
#    COMMAND ${CMAKE_COMMAND} -E copy ${lib_dir}/gtest_main.dll $<TARGET_FILE_DIR:${CURRENT_TARGET}>
#    )
#endif ()