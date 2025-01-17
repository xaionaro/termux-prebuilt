#!/data/data/com.termux/files/usr/bin/false
# vim: set autoindent shiftwidth=4 tabstop=4:

# Conversion routines for CP1253.
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

package Locale::RecodeData::CP1253;

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
    0x20ac,
    0xfffd,
    0x201a,
    0x0192,
    0x201e,
    0x2026,
    0x2020,
    0x2021,
    0xfffd,
    0x2030,
    0xfffd,
    0x2039,
    0xfffd,
    0xfffd,
    0xfffd,
    0xfffd,
    0xfffd,
    0x2018,
    0x2019,
    0x201c,
    0x201d,
    0x2022,
    0x2013,
    0x2014,
    0xfffd,
    0x2122,
    0xfffd,
    0x203a,
    0xfffd,
    0xfffd,
    0xfffd,
    0xfffd,
    0x00a0,
    0x0385,
    0x0386,
    0x00a3,
    0x00a4,
    0x00a5,
    0x00a6,
    0x00a7,
    0x00a8,
    0x00a9,
    0xfffd,
    0x00ab,
    0x00ac,
    0x00ad,
    0x00ae,
    0x2015,
    0x00b0,
    0x00b1,
    0x00b2,
    0x00b3,
    0x0384,
    0x00b5,
    0x00b6,
    0x00b7,
    0x0388,
    0x0389,
    0x038a,
    0x00bb,
    0x038c,
    0x00bd,
    0x038e,
    0x038f,
    0x0390,
    0x0391,
    0x0392,
    0x0393,
    0x0394,
    0x0395,
    0x0396,
    0x0397,
    0x0398,
    0x0399,
    0x039a,
    0x039b,
    0x039c,
    0x039d,
    0x039e,
    0x039f,
    0x03a0,
    0x03a1,
    0xfffd,
    0x03a3,
    0x03a4,
    0x03a5,
    0x03a6,
    0x03a7,
    0x03a8,
    0x03a9,
    0x03aa,
    0x03ab,
    0x03ac,
    0x03ad,
    0x03ae,
    0x03af,
    0x03b0,
    0x03b1,
    0x03b2,
    0x03b3,
    0x03b4,
    0x03b5,
    0x03b6,
    0x03b7,
    0x03b8,
    0x03b9,
    0x03ba,
    0x03bb,
    0x03bc,
    0x03bd,
    0x03be,
    0x03bf,
    0x03c0,
    0x03c1,
    0x03c2,
    0x03c3,
    0x03c4,
    0x03c5,
    0x03c6,
    0x03c7,
    0x03c8,
    0x03c9,
    0x03ca,
    0x03cb,
    0x03cc,
    0x03cd,
    0x03ce,
    0xfffd,
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
    "\xe2\x82\xac",
    "\xef\xbf\xbd",
    "\xe2\x80\x9a",
    "\xc6\x92",
    "\xe2\x80\x9e",
    "\xe2\x80\xa6",
    "\xe2\x80\xa0",
    "\xe2\x80\xa1",
    "\xef\xbf\xbd",
    "\xe2\x80\xb0",
    "\xef\xbf\xbd",
    "\xe2\x80\xb9",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xe2\x80\x98",
    "\xe2\x80\x99",
    "\xe2\x80\x9c",
    "\xe2\x80\x9d",
    "\xe2\x80\xa2",
    "\xe2\x80\x93",
    "\xe2\x80\x94",
    "\xef\xbf\xbd",
    "\xe2\x84\xa2",
    "\xef\xbf\xbd",
    "\xe2\x80\xba",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xef\xbf\xbd",
    "\xc2\xa0",
    "\xce\x85",
    "\xce\x86",
    "\xc2\xa3",
    "\xc2\xa4",
    "\xc2\xa5",
    "\xc2\xa6",
    "\xc2\xa7",
    "\xc2\xa8",
    "\xc2\xa9",
    "\xef\xbf\xbd",
    "\xc2\xab",
    "\xc2\xac",
    "\xc2\xad",
    "\xc2\xae",
    "\xe2\x80\x95",
    "\xc2\xb0",
    "\xc2\xb1",
    "\xc2\xb2",
    "\xc2\xb3",
    "\xce\x84",
    "\xc2\xb5",
    "\xc2\xb6",
    "\xc2\xb7",
    "\xce\x88",
    "\xce\x89",
    "\xce\x8a",
    "\xc2\xbb",
    "\xce\x8c",
    "\xc2\xbd",
    "\xce\x8e",
    "\xce\x8f",
    "\xce\x90",
    "\xce\x91",
    "\xce\x92",
    "\xce\x93",
    "\xce\x94",
    "\xce\x95",
    "\xce\x96",
    "\xce\x97",
    "\xce\x98",
    "\xce\x99",
    "\xce\x9a",
    "\xce\x9b",
    "\xce\x9c",
    "\xce\x9d",
    "\xce\x9e",
    "\xce\x9f",
    "\xce\xa0",
    "\xce\xa1",
    "\xef\xbf\xbd",
    "\xce\xa3",
    "\xce\xa4",
    "\xce\xa5",
    "\xce\xa6",
    "\xce\xa7",
    "\xce\xa8",
    "\xce\xa9",
    "\xce\xaa",
    "\xce\xab",
    "\xce\xac",
    "\xce\xad",
    "\xce\xae",
    "\xce\xaf",
    "\xce\xb0",
    "\xce\xb1",
    "\xce\xb2",
    "\xce\xb3",
    "\xce\xb4",
    "\xce\xb5",
    "\xce\xb6",
    "\xce\xb7",
    "\xce\xb8",
    "\xce\xb9",
    "\xce\xba",
    "\xce\xbb",
    "\xce\xbc",
    "\xce\xbd",
    "\xce\xbe",
    "\xce\xbf",
    "\xcf\x80",
    "\xcf\x81",
    "\xcf\x82",
    "\xcf\x83",
    "\xcf\x84",
    "\xcf\x85",
    "\xcf\x86",
    "\xcf\x87",
    "\xcf\x88",
    "\xcf\x89",
    "\xcf\x8a",
    "\xcf\x8b",
    "\xcf\x8c",
    "\xcf\x8d",
    "\xcf\x8e",
    "\xef\xbf\xbd",
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
    0x000000a0 => "\xa0",
    0x000000a3 => "\xa3",
    0x000000a4 => "\xa4",
    0x000000a5 => "\xa5",
    0x000000a6 => "\xa6",
    0x000000a7 => "\xa7",
    0x000000a8 => "\xa8",
    0x000000a9 => "\xa9",
    0x000000ab => "\xab",
    0x000000ac => "\xac",
    0x000000ad => "\xad",
    0x000000ae => "\xae",
    0x000000b0 => "\xb0",
    0x000000b1 => "\xb1",
    0x000000b2 => "\xb2",
    0x000000b3 => "\xb3",
    0x000000b5 => "\xb5",
    0x000000b6 => "\xb6",
    0x000000b7 => "\xb7",
    0x000000bb => "\xbb",
    0x000000bd => "\xbd",
    0x00000192 => "\x83",
    0x00000384 => "\xb4",
    0x00000385 => "\xa1",
    0x00000386 => "\xa2",
    0x00000388 => "\xb8",
    0x00000389 => "\xb9",
    0x0000038a => "\xba",
    0x0000038c => "\xbc",
    0x0000038e => "\xbe",
    0x0000038f => "\xbf",
    0x00000390 => "\xc0",
    0x00000391 => "\xc1",
    0x00000392 => "\xc2",
    0x00000393 => "\xc3",
    0x00000394 => "\xc4",
    0x00000395 => "\xc5",
    0x00000396 => "\xc6",
    0x00000397 => "\xc7",
    0x00000398 => "\xc8",
    0x00000399 => "\xc9",
    0x0000039a => "\xca",
    0x0000039b => "\xcb",
    0x0000039c => "\xcc",
    0x0000039d => "\xcd",
    0x0000039e => "\xce",
    0x0000039f => "\xcf",
    0x000003a0 => "\xd0",
    0x000003a1 => "\xd1",
    0x000003a3 => "\xd3",
    0x000003a4 => "\xd4",
    0x000003a5 => "\xd5",
    0x000003a6 => "\xd6",
    0x000003a7 => "\xd7",
    0x000003a8 => "\xd8",
    0x000003a9 => "\xd9",
    0x000003aa => "\xda",
    0x000003ab => "\xdb",
    0x000003ac => "\xdc",
    0x000003ad => "\xdd",
    0x000003ae => "\xde",
    0x000003af => "\xdf",
    0x000003b0 => "\xe0",
    0x000003b1 => "\xe1",
    0x000003b2 => "\xe2",
    0x000003b3 => "\xe3",
    0x000003b4 => "\xe4",
    0x000003b5 => "\xe5",
    0x000003b6 => "\xe6",
    0x000003b7 => "\xe7",
    0x000003b8 => "\xe8",
    0x000003b9 => "\xe9",
    0x000003ba => "\xea",
    0x000003bb => "\xeb",
    0x000003bc => "\xec",
    0x000003bd => "\xed",
    0x000003be => "\xee",
    0x000003bf => "\xef",
    0x000003c0 => "\xf0",
    0x000003c1 => "\xf1",
    0x000003c2 => "\xf2",
    0x000003c3 => "\xf3",
    0x000003c4 => "\xf4",
    0x000003c5 => "\xf5",
    0x000003c6 => "\xf6",
    0x000003c7 => "\xf7",
    0x000003c8 => "\xf8",
    0x000003c9 => "\xf9",
    0x000003ca => "\xfa",
    0x000003cb => "\xfb",
    0x000003cc => "\xfc",
    0x000003cd => "\xfd",
    0x000003ce => "\xfe",
    0x00002013 => "\x96",
    0x00002014 => "\x97",
    0x00002015 => "\xaf",
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
    0x000020ac => "\x80",
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

Locale::RecodeData::CP1253 - Conversion routines for CP1253

=head1 SYNOPSIS

This module is internal to libintl.  Do not use directly!

=head1 DESCRIPTION

This module is generated and contains the conversion tables and
routines for CP1253.

=head1 COMMENTS

The following comments have been extracted from the original charmap:

 version: 1.0
 repertoiremap: mnemonic,ds
  source: UNICODE 1.0
 alias MS-GREEK

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
    80 |  000020AC | EURO SIGN
    82 |  0000201A | SINGLE LOW-9 QUOTATION MARK
    83 |  00000192 | LATIN SMALL LETTER F WITH HOOK
    84 |  0000201E | DOUBLE LOW-9 QUOTATION MARK
    85 |  00002026 | HORIZONTAL ELLIPSIS
    86 |  00002020 | DAGGER
    87 |  00002021 | DOUBLE DAGGER
    89 |  00002030 | PER MILLE SIGN
    8B |  00002039 | SINGLE LEFT-POINTING ANGLE QUOTATION MARK
    91 |  00002018 | LEFT SINGLE QUOTATION MARK
    92 |  00002019 | RIGHT SINGLE QUOTATION MARK
    93 |  0000201C | LEFT DOUBLE QUOTATION MARK
    94 |  0000201D | RIGHT DOUBLE QUOTATION MARK
    95 |  00002022 | BULLET
    96 |  00002013 | EN DASH
    97 |  00002014 | EM DASH
    99 |  00002122 | TRADE MARK SIGN
    9B |  0000203A | SINGLE RIGHT-POINTING ANGLE QUOTATION MARK
    A0 |  000000A0 | NO-BREAK SPACE
    A1 |  00000385 | GREEK DIALYTIKA TONOS
    A2 |  00000386 | GREEK CAPITAL LETTER ALPHA WITH TONOS
    A3 |  000000A3 | POUND SIGN
    A4 |  000000A4 | CURRENCY SIGN
    A5 |  000000A5 | YEN SIGN
    A6 |  000000A6 | BROKEN BAR
    A7 |  000000A7 | SECTION SIGN
    A8 |  000000A8 | DIAERESIS
    A9 |  000000A9 | COPYRIGHT SIGN
    AB |  000000AB | LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
    AC |  000000AC | NOT SIGN
    AD |  000000AD | SOFT HYPHEN
    AE |  000000AE | REGISTERED SIGN
    AF |  00002015 | HORIZONTAL BAR
    B0 |  000000B0 | DEGREE SIGN
    B1 |  000000B1 | PLUS-MINUS SIGN
    B2 |  000000B2 | SUPERSCRIPT TWO
    B3 |  000000B3 | SUPERSCRIPT THREE
    B4 |  00000384 | GREEK TONOS
    B5 |  000000B5 | MICRO SIGN
    B6 |  000000B6 | PILCROW SIGN
    B7 |  000000B7 | MIDDLE DOT
    B8 |  00000388 | GREEK CAPITAL LETTER EPSILON WITH TONOS
    B9 |  00000389 | GREEK CAPITAL LETTER ETA WITH TONOS
    BA |  0000038A | GREEK CAPITAL LETTER IOTA WITH TONOS
    BB |  000000BB | RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
    BC |  0000038C | GREEK CAPITAL LETTER OMICRON WITH TONOS
    BD |  000000BD | VULGAR FRACTION ONE HALF
    BE |  0000038E | GREEK CAPITAL LETTER UPSILON WITH TONOS
    BF |  0000038F | GREEK CAPITAL LETTER OMEGA WITH TONOS
    C0 |  00000390 | GREEK SMALL LETTER IOTA WITH DIALYTIKA AND TONOS
    C1 |  00000391 | GREEK CAPITAL LETTER ALPHA
    C2 |  00000392 | GREEK CAPITAL LETTER BETA
    C3 |  00000393 | GREEK CAPITAL LETTER GAMMA
    C4 |  00000394 | GREEK CAPITAL LETTER DELTA
    C5 |  00000395 | GREEK CAPITAL LETTER EPSILON
    C6 |  00000396 | GREEK CAPITAL LETTER ZETA
    C7 |  00000397 | GREEK CAPITAL LETTER ETA
    C8 |  00000398 | GREEK CAPITAL LETTER THETA
    C9 |  00000399 | GREEK CAPITAL LETTER IOTA
    CA |  0000039A | GREEK CAPITAL LETTER KAPPA
    CB |  0000039B | GREEK CAPITAL LETTER LAMDA
    CC |  0000039C | GREEK CAPITAL LETTER MU
    CD |  0000039D | GREEK CAPITAL LETTER NU
    CE |  0000039E | GREEK CAPITAL LETTER XI
    CF |  0000039F | GREEK CAPITAL LETTER OMICRON
    D0 |  000003A0 | GREEK CAPITAL LETTER PI
    D1 |  000003A1 | GREEK CAPITAL LETTER RHO
    D3 |  000003A3 | GREEK CAPITAL LETTER SIGMA
    D4 |  000003A4 | GREEK CAPITAL LETTER TAU
    D5 |  000003A5 | GREEK CAPITAL LETTER UPSILON
    D6 |  000003A6 | GREEK CAPITAL LETTER PHI
    D7 |  000003A7 | GREEK CAPITAL LETTER CHI
    D8 |  000003A8 | GREEK CAPITAL LETTER PSI
    D9 |  000003A9 | GREEK CAPITAL LETTER OMEGA
    DA |  000003AA | GREEK CAPITAL LETTER IOTA WITH DIALYTIKA
    DB |  000003AB | GREEK CAPITAL LETTER UPSILON WITH DIALYTIKA
    DC |  000003AC | GREEK SMALL LETTER ALPHA WITH TONOS
    DD |  000003AD | GREEK SMALL LETTER EPSILON WITH TONOS
    DE |  000003AE | GREEK SMALL LETTER ETA WITH TONOS
    DF |  000003AF | GREEK SMALL LETTER IOTA WITH TONOS
    E0 |  000003B0 | GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND TONOS
    E1 |  000003B1 | GREEK SMALL LETTER ALPHA
    E2 |  000003B2 | GREEK SMALL LETTER BETA
    E3 |  000003B3 | GREEK SMALL LETTER GAMMA
    E4 |  000003B4 | GREEK SMALL LETTER DELTA
    E5 |  000003B5 | GREEK SMALL LETTER EPSILON
    E6 |  000003B6 | GREEK SMALL LETTER ZETA
    E7 |  000003B7 | GREEK SMALL LETTER ETA
    E8 |  000003B8 | GREEK SMALL LETTER THETA
    E9 |  000003B9 | GREEK SMALL LETTER IOTA
    EA |  000003BA | GREEK SMALL LETTER KAPPA
    EB |  000003BB | GREEK SMALL LETTER LAMDA
    EC |  000003BC | GREEK SMALL LETTER MU
    ED |  000003BD | GREEK SMALL LETTER NU
    EE |  000003BE | GREEK SMALL LETTER XI
    EF |  000003BF | GREEK SMALL LETTER OMICRON
    F0 |  000003C0 | GREEK SMALL LETTER PI
    F1 |  000003C1 | GREEK SMALL LETTER RHO
    F2 |  000003C2 | GREEK SMALL LETTER FINAL SIGMA
    F3 |  000003C3 | GREEK SMALL LETTER SIGMA
    F4 |  000003C4 | GREEK SMALL LETTER TAU
    F5 |  000003C5 | GREEK SMALL LETTER UPSILON
    F6 |  000003C6 | GREEK SMALL LETTER PHI
    F7 |  000003C7 | GREEK SMALL LETTER CHI
    F8 |  000003C8 | GREEK SMALL LETTER PSI
    F9 |  000003C9 | GREEK SMALL LETTER OMEGA
    FA |  000003CA | GREEK SMALL LETTER IOTA WITH DIALYTIKA
    FB |  000003CB | GREEK SMALL LETTER UPSILON WITH DIALYTIKA
    FC |  000003CC | GREEK SMALL LETTER OMICRON WITH TONOS
    FD |  000003CD | GREEK SMALL LETTER UPSILON WITH TONOS
    FE |  000003CE | GREEK SMALL LETTER OMEGA WITH TONOS


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
