-module(n2o_error).
-include_lib("n2o/include/wf.hrl").
-compile(export_all).
-export(?FAULTER_API).

% Plain Text Error Page Render
% Here is sample
%
% ERROR:  error:badarith
%
% STACK:  index:body/0:18
%         index:main/0:8
%         n2o_document:run/1:15

stack(Error, Reason) ->
    [Error, Reason].


error_page(Class,Error) ->
    io_lib:format("ERROR:  ~w:~w~n~n",[Class,Error]) ++
    "STACK: ".