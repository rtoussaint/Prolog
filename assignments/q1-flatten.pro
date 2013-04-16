myFlatten([], []).
  
myFlatten(X, [H|T]) :-
	is_list(H), myFlatten(B, H),
	myFlatten(C,T),
	append(B,C,X).

myFlatten(X, [H|T]) :-
	myFlatten(D,T),
	append(H,D,X).

