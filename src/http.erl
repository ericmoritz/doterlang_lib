% -*- erlang -*-
%% tools for extracting info from httpc:request's result
-module(http).

-export([body/1, headers/1, status_code/1]).

status_code({{_, StatusCode, _}, _, _}) ->
    StatusCode;
status_code({StatusCode, _}) ->
    StatusCode.

headers({_, Headers, _}) ->
    Headers.

body({_, _, Body}) ->
    Body;
body({_, Body}) ->
    Body.

