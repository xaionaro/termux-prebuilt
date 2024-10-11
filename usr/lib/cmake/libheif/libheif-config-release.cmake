#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "heif" for configuration "Release"
set_property(TARGET heif APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(heif PROPERTIES
  IMPORTED_LOCATION_RELEASE "/data/data/com.termux/files/usr/lib/libheif.so.1.18.2"
  IMPORTED_SONAME_RELEASE "libheif.so.1"
  )

list(APPEND _cmake_import_check_targets heif )
list(APPEND _cmake_import_check_files_for_heif "/data/data/com.termux/files/usr/lib/libheif.so.1.18.2" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
