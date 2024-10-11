# -*- tcl -*-
# Tcl package index file, version 1.1
#
if {[package vsatisfies [package provide Tcl] 9.0-]} {
    package ifneeded sqlite3 3.46.1 \
	    [list load [file join $dir libtcl9sqlite3.46.1.so] sqlite3]
} else {
    package ifneeded sqlite3 3.46.1 \
	    [list load [file join $dir libsqlite3.46.1.so] sqlite3]
}
