% Eduardo Abreu
% 9-28-2017
% Integer division of two numbers.

is_integer(0).
is_integer(X) :- is_integer(Y), X is Y + 1 .

divide(N1, N2, R) :- is_integer(R), 
						P1 is R * N2, 
						P2 is (R + 1) * N2, 
						P1 =< N1, P2 > N1 .