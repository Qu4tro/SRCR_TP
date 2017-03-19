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

% Extensão do predicado que permite a evolucao do conhecimento

devolucao( Termo ) :-
    findall(Invariante, -Termo::Invariante,Lista),
    remocao(Termo),
    teste(Lista).

evolucao( Termo ) :-
				findall(Invariante, +Termo::Invariante,Lista),
				insercao(Termo),
				teste(Lista).

insercao(Termo) :-
		assert(Termo).
insercao(Termo) :-
		retract(Termo),!,fail.

remocao(Termo) :-
		retract(Termo).
remocao(Termo) :-
		assert(Termo),!,fail.

teste([]).
teste([R|LR]) :-
	R,
	teste(LR).


% ################################
% ######### Invariantes ##########
% ################################

% Invariantes de utentes

    % Nao deixa introduzir IDs iguais para os utentes
+utente(Codigo, _, _, _) ::
		(nSolucoes(utente(Codigo, _, _, _), 1)).

    % Garantir que a idade é válida
+utente(_, _, Idade, _) ::
        (Idade >= 0).
    
% Invariantes de cuidados prestados

    % Nao deixa introduzir IDs iguais para os cuidados prestados
+cuidadoPrestado(IdServ, _, _, _) ::
		(nSolucoes(cuidadoPrestado(IdServ, _, _, _), 1)).

    % Nao deixa introduzir Descrições iguais para os cuidados prestados
+cuidadoPrestado(_, Descr, _, _) ::
		(nSolucoes(cuidadoPrestado(_, Descr, _, _), 1)).

% Invariantes de cuidados prestados

    % Nao deixa introduzir IDs iguais para um atoMedico
+atoMedico(IDConsulta, _, _, _, _) ::
		(nSolucoes(atoMedico(IDConsulta, _, _, _, _), 1)).

    % Garantir que a data é válida
+atoMedico(_, Data, _, _, _) ::
    (true).
        

    % Garantir que utente existe
+atoMedico(_, _, IDUtente, _, _) ::
		(nSolucoes(utente(IDUtente, _, _, _), 1)).

    % Garantir que serviço existe
+atoMedico(_, _, _, IDServ, _) ::
		(nSolucoes(cuidadoPrestado(IDServ, _, _, _), 1)).

    % Garantir que o custo é válido
+atoMedico(_, _, _, _, Custo) ::
        (Custo >= 0).


/* ########## Remover #############*/

% Não deixar remover um utente cujo tem um ato medico associado

-utente(Codigo, _, _, _) :: (nao(atoMedico(_, Codigo, _, _)), 
                             nao(utente(Codigo, _, _, _))).


% % Não deixar remover um cuidado prestado cujo tem um ato medico associado

-cuidadoPrestado(Codigo, _, _, _) :: (nao(cuidadoPrestado(Codigo, _, _, _)),
                                      nao( cuidadoPrestado(Codigo, _, _, _))).

