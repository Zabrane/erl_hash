%%%-------------------------------------------------------------------
%% @doc erl_hash public API
%% @end
%%%-------------------------------------------------------------------

-module(erl_hash_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    erl_hash_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
