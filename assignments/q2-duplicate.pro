myDuplicate([], []).
  
myDuplicate(X, [H|T]) :-
	is_list(H), myFlatten(B, H),
	myFlatten(C,T),
	append(B,C,X),
	append(B,C,X).

myDuplicate(X, [H|T]) :-
	myFlatten(D,T),
	append(H,D,X),
	append(H,D,X).
