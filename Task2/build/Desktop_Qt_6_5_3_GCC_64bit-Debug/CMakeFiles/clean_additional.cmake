# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appTask2_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appTask2_autogen.dir/ParseCache.txt"
  "appTask2_autogen"
  )
endif()
