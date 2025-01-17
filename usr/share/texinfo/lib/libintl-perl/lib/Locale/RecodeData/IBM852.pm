#!/data/data/com.termux/files/usr/bin/false
# vim: set autoindent shiftwidth=4 tabstop=4:

# Conversion routines for IBM852.
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

package Locale::RecodeData::IBM852;

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
    0x00c7,
    0x00fc,
    0x00e9,
    0x00e2,
    0x00e4,
    0x016f,
    0x0107,
    0x00e7,
    0x0142,
    0x00eb,
    0x0150,
    0x0151,
    0x00ee,
    0x0179,
    0x00c4,
    0x0106,
    0x00c9,
    0x0139,
    0x013a,
    0x00f4,
    0x00f6,
    0x013d,
    0x013e,
    0x015a,
    0x015b,
    0x00d6,
    0x00dc,
    0x0164,
    0x0165,
    0x0141,
    0x00d7,
    0x010d,
    0x00e1,
    0x00ed,
    0x00f3,
    0x00fa,
    0x0104,
    0x0105,
    0x017d,
    0x017e,
    0x0118,
    0x0119,
    0x00ac,
    0x017a,
    0x010c,
    0x015f,
    0x00ab,
    0x00bb,
    0x2591,
    0x2592,
    0x2593,
    0x2502,
    0x2524,
    0x00c1,
    0x00c2,
    0x011a,
    0x015e,
    0x2563,
    0x2551,
    0x2557,
    0x255d,
    0x017b,
    0x017c,
    0x2510,
    0x2514,
    0x2534,
    0x252c,
    0x251c,
    0x2500,
    0x253c,
    0x0102,
    0x0103,
    0x255a,
    0x2554,
    0x2569,
    0x2566,
    0x2560,
    0x2550,
    0x256c,
    0x00a4,
    0x0111,
    0x0110,
    0x010e,
    0x00cb,
    0x010f,
    0x0147,
    0x00cd,
    0x00ce,
    0x011b,
    0x2518,
    0x250c,
    0x2588,
    0x2584,
    0x0162,
    0x016e,
    0x2580,
    0x00d3,
    0x00df,
    0x00d4,
    0x0143,
    0x0144,
    0x0148,
    0x0160,
    0x0161,
    0x0154,
    0x00da,
    0x0155,
    0x0170,
    0x00fd,
    0x00dd,
    0x0163,
    0x00b4,
    0x00ad,
    0x02dd,
    0x02db,
    0x02c7,
    0x02d8,
    0x00a7,
    0x00f7,
    0x00b8,
    0x00b0,
    0x00a8,
    0x02d9,
    0x0171,
    0x0158,
    0x0159,
    0x25a0,
    0x00a0,
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
    "\xc3\x87",
    "\xc3\xbc",
    "\xc3\xa9",
    "\xc3\xa2",
    "\xc3\xa4",
    "\xc5\xaf",
    "\xc4\x87",
    "\xc3\xa7",
    "\xc5\x82",
    "\xc3\xab",
    "\xc5\x90",
    "\xc5\x91",
    "\xc3\xae",
    "\xc5\xb9",
    "\xc3\x84",
    "\xc4\x86",
    "\xc3\x89",
    "\xc4\xb9",
    "\xc4\xba",
    "\xc3\xb4",
    "\xc3\xb6",
    "\xc4\xbd",
    "\xc4\xbe",
    "\xc5\x9a",
    "\xc5\x9b",
    "\xc3\x96",
    "\xc3\x9c",
    "\xc5\xa4",
    "\xc5\xa5",
    "\xc5\x81",
    "\xc3\x97",
    "\xc4\x8d",
    "\xc3\xa1",
    "\xc3\xad",
    "\xc3\xb3",
    "\xc3\xba",
    "\xc4\x84",
    "\xc4\x85",
    "\xc5\xbd",
    "\xc5\xbe",
    "\xc4\x98",
    "\xc4\x99",
    "\xc2\xac",
    "\xc5\xba",
    "\xc4\x8c",
    "\xc5\x9f",
    "\xc2\xab",
    "\xc2\xbb",
    "\xe2\x96\x91",
    "\xe2\x96\x92",
    "\xe2\x96\x93",
    "\xe2\x94\x82",
    "\xe2\x94\xa4",
    "\xc3\x81",
    "\xc3\x82",
    "\xc4\x9a",
    "\xc5\x9e",
    "\xe2\x95\xa3",
    "\xe2\x95\x91",
    "\xe2\x95\x97",
    "\xe2\x95\x9d",
    "\xc5\xbb",
    "\xc5\xbc",
    "\xe2\x94\x90",
    "\xe2\x94\x94",
    "\xe2\x94\xb4",
    "\xe2\x94\xac",
    "\xe2\x94\x9c",
    "\xe2\x94\x80",
    "\xe2\x94\xbc",
    "\xc4\x82",
    "\xc4\x83",
    "\xe2\x95\x9a",
    "\xe2\x95\x94",
    "\xe2\x95\xa9",
    "\xe2\x95\xa6",
    "\xe2\x95\xa0",
    "\xe2\x95\x90",
    "\xe2\x95\xac",
    "\xc2\xa4",
    "\xc4\x91",
    "\xc4\x90",
    "\xc4\x8e",
    "\xc3\x8b",
    "\xc4\x8f",
    "\xc5\x87",
    "\xc3\x8d",
    "\xc3\x8e",
    "\xc4\x9b",
    "\xe2\x94\x98",
    "\xe2\x94\x8c",
    "\xe2\x96\x88",
    "\xe2\x96\x84",
    "\xc5\xa2",
    "\xc5\xae",
    "\xe2\x96\x80",
    "\xc3\x93",
    "\xc3\x9f",
    "\xc3\x94",
    "\xc5\x83",
    "\xc5\x84",
    "\xc5\x88",
    "\xc5\xa0",
    "\xc5\xa1",
    "\xc5\x94",
    "\xc3\x9a",
    "\xc5\x95",
    "\xc5\xb0",
    "\xc3\xbd",
    "\xc3\x9d",
    "\xc5\xa3",
    "\xc2\xb4",
    "\xc2\xad",
    "\xcb\x9d",
    "\xcb\x9b",
    "\xcb\x87",
    "\xcb\x98",
    "\xc2\xa7",
    "\xc3\xb7",
    "\xc2\xb8",
    "\xc2\xb0",
    "\xc2\xa8",
    "\xcb\x99",
    "\xc5\xb1",
    "\xc5\x98",
    "\xc5\x99",
    "\xe2\x96\xa0",
    "\xc2\xa0",
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
    0x000000a0 => "\xff",
    0x000000a4 => "\xcf",
    0x000000a7 => "\xf5",
    0x000000a8 => "\xf9",
    0x000000ab => "\xae",
    0x000000ac => "\xaa",
    0x000000ad => "\xf0",
    0x000000b0 => "\xf8",
    0x000000b4 => "\xef",
    0x000000b8 => "\xf7",
    0x000000bb => "\xaf",
    0x000000c1 => "\xb5",
    0x000000c2 => "\xb6",
    0x000000c4 => "\x8e",
    0x000000c7 => "\x80",
    0x000000c9 => "\x90",
    0x000000cb => "\xd3",
    0x000000cd => "\xd6",
    0x000000ce => "\xd7",
    0x000000d3 => "\xe0",
    0x000000d4 => "\xe2",
    0x000000d6 => "\x99",
    0x000000d7 => "\x9e",
    0x000000da => "\xe9",
    0x000000dc => "\x9a",
    0x000000dd => "\xed",
    0x000000df => "\xe1",
    0x000000e1 => "\xa0",
    0x000000e2 => "\x83",
    0x000000e4 => "\x84",
    0x000000e7 => "\x87",
    0x000000e9 => "\x82",
    0x000000eb => "\x89",
    0x000000ed => "\xa1",
    0x000000ee => "\x8c",
    0x000000f3 => "\xa2",
    0x000000f4 => "\x93",
    0x000000f6 => "\x94",
    0x000000f7 => "\xf6",
    0x000000fa => "\xa3",
    0x000000fc => "\x81",
    0x000000fd => "\xec",
    0x00000102 => "\xc6",
    0x00000103 => "\xc7",
    0x00000104 => "\xa4",
    0x00000105 => "\xa5",
    0x00000106 => "\x8f",
    0x00000107 => "\x86",
    0x0000010c => "\xac",
    0x0000010d => "\x9f",
    0x0000010e => "\xd2",
    0x0000010f => "\xd4",
    0x00000110 => "\xd1",
    0x00000111 => "\xd0",
    0x00000118 => "\xa8",
    0x00000119 => "\xa9",
    0x0000011a => "\xb7",
    0x0000011b => "\xd8",
    0x00000139 => "\x91",
    0x0000013a => "\x92",
    0x0000013d => "\x95",
    0x0000013e => "\x96",
    0x00000141 => "\x9d",
    0x00000142 => "\x88",
    0x00000143 => "\xe3",
    0x00000144 => "\xe4",
    0x00000147 => "\xd5",
    0x00000148 => "\xe5",
    0x00000150 => "\x8a",
    0x00000151 => "\x8b",
    0x00000154 => "\xe8",
    0x00000155 => "\xea",
    0x00000158 => "\xfc",
    0x00000159 => "\xfd",
    0x0000015a => "\x97",
    0x0000015b => "\x98",
    0x0000015e => "\xb8",
    0x0000015f => "\xad",
    0x00000160 => "\xe6",
    0x00000161 => "\xe7",
    0x00000162 => "\xdd",
    0x00000163 => "\xee",
    0x00000164 => "\x9b",
    0x00000165 => "\x9c",
    0x0000016e => "\xde",
    0x0000016f => "\x85",
    0x00000170 => "\xeb",
    0x00000171 => "\xfb",
    0x00000179 => "\x8d",
    0x0000017a => "\xab",
    0x0000017b => "\xbd",
    0x0000017c => "\xbe",
    0x0000017d => "\xa6",
    0x0000017e => "\xa7",
    0x000002c7 => "\xf3",
    0x000002d8 => "\xf4",
    0x000002d9 => "\xfa",
    0x000002db => "\xf2",
    0x000002dd => "\xf1",
    0x00002500 => "\xc4",
    0x00002502 => "\xb3",
    0x0000250c => "\xda",
    0x00002510 => "\xbf",
    0x00002514 => "\xc0",
    0x00002518 => "\xd9",
    0x0000251c => "\xc3",
    0x00002524 => "\xb4",
    0x0000252c => "\xc2",
    0x00002534 => "\xc1",
    0x0000253c => "\xc5",
    0x00002550 => "\xcd",
    0x00002551 => "\xba",
    0x00002554 => "\xc9",
    0x00002557 => "\xbb",
    0x0000255a => "\xc8",
    0x0000255d => "\xbc",
    0x00002560 => "\xcc",
    0x00002563 => "\xb9",
    0x00002566 => "\xcb",
    0x00002569 => "\xca",
    0x0000256c => "\xce",
    0x00002580 => "\xdf",
    0x00002584 => "\xdc",
    0x00002588 => "\xdb",
    0x00002591 => "\xb0",
    0x00002592 => "\xb1",
    0x00002593 => "\xb2",
    0x000025a0 => "\xfe",
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

Locale::RecodeData::IBM852 - Conversion routines for IBM852

=head1 SYNOPSIS

This module is internal to libintl.  Do not use directly!

=head1 DESCRIPTION

This module is generated and contains the conversion tables and
routines for IBM852.

=head1 COMMENTS

The following comments have been extracted from the original charmap:

 version: 1.0
  source: IBM NLS RM Vol2 SE09-8002-01, March 1990
 alias CP852
 alias 852

Please note that aliases listed above are not necessarily valid!

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
    80 |  000000C7 | LATIN CAPITAL LETTER C WITH CEDILLA
    81 |  000000FC | LATIN SMALL LETTER U WITH DIAERESIS
    82 |  000000E9 | LATIN SMALL LETTER E WITH ACUTE
    83 |  000000E2 | LATIN SMALL LETTER A WITH CIRCUMFLEX
    84 |  000000E4 | LATIN SMALL LETTER A WITH DIAERESIS
    85 |  0000016F | LATIN SMALL LETTER U WITH RING ABOVE
    86 |  00000107 | LATIN SMALL LETTER C WITH ACUTE
    87 |  000000E7 | LATIN SMALL LETTER C WITH CEDILLA
    88 |  00000142 | LATIN SMALL LETTER L WITH STROKE
    89 |  000000EB | LATIN SMALL LETTER E WITH DIAERESIS
    8A |  00000150 | LATIN CAPITAL LETTER O WITH DOUBLE ACUTE
    8B |  00000151 | LATIN SMALL LETTER O WITH DOUBLE ACUTE
    8C |  000000EE | LATIN SMALL LETTER I WITH CIRCUMFLEX
    8D |  00000179 | LATIN CAPITAL LETTER Z WITH ACUTE
    8E |  000000C4 | LATIN CAPITAL LETTER A WITH DIAERESIS
    8F |  00000106 | LATIN CAPITAL LETTER C WITH ACUTE
    90 |  000000C9 | LATIN CAPITAL LETTER E WITH ACUTE
    91 |  00000139 | LATIN CAPITAL LETTER L WITH ACUTE
    92 |  0000013A | LATIN SMALL LETTER L WITH ACUTE
    93 |  000000F4 | LATIN SMALL LETTER O WITH CIRCUMFLEX
    94 |  000000F6 | LATIN SMALL LETTER O WITH DIAERESIS
    95 |  0000013D | LATIN CAPITAL LETTER L WITH CARON
    96 |  0000013E | LATIN SMALL LETTER L WITH CARON
    97 |  0000015A | LATIN CAPITAL LETTER S WITH ACUTE
    98 |  0000015B | LATIN SMALL LETTER S WITH ACUTE
    99 |  000000D6 | LATIN CAPITAL LETTER O WITH DIAERESIS
    9A |  000000DC | LATIN CAPITAL LETTER U WITH DIAERESIS
    9B |  00000164 | LATIN CAPITAL LETTER T WITH CARON
    9C |  00000165 | LATIN SMALL LETTER T WITH CARON
    9D |  00000141 | LATIN CAPITAL LETTER L WITH STROKE
    9E |  000000D7 | MULTIPLICATION SIGN
    9F |  0000010D | LATIN SMALL LETTER C WITH CARON
    A0 |  000000E1 | LATIN SMALL LETTER A WITH ACUTE
    A1 |  000000ED | LATIN SMALL LETTER I WITH ACUTE
    A2 |  000000F3 | LATIN SMALL LETTER O WITH ACUTE
    A3 |  000000FA | LATIN SMALL LETTER U WITH ACUTE
    A4 |  00000104 | LATIN CAPITAL LETTER A WITH OGONEK
    A5 |  00000105 | LATIN SMALL LETTER A WITH OGONEK
    A6 |  0000017D | LATIN CAPITAL LETTER Z WITH CARON
    A7 |  0000017E | LATIN SMALL LETTER Z WITH CARON
    A8 |  00000118 | LATIN CAPITAL LETTER E WITH OGONEK
    A9 |  00000119 | LATIN SMALL LETTER E WITH OGONEK
    AA |  000000AC | NOT SIGN
    AB |  0000017A | LATIN SMALL LETTER Z WITH ACUTE
    AC |  0000010C | LATIN CAPITAL LETTER C WITH CARON
    AD |  0000015F | LATIN SMALL LETTER S WITH CEDILLA
    AE |  000000AB | LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
    AF |  000000BB | RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
    B0 |  00002591 | LIGHT SHADE
    B1 |  00002592 | MEDIUM SHADE
    B2 |  00002593 | DARK SHADE
    B3 |  00002502 | BOX DRAWINGS LIGHT VERTICAL
    B4 |  00002524 | BOX DRAWINGS LIGHT VERTICAL AND LEFT
    B5 |  000000C1 | LATIN CAPITAL LETTER A WITH ACUTE
    B6 |  000000C2 | LATIN CAPITAL LETTER A WITH CIRCUMFLEX
    B7 |  0000011A | LATIN CAPITAL LETTER E WITH CARON
    B8 |  0000015E | LATIN CAPITAL LETTER S WITH CEDILLA
    B9 |  00002563 | BOX DRAWINGS DOUBLE VERTICAL AND LEFT
    BA |  00002551 | BOX DRAWINGS DOUBLE VERTICAL
    BB |  00002557 | BOX DRAWINGS DOUBLE DOWN AND LEFT
    BC |  0000255D | BOX DRAWINGS DOUBLE UP AND LEFT
    BD |  0000017B | LATIN CAPITAL LETTER Z WITH DOT ABOVE
    BE |  0000017C | LATIN SMALL LETTER Z WITH DOT ABOVE
    BF |  00002510 | BOX DRAWINGS LIGHT DOWN AND LEFT
    C0 |  00002514 | BOX DRAWINGS LIGHT UP AND RIGHT
    C1 |  00002534 | BOX DRAWINGS LIGHT UP AND HORIZONTAL
    C2 |  0000252C | BOX DRAWINGS LIGHT DOWN AND HORIZONTAL
    C3 |  0000251C | BOX DRAWINGS LIGHT VERTICAL AND RIGHT
    C4 |  00002500 | BOX DRAWINGS LIGHT HORIZONTAL
    C5 |  0000253C | BOX DRAWINGS LIGHT VERTICAL AND HORIZONTAL
    C6 |  00000102 | LATIN CAPITAL LETTER A WITH BREVE
    C7 |  00000103 | LATIN SMALL LETTER A WITH BREVE
    C8 |  0000255A | BOX DRAWINGS DOUBLE UP AND RIGHT
    C9 |  00002554 | BOX DRAWINGS DOUBLE DOWN AND RIGHT
    CA |  00002569 | BOX DRAWINGS DOUBLE UP AND HORIZONTAL
    CB |  00002566 | BOX DRAWINGS DOUBLE DOWN AND HORIZONTAL
    CC |  00002560 | BOX DRAWINGS DOUBLE VERTICAL AND RIGHT
    CD |  00002550 | BOX DRAWINGS DOUBLE HORIZONTAL
    CE |  0000256C | BOX DRAWINGS DOUBLE VERTICAL AND HORIZONTAL
    CF |  000000A4 | CURRENCY SIGN
    D0 |  00000111 | LATIN SMALL LETTER D WITH STROKE
    D1 |  00000110 | LATIN CAPITAL LETTER D WITH STROKE
    D2 |  0000010E | LATIN CAPITAL LETTER D WITH CARON
    D3 |  000000CB | LATIN CAPITAL LETTER E WITH DIAERESIS
    D4 |  0000010F | LATIN SMALL LETTER D WITH CARON
    D5 |  00000147 | LATIN CAPITAL LETTER N WITH CARON
    D6 |  000000CD | LATIN CAPITAL LETTER I WITH ACUTE
    D7 |  000000CE | LATIN CAPITAL LETTER I WITH CIRCUMFLEX
    D8 |  0000011B | LATIN SMALL LETTER E WITH CARON
    D9 |  00002518 | BOX DRAWINGS LIGHT UP AND LEFT
    DA |  0000250C | BOX DRAWINGS LIGHT DOWN AND RIGHT
    DB |  00002588 | FULL BLOCK
    DC |  00002584 | LOWER HALF BLOCK
    DD |  00000162 | LATIN CAPITAL LETTER T WITH CEDILLA
    DE |  0000016E | LATIN CAPITAL LETTER U WITH RING ABOVE
    DF |  00002580 | UPPER HALF BLOCK
    E0 |  000000D3 | LATIN CAPITAL LETTER O WITH ACUTE
    E1 |  000000DF | LATIN SMALL LETTER SHARP S (German)
    E2 |  000000D4 | LATIN CAPITAL LETTER O WITH CIRCUMFLEX
    E3 |  00000143 | LATIN CAPITAL LETTER N WITH ACUTE
    E4 |  00000144 | LATIN SMALL LETTER N WITH ACUTE
    E5 |  00000148 | LATIN SMALL LETTER N WITH CARON
    E6 |  00000160 | LATIN CAPITAL LETTER S WITH CARON
    E7 |  00000161 | LATIN SMALL LETTER S WITH CARON
    E8 |  00000154 | LATIN CAPITAL LETTER R WITH ACUTE
    E9 |  000000DA | LATIN CAPITAL LETTER U WITH ACUTE
    EA |  00000155 | LATIN SMALL LETTER R WITH ACUTE
    EB |  00000170 | LATIN CAPITAL LETTER U WITH DOUBLE ACUTE
    EC |  000000FD | LATIN SMALL LETTER Y WITH ACUTE
    ED |  000000DD | LATIN CAPITAL LETTER Y WITH ACUTE
    EE |  00000163 | LATIN SMALL LETTER T WITH CEDILLA
    EF |  000000B4 | ACUTE ACCENT
    F0 |  000000AD | SOFT HYPHEN
    F1 |  000002DD | DOUBLE ACUTE ACCENT
    F2 |  000002DB | OGONEK
    F3 |  000002C7 | CARON (Mandarin Chinese third tone)
    F4 |  000002D8 | BREVE
    F5 |  000000A7 | SECTION SIGN
    F6 |  000000F7 | DIVISION SIGN
    F7 |  000000B8 | CEDILLA
    F8 |  000000B0 | DEGREE SIGN
    F9 |  000000A8 | DIAERESIS
    FA |  000002D9 | DOT ABOVE (Mandarin Chinese light tone)
    FB |  00000171 | LATIN SMALL LETTER U WITH DOUBLE ACUTE
    FC |  00000158 | LATIN CAPITAL LETTER R WITH CARON
    FD |  00000159 | LATIN SMALL LETTER R WITH CARON
    FE |  000025A0 | BLACK SQUARE
    FF |  000000A0 | NO-BREAK SPACE


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
