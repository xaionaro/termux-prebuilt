#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Matroska::matroska" for configuration "Release"
set_property(TARGET Matroska::matroska APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Matroska::matroska PROPERTIES
  IMPORTED_LOCATION_RELEASE "/data/data/com.termux/files/usr/lib/libmatroska.so"
  IMPORTED_SONAME_RELEASE "libmatroska.so"
  )

list(APPEND _cmake_import_check_targets Matroska::matroska )
list(APPEND _cmake_import_check_files_for_Matroska::matroska "/data/data/com.termux/files/usr/lib/libmatroska.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
