:- dynamic lookup/1.

bfs(Initial, Goal, Plan) :-

	bfsearch([[Initial]], Initial, Goal, Plan).

bfsearch([[Goal|Plan_]|_], _, Goal, Plan) :-

	reverse(Plan_, Plan),

	\+lookup(Plan),

	assert(lookup(Plan)).

bfsearch([[Current|CurrentPlan]|Rest], Initial, Goal, Plan) :-


/*
	findall([Destination | [Action|CurrentPlan]],

					(action(Action, Current, Destination),

					\+member(Action, [Current|CurrentPlan]),

					Current \= Destination, Destination \= Initial),

	Destinations),
	
	*/
/*	
	
	(action(Action, Current, Destination),

					\+member(Action, [Current|CurrentPlan]),

					Current \= Destination, Destination \= Initial),

*/

	%append(Rest, Destinations, Queue),
	append(Rest, Destination, Queue),

	bfsearch(Queue, Initial, Goal, Plan).
	

link(1,2).
link(2,4).
link(4,8).
link(8,999).
link(X,X).

%connect(X,X).

connect(X,Z):-
	
	connect(X,Y),connect(Y,Z)

	.


	
%action(go(A,B),A,B):-link(A,B).
/*
action(go(A,B),A,C):-

	link(A,B),action(go(B,_),B,C)

%	link(A,B),link(B,C)
	%action(go(A,B),A,B),action(go(B,C),B,C)

.


*/

%action\3 is of the form action(go(1,2),1,2).
/*
I have tried multiple things: Current \= Destination, Destination \= Initial, putting the Initial in the predicate so you can easily prune everything that goes back to the initial state. I am honestly out of options, does anyone have any idea what to do and how to make my code more efficient?

Just in case, this is the form we have to solve:

?- bfs(1,8,Plan).

*/