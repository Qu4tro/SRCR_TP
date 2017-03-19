:- op( 900,xfy,'::' ).
:- dynamic temp/1.


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
				insercao(Termo),
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

% Nao deixar remover um paciente enquanto estiver a ser consultado por um profissional, 
% ou estiver num servico ou numa instituicao
% -utente(Codigo,Nome) :: (nao(ins_serv_uten_profi(_,_,Codigo,_)),nao(utente(Codigo,Nome))).


% % Nao deixar remover um profissional enquanto estiver a ser consultado por um profissional, 
% % ou estiver num servico ou numa instituicao
% -profissional(Codigo,Nome) :: (nao(ins_serv_uten_profi(_,_,_,Codigo)),nao(profissional(Codigo,Nome))).


% % Nao deixar remover um servico com profissionais a trabalhar nele ou utentes a usar-lo, ou estar na instituicao
% -servico(Nome) :: (nao(ins_serv_uten_profi(_,Nome,_,_))).


% % Nao deixar remover uma instituicao com profissionais, utentes, ou servicos
% -instituicao(Nome) :: (nao(ins_serv_uten_profi(Nome,_,_,_))).
