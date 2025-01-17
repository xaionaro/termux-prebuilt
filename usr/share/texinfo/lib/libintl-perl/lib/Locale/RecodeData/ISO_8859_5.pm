#!/data/data/com.termux/files/usr/bin/false
# vim: set autoindent shiftwidth=4 tabstop=4:

# Conversion routines for ISO-8859-5.
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

package Locale::RecodeData::ISO_8859_5;

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
    0x0082,
    0x0083,
    0x0084,
    0x0085,
    0x0086,
    0x0087,
    0x0088,
    0x0089,
    0x008a,
    0x008b,
    0x008c,
    0x008d,
    0x008e,
    0x008f,
    0x0090,
    0x0091,
    0x0092,
    0x0093,
    0x0094,
    0x0095,
    0x0096,
    0x0097,
    0x0098,
    0x0099,
    0x009a,
    0x009b,
    0x009c,
    0x009d,
    0x009e,
    0x009f,
    0x00a0,
    0x0401,
    0x0402,
    0x0403,
    0x0404,
    0x0405,
    0x0406,
    0x0407,
    0x0408,
    0x0409,
    0x040a,
    0x040b,
    0x040c,
    0x00ad,
    0x040e,
    0x040f,
    0x0410,
    0x0411,
    0x0412,
    0x0413,
    0x0414,
    0x0415,
    0x0416,
    0x0417,
    0x0418,
    0x0419,
    0x041a,
    0x041b,
    0x041c,
    0x041d,
    0x041e,
    0x041f,
    0x0420,
    0x0421,
    0x0422,
    0x0423,
    0x0424,
    0x0425,
    0x0426,
    0x0427,
    0x0428,
    0x0429,
    0x042a,
    0x042b,
    0x042c,
    0x042d,
    0x042e,
    0x042f,
    0x0430,
    0x0431,
    0x0432,
    0x0433,
    0x0434,
    0x0435,
    0x0436,
    0x0437,
    0x0438,
    0x0439,
    0x043a,
    0x043b,
    0x043c,
    0x043d,
    0x043e,
    0x043f,
    0x0440,
    0x0441,
    0x0442,
    0x0443,
    0x0444,
    0x0445,
    0x0446,
    0x0447,
    0x0448,
    0x0449,
    0x044a,
    0x044b,
    0x044c,
    0x044d,
    0x044e,
    0x044f,
    0x2116,
    0x0451,
    0x0452,
    0x0453,
    0x0454,
    0x0455,
    0x0456,
    0x0457,
    0x0458,
    0x0459,
    0x045a,
    0x045b,
    0x045c,
    0x00a7,
    0x045e,
    0x045f,
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
    "\xc2\x82",
    "\xc2\x83",
    "\xc2\x84",
    "\xc2\x85",
    "\xc2\x86",
    "\xc2\x87",
    "\xc2\x88",
    "\xc2\x89",
    "\xc2\x8a",
    "\xc2\x8b",
    "\xc2\x8c",
    "\xc2\x8d",
    "\xc2\x8e",
    "\xc2\x8f",
    "\xc2\x90",
    "\xc2\x91",
    "\xc2\x92",
    "\xc2\x93",
    "\xc2\x94",
    "\xc2\x95",
    "\xc2\x96",
    "\xc2\x97",
    "\xc2\x98",
    "\xc2\x99",
    "\xc2\x9a",
    "\xc2\x9b",
    "\xc2\x9c",
    "\xc2\x9d",
    "\xc2\x9e",
    "\xc2\x9f",
    "\xc2\xa0",
    "\xd0\x81",
    "\xd0\x82",
    "\xd0\x83",
    "\xd0\x84",
    "\xd0\x85",
    "\xd0\x86",
    "\xd0\x87",
    "\xd0\x88",
    "\xd0\x89",
    "\xd0\x8a",
    "\xd0\x8b",
    "\xd0\x8c",
    "\xc2\xad",
    "\xd0\x8e",
    "\xd0\x8f",
    "\xd0\x90",
    "\xd0\x91",
    "\xd0\x92",
    "\xd0\x93",
    "\xd0\x94",
    "\xd0\x95",
    "\xd0\x96",
    "\xd0\x97",
    "\xd0\x98",
    "\xd0\x99",
    "\xd0\x9a",
    "\xd0\x9b",
    "\xd0\x9c",
    "\xd0\x9d",
    "\xd0\x9e",
    "\xd0\x9f",
    "\xd0\xa0",
    "\xd0\xa1",
    "\xd0\xa2",
    "\xd0\xa3",
    "\xd0\xa4",
    "\xd0\xa5",
    "\xd0\xa6",
    "\xd0\xa7",
    "\xd0\xa8",
    "\xd0\xa9",
    "\xd0\xaa",
    "\xd0\xab",
    "\xd0\xac",
    "\xd0\xad",
    "\xd0\xae",
    "\xd0\xaf",
    "\xd0\xb0",
    "\xd0\xb1",
    "\xd0\xb2",
    "\xd0\xb3",
    "\xd0\xb4",
    "\xd0\xb5",
    "\xd0\xb6",
    "\xd0\xb7",
    "\xd0\xb8",
    "\xd0\xb9",
    "\xd0\xba",
    "\xd0\xbb",
    "\xd0\xbc",
    "\xd0\xbd",
    "\xd0\xbe",
    "\xd0\xbf",
    "\xd1\x80",
    "\xd1\x81",
    "\xd1\x82",
    "\xd1\x83",
    "\xd1\x84",
    "\xd1\x85",
    "\xd1\x86",
    "\xd1\x87",
    "\xd1\x88",
    "\xd1\x89",
    "\xd1\x8a",
    "\xd1\x8b",
    "\xd1\x8c",
    "\xd1\x8d",
    "\xd1\x8e",
    "\xd1\x8f",
    "\xe2\x84\x96",
    "\xd1\x91",
    "\xd1\x92",
    "\xd1\x93",
    "\xd1\x94",
    "\xd1\x95",
    "\xd1\x96",
    "\xd1\x97",
    "\xd1\x98",
    "\xd1\x99",
    "\xd1\x9a",
    "\xd1\x9b",
    "\xd1\x9c",
    "\xc2\xa7",
    "\xd1\x9e",
    "\xd1\x9f",
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
    0x00000082 => "\x82",
    0x00000083 => "\x83",
    0x00000084 => "\x84",
    0x00000085 => "\x85",
    0x00000086 => "\x86",
    0x00000087 => "\x87",
    0x00000088 => "\x88",
    0x00000089 => "\x89",
    0x0000008a => "\x8a",
    0x0000008b => "\x8b",
    0x0000008c => "\x8c",
    0x0000008d => "\x8d",
    0x0000008e => "\x8e",
    0x0000008f => "\x8f",
    0x00000090 => "\x90",
    0x00000091 => "\x91",
    0x00000092 => "\x92",
    0x00000093 => "\x93",
    0x00000094 => "\x94",
    0x00000095 => "\x95",
    0x00000096 => "\x96",
    0x00000097 => "\x97",
    0x00000098 => "\x98",
    0x00000099 => "\x99",
    0x0000009a => "\x9a",
    0x0000009b => "\x9b",
    0x0000009c => "\x9c",
    0x0000009d => "\x9d",
    0x0000009e => "\x9e",
    0x0000009f => "\x9f",
    0x000000a0 => "\xa0",
    0x000000a7 => "\xfd",
    0x000000ad => "\xad",
    0x00000401 => "\xa1",
    0x00000402 => "\xa2",
    0x00000403 => "\xa3",
    0x00000404 => "\xa4",
    0x00000405 => "\xa5",
    0x00000406 => "\xa6",
    0x00000407 => "\xa7",
    0x00000408 => "\xa8",
    0x00000409 => "\xa9",
    0x0000040a => "\xaa",
    0x0000040b => "\xab",
    0x0000040c => "\xac",
    0x0000040e => "\xae",
    0x0000040f => "\xaf",
    0x00000410 => "\xb0",
    0x00000411 => "\xb1",
    0x00000412 => "\xb2",
    0x00000413 => "\xb3",
    0x00000414 => "\xb4",
    0x00000415 => "\xb5",
    0x00000416 => "\xb6",
    0x00000417 => "\xb7",
    0x00000418 => "\xb8",
    0x00000419 => "\xb9",
    0x0000041a => "\xba",
    0x0000041b => "\xbb",
    0x0000041c => "\xbc",
    0x0000041d => "\xbd",
    0x0000041e => "\xbe",
    0x0000041f => "\xbf",
    0x00000420 => "\xc0",
    0x00000421 => "\xc1",
    0x00000422 => "\xc2",
    0x00000423 => "\xc3",
    0x00000424 => "\xc4",
    0x00000425 => "\xc5",
    0x00000426 => "\xc6",
    0x00000427 => "\xc7",
    0x00000428 => "\xc8",
    0x00000429 => "\xc9",
    0x0000042a => "\xca",
    0x0000042b => "\xcb",
    0x0000042c => "\xcc",
    0x0000042d => "\xcd",
    0x0000042e => "\xce",
    0x0000042f => "\xcf",
    0x00000430 => "\xd0",
    0x00000431 => "\xd1",
    0x00000432 => "\xd2",
    0x00000433 => "\xd3",
    0x00000434 => "\xd4",
    0x00000435 => "\xd5",
    0x00000436 => "\xd6",
    0x00000437 => "\xd7",
    0x00000438 => "\xd8",
    0x00000439 => "\xd9",
    0x0000043a => "\xda",
    0x0000043b => "\xdb",
    0x0000043c => "\xdc",
    0x0000043d => "\xdd",
    0x0000043e => "\xde",
    0x0000043f => "\xdf",
    0x00000440 => "\xe0",
    0x00000441 => "\xe1",
    0x00000442 => "\xe2",
    0x00000443 => "\xe3",
    0x00000444 => "\xe4",
    0x00000445 => "\xe5",
    0x00000446 => "\xe6",
    0x00000447 => "\xe7",
    0x00000448 => "\xe8",
    0x00000449 => "\xe9",
    0x0000044a => "\xea",
    0x0000044b => "\xeb",
    0x0000044c => "\xec",
    0x0000044d => "\xed",
    0x0000044e => "\xee",
    0x0000044f => "\xef",
    0x00000451 => "\xf1",
    0x00000452 => "\xf2",
    0x00000453 => "\xf3",
    0x00000454 => "\xf4",
    0x00000455 => "\xf5",
    0x00000456 => "\xf6",
    0x00000457 => "\xf7",
    0x00000458 => "\xf8",
    0x00000459 => "\xf9",
    0x0000045a => "\xfa",
    0x0000045b => "\xfb",
    0x0000045c => "\xfc",
    0x0000045e => "\xfe",
    0x0000045f => "\xff",
    0x00002116 => "\xf0",
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

Locale::RecodeData::ISO_8859_5 - Conversion routines for ISO-8859-5

=head1 SYNOPSIS

This module is internal to libintl.  Do not use directly!

=head1 DESCRIPTION

This module is generated and contains the conversion tables and
routines for ISO-8859-5.

=head1 COMMENTS

The following comments have been extracted from the original charmap:

 version: 1.0
  source: ECMA registry
 alias ISO-IR-144
 alias ISO_8859-5:1988
 alias ISO_8859-5
 alias CYRILLIC

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
    80 |  00000080 | PADDING CHARACTER (PAD)
    81 |  00000081 | HIGH OCTET PRESET (HOP)
    82 |  00000082 | BREAK PERMITTED HERE (BPH)
    83 |  00000083 | NO BREAK HERE (NBH)
    84 |  00000084 | INDEX (IND)
    85 |  00000085 | NEXT LINE (NEL)
    86 |  00000086 | START OF SELECTED AREA (SSA)
    87 |  00000087 | END OF SELECTED AREA (ESA)
    88 |  00000088 | CHARACTER TABULATION SET (HTS)
    89 |  00000089 | CHARACTER TABULATION WITH JUSTIFICATION (HTJ)
    8A |  0000008A | LINE TABULATION SET (VTS)
    8B |  0000008B | PARTIAL LINE FORWARD (PLD)
    8C |  0000008C | PARTIAL LINE BACKWARD (PLU)
    8D |  0000008D | REVERSE LINE FEED (RI)
    8E |  0000008E | SINGLE-SHIFT TWO (SS2)
    8F |  0000008F | SINGLE-SHIFT THREE (SS3)
    90 |  00000090 | DEVICE CONTROL STRING (DCS)
    91 |  00000091 | PRIVATE USE ONE (PU1)
    92 |  00000092 | PRIVATE USE TWO (PU2)
    93 |  00000093 | SET TRANSMIT STATE (STS)
    94 |  00000094 | CANCEL CHARACTER (CCH)
    95 |  00000095 | MESSAGE WAITING (MW)
    96 |  00000096 | START OF GUARDED AREA (SPA)
    97 |  00000097 | END OF GUARDED AREA (EPA)
    98 |  00000098 | START OF STRING (SOS)
    99 |  00000099 | SINGLE GRAPHIC CHARACTER INTRODUCER (SGCI)
    9A |  0000009A | SINGLE CHARACTER INTRODUCER (SCI)
    9B |  0000009B | CONTROL SEQUENCE INTRODUCER (CSI)
    9C |  0000009C | STRING TERMINATOR (ST)
    9D |  0000009D | OPERATING SYSTEM COMMAND (OSC)
    9E |  0000009E | PRIVACY MESSAGE (PM)
    9F |  0000009F | APPLICATION PROGRAM COMMAND (APC)
    A0 |  000000A0 | NO-BREAK SPACE
    A1 |  00000401 | CYRILLIC CAPITAL LETTER IO
    A2 |  00000402 | CYRILLIC CAPITAL LETTER DJE (Serbocroatian)
    A3 |  00000403 | CYRILLIC CAPITAL LETTER GJE
    A4 |  00000404 | CYRILLIC CAPITAL LETTER UKRAINIAN IE
    A5 |  00000405 | CYRILLIC CAPITAL LETTER DZE
    A6 |  00000406 | CYRILLIC CAPITAL LETTER BYELORUSSIAN-UKRAINIAN I
    A7 |  00000407 | CYRILLIC CAPITAL LETTER YI (Ukrainian)
    A8 |  00000408 | CYRILLIC CAPITAL LETTER JE
    A9 |  00000409 | CYRILLIC CAPITAL LETTER LJE
    AA |  0000040A | CYRILLIC CAPITAL LETTER NJE
    AB |  0000040B | CYRILLIC CAPITAL LETTER TSHE (Serbocroatian)
    AC |  0000040C | CYRILLIC CAPITAL LETTER KJE
    AD |  000000AD | SOFT HYPHEN
    AE |  0000040E | CYRILLIC CAPITAL LETTER SHORT U (Byelorussian)
    AF |  0000040F | CYRILLIC CAPITAL LETTER DZHE
    B0 |  00000410 | CYRILLIC CAPITAL LETTER A
    B1 |  00000411 | CYRILLIC CAPITAL LETTER BE
    B2 |  00000412 | CYRILLIC CAPITAL LETTER VE
    B3 |  00000413 | CYRILLIC CAPITAL LETTER GHE
    B4 |  00000414 | CYRILLIC CAPITAL LETTER DE
    B5 |  00000415 | CYRILLIC CAPITAL LETTER IE
    B6 |  00000416 | CYRILLIC CAPITAL LETTER ZHE
    B7 |  00000417 | CYRILLIC CAPITAL LETTER ZE
    B8 |  00000418 | CYRILLIC CAPITAL LETTER I
    B9 |  00000419 | CYRILLIC CAPITAL LETTER SHORT I
    BA |  0000041A | CYRILLIC CAPITAL LETTER KA
    BB |  0000041B | CYRILLIC CAPITAL LETTER EL
    BC |  0000041C | CYRILLIC CAPITAL LETTER EM
    BD |  0000041D | CYRILLIC CAPITAL LETTER EN
    BE |  0000041E | CYRILLIC CAPITAL LETTER O
    BF |  0000041F | CYRILLIC CAPITAL LETTER PE
    C0 |  00000420 | CYRILLIC CAPITAL LETTER ER
    C1 |  00000421 | CYRILLIC CAPITAL LETTER ES
    C2 |  00000422 | CYRILLIC CAPITAL LETTER TE
    C3 |  00000423 | CYRILLIC CAPITAL LETTER U
    C4 |  00000424 | CYRILLIC CAPITAL LETTER EF
    C5 |  00000425 | CYRILLIC CAPITAL LETTER HA
    C6 |  00000426 | CYRILLIC CAPITAL LETTER TSE
    C7 |  00000427 | CYRILLIC CAPITAL LETTER CHE
    C8 |  00000428 | CYRILLIC CAPITAL LETTER SHA
    C9 |  00000429 | CYRILLIC CAPITAL LETTER SHCHA
    CA |  0000042A | CYRILLIC CAPITAL LETTER HARD SIGN
    CB |  0000042B | CYRILLIC CAPITAL LETTER YERU
    CC |  0000042C | CYRILLIC CAPITAL LETTER SOFT SIGN
    CD |  0000042D | CYRILLIC CAPITAL LETTER E
    CE |  0000042E | CYRILLIC CAPITAL LETTER YU
    CF |  0000042F | CYRILLIC CAPITAL LETTER YA
    D0 |  00000430 | CYRILLIC SMALL LETTER A
    D1 |  00000431 | CYRILLIC SMALL LETTER BE
    D2 |  00000432 | CYRILLIC SMALL LETTER VE
    D3 |  00000433 | CYRILLIC SMALL LETTER GHE
    D4 |  00000434 | CYRILLIC SMALL LETTER DE
    D5 |  00000435 | CYRILLIC SMALL LETTER IE
    D6 |  00000436 | CYRILLIC SMALL LETTER ZHE
    D7 |  00000437 | CYRILLIC SMALL LETTER ZE
    D8 |  00000438 | CYRILLIC SMALL LETTER I
    D9 |  00000439 | CYRILLIC SMALL LETTER SHORT I
    DA |  0000043A | CYRILLIC SMALL LETTER KA
    DB |  0000043B | CYRILLIC SMALL LETTER EL
    DC |  0000043C | CYRILLIC SMALL LETTER EM
    DD |  0000043D | CYRILLIC SMALL LETTER EN
    DE |  0000043E | CYRILLIC SMALL LETTER O
    DF |  0000043F | CYRILLIC SMALL LETTER PE
    E0 |  00000440 | CYRILLIC SMALL LETTER ER
    E1 |  00000441 | CYRILLIC SMALL LETTER ES
    E2 |  00000442 | CYRILLIC SMALL LETTER TE
    E3 |  00000443 | CYRILLIC SMALL LETTER U
    E4 |  00000444 | CYRILLIC SMALL LETTER EF
    E5 |  00000445 | CYRILLIC SMALL LETTER HA
    E6 |  00000446 | CYRILLIC SMALL LETTER TSE
    E7 |  00000447 | CYRILLIC SMALL LETTER CHE
    E8 |  00000448 | CYRILLIC SMALL LETTER SHA
    E9 |  00000449 | CYRILLIC SMALL LETTER SHCHA
    EA |  0000044A | CYRILLIC SMALL LETTER HARD SIGN
    EB |  0000044B | CYRILLIC SMALL LETTER YERU
    EC |  0000044C | CYRILLIC SMALL LETTER SOFT SIGN
    ED |  0000044D | CYRILLIC SMALL LETTER E
    EE |  0000044E | CYRILLIC SMALL LETTER YU
    EF |  0000044F | CYRILLIC SMALL LETTER YA
    F0 |  00002116 | NUMERO SIGN
    F1 |  00000451 | CYRILLIC SMALL LETTER IO
    F2 |  00000452 | CYRILLIC SMALL LETTER DJE (Serbocroatian)
    F3 |  00000453 | CYRILLIC SMALL LETTER GJE
    F4 |  00000454 | CYRILLIC SMALL LETTER UKRAINIAN IE
    F5 |  00000455 | CYRILLIC SMALL LETTER DZE
    F6 |  00000456 | CYRILLIC SMALL LETTER BYELORUSSIAN-UKRAINIAN I
    F7 |  00000457 | CYRILLIC SMALL LETTER YI (Ukrainian)
    F8 |  00000458 | CYRILLIC SMALL LETTER JE
    F9 |  00000459 | CYRILLIC SMALL LETTER LJE
    FA |  0000045A | CYRILLIC SMALL LETTER NJE
    FB |  0000045B | CYRILLIC SMALL LETTER TSHE (Serbocroatian)
    FC |  0000045C | CYRILLIC SMALL LETTER KJE
    FD |  000000A7 | SECTION SIGN
    FE |  0000045E | CYRILLIC SMALL LETTER SHORT U (Byelorussian)
    FF |  0000045F | CYRILLIC SMALL LETTER DZHE


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
