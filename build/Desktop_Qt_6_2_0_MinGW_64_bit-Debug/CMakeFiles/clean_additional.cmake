# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appToDoList2_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appToDoList2_autogen.dir\\ParseCache.txt"
  "appToDoList2_autogen"
  )
endif()
