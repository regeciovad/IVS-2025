%%% Erlang example
%%% On Eva server, run command `erl`
%%% Then compile the code using `c:c(erlang_pingpong).`
%%% Run code with `erlang_pingpong:start().`
%%% Exit with ctrl+c + a + enter

-module(erlang_pingpong).
-export([start/0, ping/2, pong/0]).

ping(0, Pong_PID) ->
	Pong_PID ! finished,
	io:format("Ping finished~n", []);

ping(N, Pong_PID) ->
	Pong_PID ! {ping, self()},
	receive
		pong ->
			io:format("Ping called with ~p, sending pong~n", [N])
	end,
	ping(N - 1, Pong_PID).

pong() ->
	receive
		finished ->
			io:format("Pong finished~n", []);
		{ping, Ping_PID} ->
			io:format("Pong called, sending ping~n", []),
			Ping_PID ! pong,
			pong()
	end.

start() ->
	Pong_PID = spawn(erlang_pingpong, pong, []),
	spawn(erlang_pingpong, ping, [3, Pong_PID]).