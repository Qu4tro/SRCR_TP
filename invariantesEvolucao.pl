% Extensão do predicado solucoes: X,Teorema,Solucoes -> {V, F}

solucoes(X, Teorema, _) :-
		call(Teorema),
	    assert(temp(X)),
 	    fail.

solucoes(_, _, Solucoes) :-
		construir(Solucoes).

construir([X | Resto]) :-
		retract(temp(X)),
		!,
		construir(Resto).
construir([]).

nSolucoes(Teorema, N) :-
    findall(1, Teorema, L),
    sumlist(L, N).

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Extensão do predicado comprimento: L, R -> {V, F}

comprimento([], 0).
comprimento([_|T], R) :-
	comprimento(T, X),
	R is 1+X.


% Extensão do predicado que permite a evolucao do conhecimento

evolucao( Termo ) :-
				findall(Invariante, +Termo::Invariante,Lista),
				insercao( Termo),
				teste(Lista).

insercao(Termo) :-
		assert(Termo).

insercao(Termo) :-
		retract(Termo),!,fail.

teste([]).
teste([R|LR]) :-
	R,
	teste(LR).



% #########Invariantes############
% Invariantes de utentes
% Nao deixa introduzir IDs iguais para os utentes
+utente(Codigo, _, _, _) ::
		(nSolucoes(utente(Codigo, _, _, _), 1)).

% Invariantes de cuidados prestados

% Nao deixa introduzir IDs iguais para os cuidados prestados
+cuidadoPrestado(IdServ, _, _, _) ::
		(nSolucoes(cuidadoPrestado(IdServ, _, _, _), 1)).

% Nao deixa introduzir Descrições iguais para os cuidados prestados
+cuidadoPrestado(_, Descr, _, _) ::
		(nSolucoes(cuidadoPrestado(_, Descr, _, _), 1)).



% Nao deixa introduzir IDs iguais para um atoMedico
+atoMedico(IDConsulta, _, _, _, _) ::
		(nSolucoes(atoMedico(IDConsulta, _, _, _, _), 1)).



/* ########## Remover #############*/

% Não deixar remover um utente cujo tem um ato medico associado

-utente(Codigo, _, _, _) :: (nao( atoMedico(_, Codigo, _, _), ), nao(utente(Codigo, _, _, _))).


% Não deixar remover um cuidado prestado cujo tem um ato medico associado

-cuidadoPrestado(Codigo, _, _, _) :: (nao( cuidadoPrestado(Codigo, _, _, _)), nao( cuidadoPrestado(Codigo, _, _, _))).

