#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "EBML::ebml" for configuration "Release"
set_property(TARGET EBML::ebml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(EBML::ebml PROPERTIES
  IMPORTED_LOCATION_RELEASE "/data/data/com.termux/files/usr/lib/libebml.so"
  IMPORTED_SONAME_RELEASE "libebml.so"
  )

list(APPEND _cmake_import_check_targets EBML::ebml )
list(APPEND _cmake_import_check_files_for_EBML::ebml "/data/data/com.termux/files/usr/lib/libebml.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
