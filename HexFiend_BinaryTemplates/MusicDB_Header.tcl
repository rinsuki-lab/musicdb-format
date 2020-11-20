# .musicdb binary templates for Hex Fiend
#
# Licensed under MIT License
# Copyright (c) 2020 rinsuki
# (full license text are available at GitHub https://github.com/rinsuki-lab/musicdb-format )
#

little_endian
requires 0 "68 66 6D 61" ;# hfma
move 4
uint32 "Header size"
uint32 "File size"
uint32 "unknown (file flag? & 1=always,& 0x10000=opened in bigsur)" ;# 1=always?, 0x10000=bigsur?
ascii 32 "AMPLibrary version"
hex 8 "Library Persistent ID"
uint32 "File type? (6=library, 4=app, 2=prefs)" ;# 6 = Library, 4=Application, 2=Library Preferences
uint32 "unknown (always zero?)"
uint32 "unknown (always 65793?)"
uint32 "Songs"
uint32 "Playlists" ;# minus 5 + device count?
uint32 "Albums"
uint32 "Artists"
uint32 "Max Crypt Size? (always 102400?)"
uint32 "unknown (always 32400?)"
uint32 "Linked Apple ID"
uint32 "unknown (always 2?)"
macdate "Library Updated At"
uint32 "Library type? (0=notlib,1=music,2=tv)" ;# 0 = file type is not library, 1 = Music, 2 = TV
hex 8 "Library Persistent ID (from migrated iTunes Library?)"
