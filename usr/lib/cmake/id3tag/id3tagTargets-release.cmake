#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "id3tag::id3tag" for configuration "Release"
set_property(TARGET id3tag::id3tag APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(id3tag::id3tag PROPERTIES
  IMPORTED_LOCATION_RELEASE "/data/data/com.termux/files/usr/lib/libid3tag.so"
  IMPORTED_SONAME_RELEASE "libid3tag.so"
  )

list(APPEND _cmake_import_check_targets id3tag::id3tag )
list(APPEND _cmake_import_check_files_for_id3tag::id3tag "/data/data/com.termux/files/usr/lib/libid3tag.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
