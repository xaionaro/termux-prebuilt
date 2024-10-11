#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "hwy::hwy" for configuration "Release"
set_property(TARGET hwy::hwy APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hwy::hwy PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "/data/data/com.termux/files/usr/lib/libhwy.a"
  )

list(APPEND _cmake_import_check_targets hwy::hwy )
list(APPEND _cmake_import_check_files_for_hwy::hwy "/data/data/com.termux/files/usr/lib/libhwy.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
