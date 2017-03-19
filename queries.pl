
% utente: #IdUt, Nome, Idade, Morada
% cuidado prestado: #IdServ, Descrição, Instituição, Cidade
% ato médico: Data, #IdUt, #IdServ, Custo

:- dynamic utente/4.
:- dynamic cuidadoPrestado/4.
:- dynamic atoMedico/5.

import :- consult('conhecimento.pl'), consult('invariantes.pl').

% Registar utentes, cuidados prestados e atos médicos;
registarUtente(ID, Nome, Idade, Morada) :- evolucao(utente(ID, Nome, Idade, Morada)).
registarCuidado(ID, Desc, Instiuicao, Cidade) :- evolucao(cuidadoPrestado(ID, Desc, Instiuicao, Cidade)).
registarAtoMedico(ID, Data, IDUt, IDServ, Custo) :- evolucao(atoMedico(ID, Data, IDUt, IDServ, Custo)).

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

% Identificar as instituições prestadoras de cuidados de saúde;
instituicoes(S) :- findall(Instituicao, cuidadoPrestado(_, _, Instituicao, _), S).

% Identificar os cuidados prestados por instituição/cidade
cuidadosPrestadosEm(Instituicao, S) :- findall(ID, cuidadoPrestado(ID, _, Instituicao, _), S),
                                       listNotEmpty(S).
cuidadosPrestadosEm(Cidade, S)      :- findall(ID, cuidadoPrestado(ID, _, _, Cidade), S),
                                       listNotEmpty(S).

% Identificar os utentes de uma instituição/serviço
utentesDe(Servico, S)     :- findall(IDUtente, atoMedico(_, IDUtente, Servico, _), S).
utentesDe(Instituicao, S) :- cuidadoPrestado(Servico, _, Instituicao, _),
                             findall(IDUtente, atoMedico(_, _, IDUtente, Servico, _), S).

% Identificar os atos médicos realizados, por utente/instituição/serviço ;
servico(AtoMedico, Servico) :- atoMedico(AtoMedico, _, _, Servico, _).
instituicao(AtoMedico, Instituicao) :- servico(AtoMedico, Servico), cuidadoPrestado(Servico, _, Instituicao, _).

atosMedicos(Data, S)        :- findall(ID, atoMedico(ID, Data, _, _, _)   , S).
atosMedicos(Utente, S)      :- findall(ID, atoMedico(ID, _, Utente, _ , _), S).
atosMedicos(Servico, S)     :- findall(ID, atoMedico(ID, _, _, Servico, _), S).
atosMedicos(Instituicao, S) :- findall(Servico, cuidadoPrestado(Servico, _, Instituicao, _), Servicos),
                               maplist(atosMedicos, Servicos, S).

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






% utente: #IdUt, Nome, Idade, Morada
% cuidado prestado: #IdServ, Descrição, Instituição, Cidade
% ato médico: Data, #IdUt, #IdServ, Custo