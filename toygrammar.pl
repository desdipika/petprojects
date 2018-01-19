np_(det,n).
det_def(the).
det_indef1(a).
det_indef2(an).
ncom_vow_obj(apple). 
ncom_obj(fish).
ncom_obj(book).
ncom(man).
ncom(woman).
npro(wendy).
npro(peter).
npro(arjun).
npro(arpit).
npro(dipika).
npro(tina).
pp(to).

studies(X) :-
	npro(X).
programs(X) :-
	npro(X).	
bakes(X) :-
	npro(X).
skates(X) :-
	npro(X).
writes(X) :-
	npro(X).
sings(X) :-
	npro(X).

likes(X,Y) :-
	npro(X),
	npro(Y),
	not(X=Y).

gives(A,B,C,E,D) :- 
	npro(A),
	(det_def(B);det_indef1(B);det_indef2(B)),
	(ncom_obj(C);ncom_vow_obj(C)),
	pp(E),
	npro(D),
	not(A=D).


np_indef1(X,Y) :-
	det_indef1(X),
	ncom(Y).
np_indef2(X,Y) :- 
	det_indef2(X),
	ncom_vow(Y).
np_def(X,Y) :-
	det_def(X),
	ncom(Y).
np_def(X,Y) :-
	det_def(X),
	ncom_vow(Y).

noun(L):-
	findall(X,(ncom(X);ncom_vow(X)),L). 
determiner(L) :-
	findall(X,(det_def(X);det_indef1(X);det_indef2(X)),L).
pronoun(L) :-
	findall(X,(npro(X)),L). 

