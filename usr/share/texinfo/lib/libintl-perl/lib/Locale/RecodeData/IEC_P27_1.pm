#!/data/data/com.termux/files/usr/bin/false
# vim: set autoindent shiftwidth=4 tabstop=4:

# Conversion routines for IEC_P27-1.
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

package Locale::RecodeData::IEC_P27_1;

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
    0x02c7,
    0x2261,
    0x2227,
    0x2228,
    0x2229,
    0x222a,
    0x2282,
    0x2283,
    0x21d0,
    0x21d2,
    0x2234,
    0x2235,
    0x2208,
    0x220b,
    0x2286,
    0x2287,
    0x222b,
    0x222e,
    0x221e,
    0x2207,
    0x2202,
    0x223c,
    0x2248,
    0x2243,
    0x2245,
    0x2264,
    0x2260,
    0x2265,
    0x2194,
    0x00ac,
    0x2200,
    0x2203,
    0x05d0,
    0x25a1,
    0x2225,
    0x0393,
    0x0394,
    0x22a5,
    0x2220,
    0x221f,
    0x0398,
    0x2329,
    0x232a,
    0x039b,
    0x2032,
    0x2033,
    0x039e,
    0x2213,
    0x03a0,
    0x00b2,
    0x03a3,
    0x00d7,
    0x00b3,
    0x03a5,
    0x03a6,
    0x00b7,
    0x03a8,
    0x03a9,
    0x2205,
    0x21c0,
    0x221a,
    0x0192,
    0x221d,
    0x00b1,
    0x00b0,
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
    0x2030,
    0x03c0,
    0x03c1,
    0x03c3,
    0x00f7,
    0x03c4,
    0x03c5,
    0x03c6,
    0x03c7,
    0x03c8,
    0x03c9,
    0x2020,
    0x2190,
    0x2191,
    0x2192,
    0x2193,
    0x203e,
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
    "\xcb\x87",
    "\xe2\x89\xa1",
    "\xe2\x88\xa7",
    "\xe2\x88\xa8",
    "\xe2\x88\xa9",
    "\xe2\x88\xaa",
    "\xe2\x8a\x82",
    "\xe2\x8a\x83",
    "\xe2\x87\x90",
    "\xe2\x87\x92",
    "\xe2\x88\xb4",
    "\xe2\x88\xb5",
    "\xe2\x88\x88",
    "\xe2\x88\x8b",
    "\xe2\x8a\x86",
    "\xe2\x8a\x87",
    "\xe2\x88\xab",
    "\xe2\x88\xae",
    "\xe2\x88\x9e",
    "\xe2\x88\x87",
    "\xe2\x88\x82",
    "\xe2\x88\xbc",
    "\xe2\x89\x88",
    "\xe2\x89\x83",
    "\xe2\x89\x85",
    "\xe2\x89\xa4",
    "\xe2\x89\xa0",
    "\xe2\x89\xa5",
    "\xe2\x86\x94",
    "\xc2\xac",
    "\xe2\x88\x80",
    "\xe2\x88\x83",
    "\xd7\x90",
    "\xe2\x96\xa1",
    "\xe2\x88\xa5",
    "\xce\x93",
    "\xce\x94",
    "\xe2\x8a\xa5",
    "\xe2\x88\xa0",
    "\xe2\x88\x9f",
    "\xce\x98",
    "\xe2\x8c\xa9",
    "\xe2\x8c\xaa",
    "\xce\x9b",
    "\xe2\x80\xb2",
    "\xe2\x80\xb3",
    "\xce\x9e",
    "\xe2\x88\x93",
    "\xce\xa0",
    "\xc2\xb2",
    "\xce\xa3",
    "\xc3\x97",
    "\xc2\xb3",
    "\xce\xa5",
    "\xce\xa6",
    "\xc2\xb7",
    "\xce\xa8",
    "\xce\xa9",
    "\xe2\x88\x85",
    "\xe2\x87\x80",
    "\xe2\x88\x9a",
    "\xc6\x92",
    "\xe2\x88\x9d",
    "\xc2\xb1",
    "\xc2\xb0",
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
    "\xe2\x80\xb0",
    "\xcf\x80",
    "\xcf\x81",
    "\xcf\x83",
    "\xc3\xb7",
    "\xcf\x84",
    "\xcf\x85",
    "\xcf\x86",
    "\xcf\x87",
    "\xcf\x88",
    "\xcf\x89",
    "\xe2\x80\xa0",
    "\xe2\x86\x90",
    "\xe2\x86\x91",
    "\xe2\x86\x92",
    "\xe2\x86\x93",
    "\xe2\x80\xbe",
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
    0x000000ac => "\xbd",
    0x000000b0 => "\xe0",
    0x000000b1 => "\xdf",
    0x000000b2 => "\xd1",
    0x000000b3 => "\xd4",
    0x000000b7 => "\xd7",
    0x000000d7 => "\xd3",
    0x000000f7 => "\xf3",
    0x00000192 => "\xdd",
    0x000002c7 => "\xa0",
    0x00000393 => "\xc3",
    0x00000394 => "\xc4",
    0x00000398 => "\xc8",
    0x0000039b => "\xcb",
    0x0000039e => "\xce",
    0x000003a0 => "\xd0",
    0x000003a3 => "\xd2",
    0x000003a5 => "\xd5",
    0x000003a6 => "\xd6",
    0x000003a8 => "\xd8",
    0x000003a9 => "\xd9",
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
    0x000003c0 => "\xf0",
    0x000003c1 => "\xf1",
    0x000003c3 => "\xf2",
    0x000003c4 => "\xf4",
    0x000003c5 => "\xf5",
    0x000003c6 => "\xf6",
    0x000003c7 => "\xf7",
    0x000003c8 => "\xf8",
    0x000003c9 => "\xf9",
    0x000005d0 => "\xc0",
    0x00002020 => "\xfa",
    0x00002030 => "\xef",
    0x00002032 => "\xcc",
    0x00002033 => "\xcd",
    0x0000203e => "\xff",
    0x00002190 => "\xfb",
    0x00002191 => "\xfc",
    0x00002192 => "\xfd",
    0x00002193 => "\xfe",
    0x00002194 => "\xbc",
    0x000021c0 => "\xdb",
    0x000021d0 => "\xa8",
    0x000021d2 => "\xa9",
    0x00002200 => "\xbe",
    0x00002202 => "\xb4",
    0x00002203 => "\xbf",
    0x00002205 => "\xda",
    0x00002207 => "\xb3",
    0x00002208 => "\xac",
    0x0000220b => "\xad",
    0x00002213 => "\xcf",
    0x0000221a => "\xdc",
    0x0000221d => "\xde",
    0x0000221e => "\xb2",
    0x0000221f => "\xc7",
    0x00002220 => "\xc6",
    0x00002225 => "\xc2",
    0x00002227 => "\xa2",
    0x00002228 => "\xa3",
    0x00002229 => "\xa4",
    0x0000222a => "\xa5",
    0x0000222b => "\xb0",
    0x0000222e => "\xb1",
    0x00002234 => "\xaa",
    0x00002235 => "\xab",
    0x0000223c => "\xb5",
    0x00002243 => "\xb7",
    0x00002245 => "\xb8",
    0x00002248 => "\xb6",
    0x00002260 => "\xba",
    0x00002261 => "\xa1",
    0x00002264 => "\xb9",
    0x00002265 => "\xbb",
    0x00002282 => "\xa6",
    0x00002283 => "\xa7",
    0x00002286 => "\xae",
    0x00002287 => "\xaf",
    0x000022a5 => "\xc5",
    0x00002329 => "\xc9",
    0x0000232a => "\xca",
    0x000025a1 => "\xc1",
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

Locale::RecodeData::IEC_P27_1 - Conversion routines for IEC_P27_1

=head1 SYNOPSIS

This module is internal to libintl.  Do not use directly!

=head1 DESCRIPTION

This module is generated and contains the conversion tables and
routines for IEC_P27-1.

=head1 COMMENTS

The following comments have been extracted from the original charmap:

 version: 1.0
  source: ECMA registry
 alias ISO-IR-143

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
    A0 |  000002C7 | CARON (Mandarin Chinese third tone)
    A1 |  00002261 | IDENTICAL TO
    A2 |  00002227 | LOGICAL AND
    A3 |  00002228 | LOGICAL OR
    A4 |  00002229 | INTERSECTION
    A5 |  0000222A | UNION
    A6 |  00002282 | SUBSET OF
    A7 |  00002283 | SUPERSET OF
    A8 |  000021D0 | LEFTWARDS DOUBLE ARROW
    A9 |  000021D2 | RIGHTWARDS DOUBLE ARROW
    AA |  00002234 | THEREFORE
    AB |  00002235 | BECAUSE
    AC |  00002208 | ELEMENT OF
    AD |  0000220B | CONTAINS AS MEMBER
    AE |  00002286 | SUBSET OF OR EQUAL TO
    AF |  00002287 | SUPERSET OF OR EQUAL TO
    B0 |  0000222B | INTEGRAL
    B1 |  0000222E | CONTOUR INTEGRAL
    B2 |  0000221E | INFINITY
    B3 |  00002207 | NABLA
    B4 |  00002202 | PARTIAL DIFFERENTIAL
    B5 |  0000223C | TILDE OPERATOR
    B6 |  00002248 | ALMOST EQUAL TO
    B7 |  00002243 | ASYMPTOTICALLY EQUAL TO
    B8 |  00002245 | APPROXIMATELY EQUAL TO
    B9 |  00002264 | LESS-THAN OR EQUAL TO
    BA |  00002260 | NOT EQUAL TO
    BB |  00002265 | GREATER-THAN OR EQUAL TO
    BC |  00002194 | LEFT RIGHT ARROW
    BD |  000000AC | NOT SIGN
    BE |  00002200 | FOR ALL
    BF |  00002203 | THERE EXISTS
    C0 |  000005D0 | HEBREW LETTER ALEF
    C1 |  000025A1 | WHITE SQUARE
    C2 |  00002225 | PARALLEL TO
    C3 |  00000393 | GREEK CAPITAL LETTER GAMMA
    C4 |  00000394 | GREEK CAPITAL LETTER DELTA
    C5 |  000022A5 | UP TACK
    C6 |  00002220 | ANGLE
    C7 |  0000221F | RIGHT ANGLE
    C8 |  00000398 | GREEK CAPITAL LETTER THETA
    C9 |  00002329 | LEFT-POINTING ANGLE BRACKET
    CA |  0000232A | RIGHT-POINTING ANGLE BRACKET
    CB |  0000039B | GREEK CAPITAL LETTER LAMDA
    CC |  00002032 | PRIME
    CD |  00002033 | DOUBLE PRIME
    CE |  0000039E | GREEK CAPITAL LETTER XI
    CF |  00002213 | MINUS-OR-PLUS SIGN
    D0 |  000003A0 | GREEK CAPITAL LETTER PI
    D1 |  000000B2 | SUPERSCRIPT TWO
    D2 |  000003A3 | GREEK CAPITAL LETTER SIGMA
    D3 |  000000D7 | MULTIPLICATION SIGN
    D4 |  000000B3 | SUPERSCRIPT THREE
    D5 |  000003A5 | GREEK CAPITAL LETTER UPSILON
    D6 |  000003A6 | GREEK CAPITAL LETTER PHI
    D7 |  000000B7 | MIDDLE DOT
    D8 |  000003A8 | GREEK CAPITAL LETTER PSI
    D9 |  000003A9 | GREEK CAPITAL LETTER OMEGA
    DA |  00002205 | EMPTY SET
    DB |  000021C0 | RIGHTWARDS HARPOON WITH BARB UPWARDS
    DC |  0000221A | SQUARE ROOT
    DD |  00000192 | LATIN SMALL LETTER F WITH HOOK
    DE |  0000221D | PROPORTIONAL TO
    DF |  000000B1 | PLUS-MINUS SIGN
    E0 |  000000B0 | DEGREE SIGN
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
    EF |  00002030 | PER MILLE SIGN
    F0 |  000003C0 | GREEK SMALL LETTER PI
    F1 |  000003C1 | GREEK SMALL LETTER RHO
    F2 |  000003C3 | GREEK SMALL LETTER SIGMA
    F3 |  000000F7 | DIVISION SIGN
    F4 |  000003C4 | GREEK SMALL LETTER TAU
    F5 |  000003C5 | GREEK SMALL LETTER UPSILON
    F6 |  000003C6 | GREEK SMALL LETTER PHI
    F7 |  000003C7 | GREEK SMALL LETTER CHI
    F8 |  000003C8 | GREEK SMALL LETTER PSI
    F9 |  000003C9 | GREEK SMALL LETTER OMEGA
    FA |  00002020 | DAGGER
    FB |  00002190 | LEFTWARDS ARROW
    FC |  00002191 | UPWARDS ARROW
    FD |  00002192 | RIGHTWARDS ARROW
    FE |  00002193 | DOWNWARDS ARROW
    FF |  0000203E | OVERLINE


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
