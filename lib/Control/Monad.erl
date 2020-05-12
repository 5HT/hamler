%%---------------------------------------------------------------------------
%% |
%% Module      :  Monad
%% Copyright   :  (c) 2020 EMQ Technologies Co., Ltd.
%% License     :  BSD-style (see the LICENSE file)
%%
%% Maintainer  :  Feng Lee, feng@emqx.io
%%                Yang M, yangm@emqx.io
%% Stability   :  experimental
%% Portability :  portable
%%
%% The Monad Module.
%%
%%---------------------------------------------------------------------------
-module('Monad').

-export([ pureImpl/1
        , bindImpl/2
        , listBindImpl/2
        ]).

-spec(pureImpl(any()) -> any()).
pureImpl(X) -> X.

-spec(bindImpl(any(), mapFun()) -> any()).
bindImpl(X, F) -> F(X).

-spec(listBindImpl(list(any()), mapFun()) -> list(any())).
listBindImpl(L, F) -> lists:flatten(lists:map(F, L)).
