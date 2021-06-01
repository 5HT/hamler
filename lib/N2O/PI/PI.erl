-module('PI').
-compile(export_all).

-include("../../Foreign.hrl").

startPi({'PI',N,Tab,S,M,T,R}) ->
  Res = try
    case n2o_pi:start({pi,N,Tab,S,M,T,'Control.Behaviour.Supervisor.Proxy':translate(R),[]}) of
       {error,X} -> {'Error',"internal"};
       {Pid,Name} -> {'Ok',Pid,Name}
    end
  catch _:_ ->
    {'Error',"exception"}
  end,
  ?IO(Res).
