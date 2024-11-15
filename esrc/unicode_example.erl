-module(unicode_example).

-export([
  decode_u8/1,
  decode_u8/2,
  decode_u8/3,
  decode_u8/4,
  decode_u8_bin/1,

  encode_u8/1,
  decode_u16/2,
  decode_u16/4,
  encode_u16/1
]).

decode_u8(Ch) ->
  Data = <<Ch:8>>,
  <<Code/utf8>> = Data,
  Code.


decode_u8(Ch1, Ch2) ->
  Data = <<Ch1:8, Ch2:8>>,
  <<Code/utf8>> = Data,
  Code.


decode_u8(Ch1, Ch2, Ch3) ->
  Data = <<Ch1:8, Ch2:8, Ch3:8>>,
  <<Code/utf8>> = Data,
  Code.


decode_u8(Ch1, Ch2, Ch3, Ch4) ->
  Data = <<Ch1:8, Ch2:8, Ch3:8, Ch4:8>>,
  <<Code/utf8>> = Data,
  Code.

decode_u8_bin(Data) ->
  <<Code/utf8, _Rest/binary>> = Data,
  <<Code/utf8>> = Data,
  Code.

encode_u8(Code) ->
  Data = <<Code/utf8>>,
  Data.

decode_u16(Ch1, Ch2) ->
  Data = <<Ch1:8, Ch2:8>>,
  <<Code/utf16>> = Data,
  Code.

decode_u16(Ch1, Ch2, Ch3, Ch4) ->
  Data = <<Ch1:8, Ch2:8, Ch3:8, Ch4:8>>,
  <<Code/utf16>> = Data,
  Code.

encode_u16(Code) ->
  Data = <<Code/utf16>>,
  Data.
