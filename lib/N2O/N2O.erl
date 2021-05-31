-module('N2O').
-compile(export_all).

initContext() ->
  Cx = {cx, [], [], [], [], [], [], [], [], bert, [], [], [], [], [], []},
  erlang:put(context, Cx),
  Cx.

