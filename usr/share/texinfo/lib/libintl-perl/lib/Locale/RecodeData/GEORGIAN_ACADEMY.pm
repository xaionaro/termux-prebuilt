#!/data/data/com.termux/files/usr/bin/false
# vim: set autoindent shiftwidth=4 tabstop=4:

# Conversion routines for GEORGIAN-ACADEMY.
# Copyright (C) 2002-2017 Guido Flohr <guido.flohr@cantanea.com>,
# all rights reserved.

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

package Locale::RecodeData::GEORGIAN_ACADEMY;

use strict;

require Locale::RecodeData;
use base qw(Locale::RecodeData);

my @to_ucs4 = (
    0x0000,
    0x0001,
    0x0002,
    0x0003,
    0x0004,
    0x0005,
    0x0006,
    0x0007,
    0x0008,
    0x0009,
    0x000a,
    0x000b,
    0x000c,
    0x000d,
    0x000e,
    0x000f,
    0x0010,
    0x0011,
    0x0012,
    0x0013,
    0x0014,
    0x0015,
    0x0016,
    0x0017,
    0x0018,
    0x0019,
    0x001a,
    0x001b,
    0x001c,
    0x001d,
    0x001e,
    0x001f,
    0x0020,
    0x0021,
    0x0022,
    0x0023,
    0x0024,
    0x0025,
    0x0026,
    0x0027,
    0x0028,
    0x0029,
    0x002a,
    0x002b,
    0x002c,
    0x002d,
    0x002e,
    0x002f,
    0x0030,
    0x0031,
    0x0032,
    0x0033,
    0x0034,
    0x0035,
    0x0036,
    0x0037,
    0x0038,
    0x0039,
    0x003a,
    0x003b,
    0x003c,
    0x003d,
    0x003e,
    0x003f,
    0x0040,
    0x0041,
    0x0042,
    0x0043,
    0x0044,
    0x0045,
    0x0046,
    0x0047,
    0x0048,
    0x0049,
    0x004a,
    0x004b,
    0x004c,
    0x004d,
    0x004e,
    0x004f,
    0x0050,
    0x0051,
    0x0052,
    0x0053,
    0x0054,
    0x0055,
    0x0056,
    0x0057,
    0x0058,
    0x0059,
    0x005a,
    0x005b,
    0x005c,
    0x005d,
    0x005e,
    0x005f,
    0x0060,
    0x0061,
    0x0062,
    0x0063,
    0x0064,
    0x0065,
    0x0066,
    0x0067,
    0x0068,
    0x0069,
    0x006a,
    0x006b,
    0x006c,
    0x006d,
    0x006e,
    0x006f,
    0x0070,
    0x0071,
    0x0072,
    0x0073,
    0x0074,
    0x0075,
    0x0076,
    0x0077,
    0x0078,
    0x0079,
    0x007a,
    0x007b,
    0x007c,
    0x007d,
    0x007e,
    0x007f,
    0x0080,
    0x0081,
    0x201a,
    0x0192,
    0x201e,
    0x2026,
    0x2020,
    0x2021,
    0x02c6,
    0x2030,
    0x0160,
    0x2039,
    0x0152,
    0x008d,
    0x008e,
    0x008f,
    0x0090,
    0x2018,
    0x2019,
    0x201c,
    0x201d,
    0x2022,
    0x2013,
    0x2014,
    0x02dc,
    0x2122,
    0x0161,
    0x203a,
    0x0153,
    0x009d,
    0x009e,
    0x0178,
    0x00a0,
    0x00a1,
    0x00a2,
    0x00a3,
    0x00a4,
    0x00a5,
    0x00a6,
    0x00a7,
    0x00a8,
    0x00a9,
    0x00aa,
    0x00ab,
    0x00ac,
    0x00ad,
    0x00ae,
    0x00af,
    0x00b0,
    0x00b1,
    0x00b2,
    0x00b3,
    0x00b4,
    0x00b5,
    0x00b6,
    0x00b7,
    0x00b8,
    0x00b9,
    0x00ba,
    0x00bb,
    0x00bc,
    0x00bd,
    0x00be,
    0x00bf,
    0x10d0,
    0x10d1,
    0x10d2,
    0x10d3,
    0x10d4,
    0x10d5,
    0x10d6,
    0x10d7,
    0x10d8,
    0x10d9,
    0x10da,
    0x10db,
    0x10dc,
    0x10dd,
    0x10de,
    0x10df,
    0x10e0,
    0x10e1,
    0x10e2,
    0x10e3,
    0x10e4,
    0x10e5,
    0x10e6,
    0x10e7,
    0x10e8,
    0x10e9,
    0x10ea,
    0x10eb,
    0x10ec,
    0x10ed,
    0x10ee,
    0x10ef,
    0x10f0,
    0x10f1,
    0x10f2,
    0x10f3,
    0x10f4,
    0x10f5,
    0x10f6,
    0x00e7,
    0x00e8,
    0x00e9,
    0x00ea,
    0x00eb,
    0x00ec,
    0x00ed,
    0x00ee,
    0x00ef,
    0x00f0,
    0x00f1,
    0x00f2,
    0x00f3,
    0x00f4,
    0x00f5,
    0x00f6,
    0x00f7,
    0x00f8,
    0x00f9,
    0x00fa,
    0x00fb,
    0x00fc,
    0x00fd,
    0x00fe,
    0x00ff,
);

my @to_utf8 = (
    "\x00",
    "\x01",
    "\x02",
    "\x03",
    "\x04",
    "\x05",
    "\x06",
    "\x07",
    "\x08",
    "\x09",
    "\x0a",
    "\x0b",
    "\x0c",
    "\x0d",
    "\x0e",
    "\x0f",
    "\x10",
    "\x11",
    "\x12",
    "\x13",
    "\x14",
    "\x15",
    "\x16",
    "\x17",
    "\x18",
    "\x19",
    "\x1a",
    "\x1b",
    "\x1c",
    "\x1d",
    "\x1e",
    "\x1f",
    "\x20",
    "\x21",
    "\x22",
    "\x23",
    "\x24",
    "\x25",
    "\x26",
    "\x27",
    "\x28",
    "\x29",
    "\x2a",
    "\x2b",
    "\x2c",
    "\x2d",
    "\x2e",
    "\x2f",
    "\x30",
    "\x31",
    "\x32",
    "\x33",
    "\x34",
    "\x35",
    "\x36",
    "\x37",
    "\x38",
    "\x39",
    "\x3a",
    "\x3b",
    "\x3c",
    "\x3d",
    "\x3e",
    "\x3f",
    "\x40",
    "\x41",
    "\x42",
    "\x43",
    "\x44",
    "\x45",
    "\x46",
    "\x47",
    "\x48",
    "\x49",
    "\x4a",
    "\x4b",
    "\x4c",
    "\x4d",
    "\x4e",
    "\x4f",
    "\x50",
    "\x51",
    "\x52",
    "\x53",
    "\x54",
    "\x55",
    "\x56",
    "\x57",
    "\x58",
    "\x59",
    "\x5a",
    "\x5b",
    "\x5c",
    "\x5d",
    "\x5e",
    "\x5f",
    "\x60",
    "\x61",
    "\x62",
    "\x63",
    "\x64",
    "\x65",
    "\x66",
    "\x67",
    "\x68",
    "\x69",
    "\x6a",
    "\x6b",
    "\x6c",
    "\x6d",
    "\x6e",
    "\x6f",
    "\x70",
    "\x71",
    "\x72",
    "\x73",
    "\x74",
    "\x75",
    "\x76",
    "\x77",
    "\x78",
    "\x79",
    "\x7a",
    "\x7b",
    "\x7c",
    "\x7d",
    "\x7e",
    "\x7f",
    "\xc2\x80",
    "\xc2\x81",
    "\xe2\x80\x9a",
    "\xc6\x92",
    "\xe2\x80\x9e",
    "\xe2\x80\xa6",
    "\xe2\x80\xa0",
    "\xe2\x80\xa1",
    "\xcb\x86",
    "\xe2\x80\xb0",
    "\xc5\xa0",
    "\xe2\x80\xb9",
    "\xc5\x92",
    "\xc2\x8d",
    "\xc2\x8e",
    "\xc2\x8f",
    "\xc2\x90",
    "\xe2\x80\x98",
    "\xe2\x80\x99",
    "\xe2\x80\x9c",
    "\xe2\x80\x9d",
    "\xe2\x80\xa2",
    "\xe2\x80\x93",
    "\xe2\x80\x94",
    "\xcb\x9c",
    "\xe2\x84\xa2",
    "\xc5\xa1",
    "\xe2\x80\xba",
    "\xc5\x93",
    "\xc2\x9d",
    "\xc2\x9e",
    "\xc5\xb8",
    "\xc2\xa0",
    "\xc2\xa1",
    "\xc2\xa2",
    "\xc2\xa3",
    "\xc2\xa4",
    "\xc2\xa5",
    "\xc2\xa6",
    "\xc2\xa7",
    "\xc2\xa8",
    "\xc2\xa9",
    "\xc2\xaa",
    "\xc2\xab",
    "\xc2\xac",
    "\xc2\xad",
    "\xc2\xae",
    "\xc2\xaf",
    "\xc2\xb0",
    "\xc2\xb1",
    "\xc2\xb2",
    "\xc2\xb3",
    "\xc2\xb4",
    "\xc2\xb5",
    "\xc2\xb6",
    "\xc2\xb7",
    "\xc2\xb8",
    "\xc2\xb9",
    "\xc2\xba",
    "\xc2\xbb",
    "\xc2\xbc",
    "\xc2\xbd",
    "\xc2\xbe",
    "\xc2\xbf",
    "\xe1\x83\x90",
    "\xe1\x83\x91",
    "\xe1\x83\x92",
    "\xe1\x83\x93",
    "\xe1\x83\x94",
    "\xe1\x83\x95",
    "\xe1\x83\x96",
    "\xe1\x83\x97",
    "\xe1\x83\x98",
    "\xe1\x83\x99",
    "\xe1\x83\x9a",
    "\xe1\x83\x9b",
    "\xe1\x83\x9c",
    "\xe1\x83\x9d",
    "\xe1\x83\x9e",
    "\xe1\x83\x9f",
    "\xe1\x83\xa0",
    "\xe1\x83\xa1",
    "\xe1\x83\xa2",
    "\xe1\x83\xa3",
    "\xe1\x83\xa4",
    "\xe1\x83\xa5",
    "\xe1\x83\xa6",
    "\xe1\x83\xa7",
    "\xe1\x83\xa8",
    "\xe1\x83\xa9",
    "\xe1\x83\xaa",
    "\xe1\x83\xab",
    "\xe1\x83\xac",
    "\xe1\x83\xad",
    "\xe1\x83\xae",
    "\xe1\x83\xaf",
    "\xe1\x83\xb0",
    "\xe1\x83\xb1",
    "\xe1\x83\xb2",
    "\xe1\x83\xb3",
    "\xe1\x83\xb4",
    "\xe1\x83\xb5",
    "\xe1\x83\xb6",
    "\xc3\xa7",
    "\xc3\xa8",
    "\xc3\xa9",
    "\xc3\xaa",
    "\xc3\xab",
    "\xc3\xac",
    "\xc3\xad",
    "\xc3\xae",
    "\xc3\xaf",
    "\xc3\xb0",
    "\xc3\xb1",
    "\xc3\xb2",
    "\xc3\xb3",
    "\xc3\xb4",
    "\xc3\xb5",
    "\xc3\xb6",
    "\xc3\xb7",
    "\xc3\xb8",
    "\xc3\xb9",
    "\xc3\xba",
    "\xc3\xbb",
    "\xc3\xbc",
    "\xc3\xbd",
    "\xc3\xbe",
    "\xc3\xbf",
);

my %from_ucs4 = (
    0x00000000 => "\x00",
    0x00000001 => "\x01",
    0x00000002 => "\x02",
    0x00000003 => "\x03",
    0x00000004 => "\x04",
    0x00000005 => "\x05",
    0x00000006 => "\x06",
    0x00000007 => "\x07",
    0x00000008 => "\x08",
    0x00000009 => "\x09",
    0x0000000a => "\x0a",
    0x0000000b => "\x0b",
    0x0000000c => "\x0c",
    0x0000000d => "\x0d",
    0x0000000e => "\x0e",
    0x0000000f => "\x0f",
    0x00000010 => "\x10",
    0x00000011 => "\x11",
    0x00000012 => "\x12",
    0x00000013 => "\x13",
    0x00000014 => "\x14",
    0x00000015 => "\x15",
    0x00000016 => "\x16",
    0x00000017 => "\x17",
    0x00000018 => "\x18",
    0x00000019 => "\x19",
    0x0000001a => "\x1a",
    0x0000001b => "\x1b",
    0x0000001c => "\x1c",
    0x0000001d => "\x1d",
    0x0000001e => "\x1e",
    0x0000001f => "\x1f",
    0x00000020 => "\x20",
    0x00000021 => "\x21",
    0x00000022 => "\x22",
    0x00000023 => "\x23",
    0x00000024 => "\x24",
    0x00000025 => "\x25",
    0x00000026 => "\x26",
    0x00000027 => "\x27",
    0x00000028 => "\x28",
    0x00000029 => "\x29",
    0x0000002a => "\x2a",
    0x0000002b => "\x2b",
    0x0000002c => "\x2c",
    0x0000002d => "\x2d",
    0x0000002e => "\x2e",
    0x0000002f => "\x2f",
    0x00000030 => "\x30",
    0x00000031 => "\x31",
    0x00000032 => "\x32",
    0x00000033 => "\x33",
    0x00000034 => "\x34",
    0x00000035 => "\x35",
    0x00000036 => "\x36",
    0x00000037 => "\x37",
    0x00000038 => "\x38",
    0x00000039 => "\x39",
    0x0000003a => "\x3a",
    0x0000003b => "\x3b",
    0x0000003c => "\x3c",
    0x0000003d => "\x3d",
    0x0000003e => "\x3e",
    0x0000003f => "\x3f",
    0x00000040 => "\x40",
    0x00000041 => "\x41",
    0x00000042 => "\x42",
    0x00000043 => "\x43",
    0x00000044 => "\x44",
    0x00000045 => "\x45",
    0x00000046 => "\x46",
    0x00000047 => "\x47",
    0x00000048 => "\x48",
    0x00000049 => "\x49",
    0x0000004a => "\x4a",
    0x0000004b => "\x4b",
    0x0000004c => "\x4c",
    0x0000004d => "\x4d",
    0x0000004e => "\x4e",
    0x0000004f => "\x4f",
    0x00000050 => "\x50",
    0x00000051 => "\x51",
    0x00000052 => "\x52",
    0x00000053 => "\x53",
    0x00000054 => "\x54",
    0x00000055 => "\x55",
    0x00000056 => "\x56",
    0x00000057 => "\x57",
    0x00000058 => "\x58",
    0x00000059 => "\x59",
    0x0000005a => "\x5a",
    0x0000005b => "\x5b",
    0x0000005c => "\x5c",
    0x0000005d => "\x5d",
    0x0000005e => "\x5e",
    0x0000005f => "\x5f",
    0x00000060 => "\x60",
    0x00000061 => "\x61",
    0x00000062 => "\x62",
    0x00000063 => "\x63",
    0x00000064 => "\x64",
    0x00000065 => "\x65",
    0x00000066 => "\x66",
    0x00000067 => "\x67",
    0x00000068 => "\x68",
    0x00000069 => "\x69",
    0x0000006a => "\x6a",
    0x0000006b => "\x6b",
    0x0000006c => "\x6c",
    0x0000006d => "\x6d",
    0x0000006e => "\x6e",
    0x0000006f => "\x6f",
    0x00000070 => "\x70",
    0x00000071 => "\x71",
    0x00000072 => "\x72",
    0x00000073 => "\x73",
    0x00000074 => "\x74",
    0x00000075 => "\x75",
    0x00000076 => "\x76",
    0x00000077 => "\x77",
    0x00000078 => "\x78",
    0x00000079 => "\x79",
    0x0000007a => "\x7a",
    0x0000007b => "\x7b",
    0x0000007c => "\x7c",
    0x0000007d => "\x7d",
    0x0000007e => "\x7e",
    0x0000007f => "\x7f",
    0x00000080 => "\x80",
    0x00000081 => "\x81",
    0x0000008d => "\x8d",
    0x0000008e => "\x8e",
    0x0000008f => "\x8f",
    0x00000090 => "\x90",
    0x0000009d => "\x9d",
    0x0000009e => "\x9e",
    0x000000a0 => "\xa0",
    0x000000a1 => "\xa1",
    0x000000a2 => "\xa2",
    0x000000a3 => "\xa3",
    0x000000a4 => "\xa4",
    0x000000a5 => "\xa5",
    0x000000a6 => "\xa6",
    0x000000a7 => "\xa7",
    0x000000a8 => "\xa8",
    0x000000a9 => "\xa9",
    0x000000aa => "\xaa",
    0x000000ab => "\xab",
    0x000000ac => "\xac",
    0x000000ad => "\xad",
    0x000000ae => "\xae",
    0x000000af => "\xaf",
    0x000000b0 => "\xb0",
    0x000000b1 => "\xb1",
    0x000000b2 => "\xb2",
    0x000000b3 => "\xb3",
    0x000000b4 => "\xb4",
    0x000000b5 => "\xb5",
    0x000000b6 => "\xb6",
    0x000000b7 => "\xb7",
    0x000000b8 => "\xb8",
    0x000000b9 => "\xb9",
    0x000000ba => "\xba",
    0x000000bb => "\xbb",
    0x000000bc => "\xbc",
    0x000000bd => "\xbd",
    0x000000be => "\xbe",
    0x000000bf => "\xbf",
    0x000000e7 => "\xe7",
    0x000000e8 => "\xe8",
    0x000000e9 => "\xe9",
    0x000000ea => "\xea",
    0x000000eb => "\xeb",
    0x000000ec => "\xec",
    0x000000ed => "\xed",
    0x000000ee => "\xee",
    0x000000ef => "\xef",
    0x000000f0 => "\xf0",
    0x000000f1 => "\xf1",
    0x000000f2 => "\xf2",
    0x000000f3 => "\xf3",
    0x000000f4 => "\xf4",
    0x000000f5 => "\xf5",
    0x000000f6 => "\xf6",
    0x000000f7 => "\xf7",
    0x000000f8 => "\xf8",
    0x000000f9 => "\xf9",
    0x000000fa => "\xfa",
    0x000000fb => "\xfb",
    0x000000fc => "\xfc",
    0x000000fd => "\xfd",
    0x000000fe => "\xfe",
    0x000000ff => "\xff",
    0x00000152 => "\x8c",
    0x00000153 => "\x9c",
    0x00000160 => "\x8a",
    0x00000161 => "\x9a",
    0x00000178 => "\x9f",
    0x00000192 => "\x83",
    0x000002c6 => "\x88",
    0x000002dc => "\x98",
    0x000010d0 => "\xc0",
    0x000010d1 => "\xc1",
    0x000010d2 => "\xc2",
    0x000010d3 => "\xc3",
    0x000010d4 => "\xc4",
    0x000010d5 => "\xc5",
    0x000010d6 => "\xc6",
    0x000010d7 => "\xc7",
    0x000010d8 => "\xc8",
    0x000010d9 => "\xc9",
    0x000010da => "\xca",
    0x000010db => "\xcb",
    0x000010dc => "\xcc",
    0x000010dd => "\xcd",
    0x000010de => "\xce",
    0x000010df => "\xcf",
    0x000010e0 => "\xd0",
    0x000010e1 => "\xd1",
    0x000010e2 => "\xd2",
    0x000010e3 => "\xd3",
    0x000010e4 => "\xd4",
    0x000010e5 => "\xd5",
    0x000010e6 => "\xd6",
    0x000010e7 => "\xd7",
    0x000010e8 => "\xd8",
    0x000010e9 => "\xd9",
    0x000010ea => "\xda",
    0x000010eb => "\xdb",
    0x000010ec => "\xdc",
    0x000010ed => "\xdd",
    0x000010ee => "\xde",
    0x000010ef => "\xdf",
    0x000010f0 => "\xe0",
    0x000010f1 => "\xe1",
    0x000010f2 => "\xe2",
    0x000010f3 => "\xe3",
    0x000010f4 => "\xe4",
    0x000010f5 => "\xe5",
    0x000010f6 => "\xe6",
    0x00002013 => "\x96",
    0x00002014 => "\x97",
    0x00002018 => "\x91",
    0x00002019 => "\x92",
    0x0000201a => "\x82",
    0x0000201c => "\x93",
    0x0000201d => "\x94",
    0x0000201e => "\x84",
    0x00002020 => "\x86",
    0x00002021 => "\x87",
    0x00002022 => "\x95",
    0x00002026 => "\x85",
    0x00002030 => "\x89",
    0x00002039 => "\x8b",
    0x0000203a => "\x9b",
    0x00002122 => "\x99",
);

sub _recode
{
    if ($_[0]->{_from} eq 'INTERNAL') {
		$_[1] = join '',
	        map $from_ucs4{$_} 
                || (defined $from_ucs4{$_} ? $from_ucs4{$_} : "\x3f"),
		    @{$_[1]};
    } elsif ($_[0]->{_to} eq 'UTF-8',) {
		$_[1] = join '', map $to_utf8[$_], unpack 'C*', $_[1];
    } else {
		$_[1] = [ map 
				  $to_ucs4[$_],
				  unpack 'C*', $_[1] 
				  ];
    }

    return 1;
}

1;

__END__

=head1 NAME

Locale::RecodeData::GEORGIAN_ACADEMY - Conversion routines for GEORGIAN-ACADEMY

=head1 SYNOPSIS

This module is internal to libintl.  Do not use directly!

=head1 DESCRIPTION

This module is generated and contains the conversion tables and
routines for GEORGIAN-ACADEMY.
=head1 CHARACTER TABLE

The following table is sorted in the same order as the original charmap.
All character codes are in hexadecimal.  Please read 'ISO-10646' as
'ISO-10646-UCS4'.

 Local | ISO-10646 | Description
-------+-----------+-------------------------------------------------
    00 |  00000000 | NULL (NUL)
    01 |  00000001 | START OF HEADING (SOH)
    02 |  00000002 | START OF TEXT (STX)
    03 |  00000003 | END OF TEXT (ETX)
    04 |  00000004 | END OF TRANSMISSION (EOT)
    05 |  00000005 | ENQUIRY (ENQ)
    06 |  00000006 | ACKNOWLEDGE (ACK)
    07 |  00000007 | BELL (BEL)
    08 |  00000008 | BACKSPACE (BS)
    09 |  00000009 | CHARACTER TABULATION (HT)
    0A |  0000000A | LINE FEED (LF)
    0B |  0000000B | LINE TABULATION (VT)
    0C |  0000000C | FORM FEED (FF)
    0D |  0000000D | CARRIAGE RETURN (CR)
    0E |  0000000E | SHIFT OUT (SO)
    0F |  0000000F | SHIFT IN (SI)
    10 |  00000010 | DATALINK ESCAPE (DLE)
    11 |  00000011 | DEVICE CONTROL ONE (DC1)
    12 |  00000012 | DEVICE CONTROL TWO (DC2)
    13 |  00000013 | DEVICE CONTROL THREE (DC3)
    14 |  00000014 | DEVICE CONTROL FOUR (DC4)
    15 |  00000015 | NEGATIVE ACKNOWLEDGE (NAK)
    16 |  00000016 | SYNCHRONOUS IDLE (SYN)
    17 |  00000017 | END OF TRANSMISSION BLOCK (ETB)
    18 |  00000018 | CANCEL (CAN)
    19 |  00000019 | END OF MEDIUM (EM)
    1A |  0000001A | SUBSTITUTE (SUB)
    1B |  0000001B | ESCAPE (ESC)
    1C |  0000001C | FILE SEPARATOR (IS4)
    1D |  0000001D | GROUP SEPARATOR (IS3)
    1E |  0000001E | RECORD SEPARATOR (IS2)
    1F |  0000001F | UNIT SEPARATOR (IS1)
    20 |  00000020 | SPACE
    21 |  00000021 | EXCLAMATION MARK
    22 |  00000022 | QUOTATION MARK
    23 |  00000023 | NUMBER SIGN
    24 |  00000024 | DOLLAR SIGN
    25 |  00000025 | PERCENT SIGN
    26 |  00000026 | AMPERSAND
    27 |  00000027 | APOSTROPHE
    28 |  00000028 | LEFT PARENTHESIS
    29 |  00000029 | RIGHT PARENTHESIS
    2A |  0000002A | ASTERISK
    2B |  0000002B | PLUS SIGN
    2C |  0000002C | COMMA
    2D |  0000002D | HYPHEN-MINUS
    2E |  0000002E | FULL STOP
    2F |  0000002F | SOLIDUS
    30 |  00000030 | DIGIT ZERO
    31 |  00000031 | DIGIT ONE
    32 |  00000032 | DIGIT TWO
    33 |  00000033 | DIGIT THREE
    34 |  00000034 | DIGIT FOUR
    35 |  00000035 | DIGIT FIVE
    36 |  00000036 | DIGIT SIX
    37 |  00000037 | DIGIT SEVEN
    38 |  00000038 | DIGIT EIGHT
    39 |  00000039 | DIGIT NINE
    3A |  0000003A | COLON
    3B |  0000003B | SEMICOLON
    3C |  0000003C | LESS-THAN SIGN
    3D |  0000003D | EQUALS SIGN
    3E |  0000003E | GREATER-THAN SIGN
    3F |  0000003F | QUESTION MARK
    40 |  00000040 | COMMERCIAL AT
    41 |  00000041 | LATIN CAPITAL LETTER A
    42 |  00000042 | LATIN CAPITAL LETTER B
    43 |  00000043 | LATIN CAPITAL LETTER C
    44 |  00000044 | LATIN CAPITAL LETTER D
    45 |  00000045 | LATIN CAPITAL LETTER E
    46 |  00000046 | LATIN CAPITAL LETTER F
    47 |  00000047 | LATIN CAPITAL LETTER G
    48 |  00000048 | LATIN CAPITAL LETTER H
    49 |  00000049 | LATIN CAPITAL LETTER I
    4A |  0000004A | LATIN CAPITAL LETTER J
    4B |  0000004B | LATIN CAPITAL LETTER K
    4C |  0000004C | LATIN CAPITAL LETTER L
    4D |  0000004D | LATIN CAPITAL LETTER M
    4E |  0000004E | LATIN CAPITAL LETTER N
    4F |  0000004F | LATIN CAPITAL LETTER O
    50 |  00000050 | LATIN CAPITAL LETTER P
    51 |  00000051 | LATIN CAPITAL LETTER Q
    52 |  00000052 | LATIN CAPITAL LETTER R
    53 |  00000053 | LATIN CAPITAL LETTER S
    54 |  00000054 | LATIN CAPITAL LETTER T
    55 |  00000055 | LATIN CAPITAL LETTER U
    56 |  00000056 | LATIN CAPITAL LETTER V
    57 |  00000057 | LATIN CAPITAL LETTER W
    58 |  00000058 | LATIN CAPITAL LETTER X
    59 |  00000059 | LATIN CAPITAL LETTER Y
    5A |  0000005A | LATIN CAPITAL LETTER Z
    5B |  0000005B | LEFT SQUARE BRACKET
    5C |  0000005C | REVERSE SOLIDUS
    5D |  0000005D | RIGHT SQUARE BRACKET
    5E |  0000005E | CIRCUMFLEX ACCENT
    5F |  0000005F | LOW LINE
    60 |  00000060 | GRAVE ACCENT
    61 |  00000061 | LATIN SMALL LETTER A
    62 |  00000062 | LATIN SMALL LETTER B
    63 |  00000063 | LATIN SMALL LETTER C
    64 |  00000064 | LATIN SMALL LETTER D
    65 |  00000065 | LATIN SMALL LETTER E
    66 |  00000066 | LATIN SMALL LETTER F
    67 |  00000067 | LATIN SMALL LETTER G
    68 |  00000068 | LATIN SMALL LETTER H
    69 |  00000069 | LATIN SMALL LETTER I
    6A |  0000006A | LATIN SMALL LETTER J
    6B |  0000006B | LATIN SMALL LETTER K
    6C |  0000006C | LATIN SMALL LETTER L
    6D |  0000006D | LATIN SMALL LETTER M
    6E |  0000006E | LATIN SMALL LETTER N
    6F |  0000006F | LATIN SMALL LETTER O
    70 |  00000070 | LATIN SMALL LETTER P
    71 |  00000071 | LATIN SMALL LETTER Q
    72 |  00000072 | LATIN SMALL LETTER R
    73 |  00000073 | LATIN SMALL LETTER S
    74 |  00000074 | LATIN SMALL LETTER T
    75 |  00000075 | LATIN SMALL LETTER U
    76 |  00000076 | LATIN SMALL LETTER V
    77 |  00000077 | LATIN SMALL LETTER W
    78 |  00000078 | LATIN SMALL LETTER X
    79 |  00000079 | LATIN SMALL LETTER Y
    7A |  0000007A | LATIN SMALL LETTER Z
    7B |  0000007B | LEFT CURLY BRACKET
    7C |  0000007C | VERTICAL LINE
    7D |  0000007D | RIGHT CURLY BRACKET
    7E |  0000007E | TILDE
    7F |  0000007F | DELETE (DEL)
    80 |  00000080 | PADDING CHARACTER (PAD)
    81 |  00000081 | HIGH OCTET PRESET (HOP)
    82 |  0000201A | SINGLE LOW-9 QUOTATION MARK
    83 |  00000192 | LATIN SMALL LETTER F WITH HOOK
    84 |  0000201E | DOUBLE LOW-9 QUOTATION MARK
    85 |  00002026 | HORIZONTAL ELLIPSIS
    86 |  00002020 | DAGGER
    87 |  00002021 | DOUBLE DAGGER
    88 |  000002C6 | MODIFIER LETTER CIRCUMFLEX ACCENT
    89 |  00002030 | PER MILLE SIGN
    8A |  00000160 | LATIN CAPITAL LETTER S WITH CARON
    8B |  00002039 | SINGLE LEFT-POINTING ANGLE QUOTATION MARK
    8C |  00000152 | LATIN CAPITAL LIGATURE OE
    8D |  0000008D | REVERSE LINE FEED (RI)
    8E |  0000008E | SINGLE-SHIFT TWO (SS2)
    8F |  0000008F | SINGLE-SHIFT THREE (SS3)
    90 |  00000090 | DEVICE CONTROL STRING (DCS)
    91 |  00002018 | LEFT SINGLE QUOTATION MARK
    92 |  00002019 | RIGHT SINGLE QUOTATION MARK
    93 |  0000201C | LEFT DOUBLE QUOTATION MARK
    94 |  0000201D | RIGHT DOUBLE QUOTATION MARK
    95 |  00002022 | BULLET
    96 |  00002013 | EN DASH
    97 |  00002014 | EM DASH
    98 |  000002DC | SMALL TILDE
    99 |  00002122 | TRADE MARK SIGN
    9A |  00000161 | LATIN SMALL LETTER S WITH CARON
    9B |  0000203A | SINGLE RIGHT-POINTING ANGLE QUOTATION MARK
    9C |  00000153 | LATIN SMALL LIGATURE OE
    9D |  0000009D | OPERATING SYSTEM COMMAND (OSC)
    9E |  0000009E | PRIVACY MESSAGE (PM)
    9F |  00000178 | LATIN CAPITAL LETTER Y WITH DIAERESIS
    A0 |  000000A0 | NO-BREAK SPACE
    A1 |  000000A1 | INVERTED EXCLAMATION MARK
    A2 |  000000A2 | CENT SIGN
    A3 |  000000A3 | POUND SIGN
    A4 |  000000A4 | CURRENCY SIGN
    A5 |  000000A5 | YEN SIGN
    A6 |  000000A6 | BROKEN BAR
    A7 |  000000A7 | SECTION SIGN
    A8 |  000000A8 | DIAERESIS
    A9 |  000000A9 | COPYRIGHT SIGN
    AA |  000000AA | FEMININE ORDINAL INDICATOR
    AB |  000000AB | LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
    AC |  000000AC | NOT SIGN
    AD |  000000AD | SOFT HYPHEN
    AE |  000000AE | REGISTERED SIGN
    AF |  000000AF | MACRON
    B0 |  000000B0 | DEGREE SIGN
    B1 |  000000B1 | PLUS-MINUS SIGN
    B2 |  000000B2 | SUPERSCRIPT TWO
    B3 |  000000B3 | SUPERSCRIPT THREE
    B4 |  000000B4 | ACUTE ACCENT
    B5 |  000000B5 | MICRO SIGN
    B6 |  000000B6 | PILCROW SIGN
    B7 |  000000B7 | MIDDLE DOT
    B8 |  000000B8 | CEDILLA
    B9 |  000000B9 | SUPERSCRIPT ONE
    BA |  000000BA | MASCULINE ORDINAL INDICATOR
    BB |  000000BB | RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
    BC |  000000BC | VULGAR FRACTION ONE QUARTER
    BD |  000000BD | VULGAR FRACTION ONE HALF
    BE |  000000BE | VULGAR FRACTION THREE QUARTERS
    BF |  000000BF | INVERTED QUESTION MARK
    C0 |  000010D0 | GEORGIAN LETTER AN
    C1 |  000010D1 | GEORGIAN LETTER BAN
    C2 |  000010D2 | GEORGIAN LETTER GAN
    C3 |  000010D3 | GEORGIAN LETTER DON
    C4 |  000010D4 | GEORGIAN LETTER EN
    C5 |  000010D5 | GEORGIAN LETTER VIN
    C6 |  000010D6 | GEORGIAN LETTER ZEN
    C7 |  000010D7 | GEORGIAN LETTER TAN
    C8 |  000010D8 | GEORGIAN LETTER IN
    C9 |  000010D9 | GEORGIAN LETTER KAN
    CA |  000010DA | GEORGIAN LETTER LAS
    CB |  000010DB | GEORGIAN LETTER MAN
    CC |  000010DC | GEORGIAN LETTER NAR
    CD |  000010DD | GEORGIAN LETTER ON
    CE |  000010DE | GEORGIAN LETTER PAR
    CF |  000010DF | GEORGIAN LETTER ZHAR
    D0 |  000010E0 | GEORGIAN LETTER RAE
    D1 |  000010E1 | GEORGIAN LETTER SAN
    D2 |  000010E2 | GEORGIAN LETTER TAR
    D3 |  000010E3 | GEORGIAN LETTER UN
    D4 |  000010E4 | GEORGIAN LETTER PHAR
    D5 |  000010E5 | GEORGIAN LETTER KHAR
    D6 |  000010E6 | GEORGIAN LETTER GHAN
    D7 |  000010E7 | GEORGIAN LETTER QAR
    D8 |  000010E8 | GEORGIAN LETTER SHIN
    D9 |  000010E9 | GEORGIAN LETTER CHIN
    DA |  000010EA | GEORGIAN LETTER CAN
    DB |  000010EB | GEORGIAN LETTER JIL
    DC |  000010EC | GEORGIAN LETTER CIL
    DD |  000010ED | GEORGIAN LETTER CHAR
    DE |  000010EE | GEORGIAN LETTER XAN
    DF |  000010EF | GEORGIAN LETTER JHAN
    E0 |  000010F0 | GEORGIAN LETTER HAE
    E1 |  000010F1 | GEORGIAN LETTER HE
    E2 |  000010F2 | GEORGIAN LETTER HIE
    E3 |  000010F3 | GEORGIAN LETTER WE
    E4 |  000010F4 | GEORGIAN LETTER HAR
    E5 |  000010F5 | GEORGIAN LETTER HOE
    E6 |  000010F6 | GEORGIAN LETTER FI
    E7 |  000000E7 | LATIN SMALL LETTER C WITH CEDILLA
    E8 |  000000E8 | LATIN SMALL LETTER E WITH GRAVE
    E9 |  000000E9 | LATIN SMALL LETTER E WITH ACUTE
    EA |  000000EA | LATIN SMALL LETTER E WITH CIRCUMFLEX
    EB |  000000EB | LATIN SMALL LETTER E WITH DIAERESIS
    EC |  000000EC | LATIN SMALL LETTER I WITH GRAVE
    ED |  000000ED | LATIN SMALL LETTER I WITH ACUTE
    EE |  000000EE | LATIN SMALL LETTER I WITH CIRCUMFLEX
    EF |  000000EF | LATIN SMALL LETTER I WITH DIAERESIS
    F0 |  000000F0 | LATIN SMALL LETTER ETH (Icelandic)
    F1 |  000000F1 | LATIN SMALL LETTER N WITH TILDE
    F2 |  000000F2 | LATIN SMALL LETTER O WITH GRAVE
    F3 |  000000F3 | LATIN SMALL LETTER O WITH ACUTE
    F4 |  000000F4 | LATIN SMALL LETTER O WITH CIRCUMFLEX
    F5 |  000000F5 | LATIN SMALL LETTER O WITH TILDE
    F6 |  000000F6 | LATIN SMALL LETTER O WITH DIAERESIS
    F7 |  000000F7 | DIVISION SIGN
    F8 |  000000F8 | LATIN SMALL LETTER O WITH STROKE
    F9 |  000000F9 | LATIN SMALL LETTER U WITH GRAVE
    FA |  000000FA | LATIN SMALL LETTER U WITH ACUTE
    FB |  000000FB | LATIN SMALL LETTER U WITH CIRCUMFLEX
    FC |  000000FC | LATIN SMALL LETTER U WITH DIAERESIS
    FD |  000000FD | LATIN SMALL LETTER Y WITH ACUTE
    FE |  000000FE | LATIN SMALL LETTER THORN (Icelandic)
    FF |  000000FF | LATIN SMALL LETTER Y WITH DIAERESIS


=head1 AUTHOR

Copyright (C) 2002-2017 L<Guido Flohr|http://www.guido-flohr.net/>
(L<mailto:guido.flohr@cantanea.com>), all rights reserved.  See the source
code for details!code for details!

=head1 SEE ALSO

Locale::RecodeData(3), Locale::Recode(3), perl(1)

=cut
Local Variables:
mode: perl
perl-indent-level: 4
perl-continued-statement-offset: 4
perl-continued-brace-offset: 0
perl-brace-offset: -4
perl-brace-imaginary-offset: 0
perl-label-offset: -4
cperl-indent-level: 4
cperl-continued-statement-offset: 2
tab-width: 4
End:
=cut
