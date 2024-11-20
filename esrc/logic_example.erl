-module(logic_example).

-export([
  example/3
]).


data(N) ->
  case N of 
    1 -> true;
    0 -> false;
    Other -> Other
  end.

example(An, Bn, Op) ->
  case Op of
    %% FIXME: changing this to lazy-end or land1 breaks everything
    <<"land">> -> data(An) andalso data(Bn);
    <<"and">> -> data(An) and data(Bn);
    <<"lor">> -> data(An) orelse data(Bn);
    <<"or">> -> data(An) or data(Bn)
  end.
