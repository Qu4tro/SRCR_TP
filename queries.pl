
% utente: #IdUt, Nome, Idade, Morada
% cuidado prestado: #IdServ, Descrição, Instituição, Cidade
% ato médico: Data, #IdUt, #IdServ, Custo

:- dynamic utente/4.
:- dynamic cuidadoPrestado/4.
:- dynamic atoMedico/5.

:- consult('conhecimento.pl'), consult('invariantes.pl').

% Registar utentes, cuidados prestados e atos médicos;
registarUtente(ID, Nome, Idade, Morada) :- evolucao(utente(ID, Nome, Idade, Morada)).
registarCuidado(ID, Desc, Instiuicao, Cidade) :- evolucao(cuidadoPrestado(ID, Desc, Instiuicao, Cidade)).
registarAtoMedico(ID, Data, IDUt, IDServ, Custo) :- evolucao(atoMedico(ID, Data, IDUt, IDServ, Custo)).

removerRegisto(ID) :- byID(ID, R), devolucao(R).


listNotEmpty([]) :- fail.
listNotEmpty([_|_]).

% Identificar os utentes por critérios de seleção;
utentesComNome(Nome, S)     :- findall(ID, utente(ID, Nome, _, _), S).
utentesComIdade(Idade, S)   :- findall(ID, utente(ID, _, Idade, _), S).
utentesComMorada(Morada, S) :- findall(ID, utente(ID, _, _, Morada), S).

find(X, Y) :- findall(X, X, [Y]).
byID(ID, U) :- find(utente(ID, _, _, _), U).
byID(ID, C) :- find(cuidadoPrestado(ID, _, _, _), C).
byID(ID, A) :- find(atoMedico(ID, _, _, _, _), A).

existsID(ID) :- byID(ID, _).

% Identificar as instituições prestadoras de cuidados de saúde;
instituicoes(S) :- findall(Instituicao, cuidadoPrestado(_, _, Instituicao, _), S1), sort(S1, S).

% Identificar os cuidados prestados por instituição/cidade
cuidadosPrestadosEm(Instituicao, S) :- findall(ID, cuidadoPrestado(ID, _, Instituicao, _), S),
                                       listNotEmpty(S).
cuidadosPrestadosEm(Cidade, S)      :- findall(ID, cuidadoPrestado(ID, _, _, Cidade), S).

% Identificar os utentes de uma instituição/serviço
utentesDe(Servico, S)     :- findall(IDUtente, atoMedico(_, _, IDUtente, Servico, _), S),
                             listNotEmpty(S).
utentesDe(Instituicao, S) :- findall(IDUtente, (atoMedico(_, _, IDUtente, Servico, _),
                                                cuidadoPrestado(Servico, _, Instituicao, _)),
                                                S).

% Identificar os atos médicos realizados, por utente/instituição/serviço ;
servico(AtoMedico, Servico) :- atoMedico(AtoMedico, _, _, Servico, _).
instituicao(AtoMedico, Instituicao) :- servico(AtoMedico, Servico), cuidadoPrestado(Servico, _, Instituicao, _).

atosMedicos(Data, S)        :- findall(ID, atoMedico(ID, Data, _, _, _)   ,   S),
                               listNotEmpty(S).
atosMedicos(Utente, S)      :- findall(ID, atoMedico(ID, _, Utente, _ , _),   S),
                               listNotEmpty(S).
atosMedicos(Servico, S)     :- findall(ID, atoMedico(ID, _, _, Servico, _),   S),
                               listNotEmpty(S).
atosMedicos(Instituicao, S) :- findall(ID, (cuidadoPrestado(Servico, _, Instituicao, _), 
                                            atoMedico(ID, _, _, Servico, _)), S).

% Determinar todas as instituições/serviços a que um utente já recorreu
utenteRecurreu(Utente, Instituicoes, Servicos) :- atosMedicos(Utente, S),
                                                  maplist(instituicao, S, Instituicoes),
                                                  maplist(servico, S, Servicos).

% Calcular o custo total dos atos médicos por utente/serviço/instituição/data

custoAtoMedico(ID, Custo) :- atoMedico(ID, _, _, _ , Custo).

% USID - Utente Servico Instituicao ou Data
custoTotal(USID, Custo) :- atosMedicos(USID, IDS),
                           maplist(custoAtoMedico, IDS, Custos),
                           sumlist(Custos, Custo),
                           length(Custos, N), N > 0.



% Extensao do meta-predicado demo: Questao,Resposta -> {V,F}

demo( Questao,verdadeiro ) :-
    Questao.
demo( Questao, falso ) :-
    -Questao.
demo( Questao,desconhecido ) :-
    nao( Questao ),
	nao( -Questao ).


% Negação forte

% Clientes --------------------------


-utente(ID, N, I, M) :-  nao(utente(ID,N,I,M)),
					 	 nao(excecao(utente(ID,N,I,M))).



% Ato Medico -------------------------


-atoMedico(ID, D, U, C, V) :- nao(atoMedico(ID, D, U, C, V)),
							  nao(excecao(atoMedico(ID, D, U, C, V))).



% Cuidado Prestado ---------------------------------


-cuidadoPrestado(ID, D, I, C) :- nao(cuidadoPrestado(ID, D, I, C)),
								 nao(excecao(cuidadoPrestado(ID, D, I, C))).







% utente: #IdUt, Nome, Idade, Morada
% cuidado prestado: #IdServ, Descrição, Instituição, Cidade
% ato médico: Data, #IdUt, #IdServ, Custo
