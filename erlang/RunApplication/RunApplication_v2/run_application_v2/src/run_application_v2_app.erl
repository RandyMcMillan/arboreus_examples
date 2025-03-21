%%%-------------------------------------------------------------------
%% @doc run_application_v1 public API
%% @end
%%%-------------------------------------------------------------------

-module(run_application_v2_app).
-behaviour(application).

-export([
	start/2,
	stop/1
]).

start(_StartType, _StartArgs) ->
	
	io:format("run_application_v2_app -> Starting application~n"),
	run_application_v2_sup:start_link().

stop(_State) ->
	
	io:format("run_application_v2_app -> Stopping application~n"),
	ok.
