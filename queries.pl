
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
instituicao(AtoMedico, Instituicao) :- atoMedico(AtoMedico, _, _, Servico, _), cuidadoPrestado(Servico, _, Instituicao, _).

atosMedicos(Utente, S)      :- findall(ID, atoMedico(ID, _, Utente, _ , _), S).
atosMedicos(Servico, S)     :- findall(ID, atoMedico(ID, _, _, Servico, _), S).
atosMedicos(Instituicao, S) :- findall(Servico, cuidadoPrestado(Servico, _, Instituicao, _), Servicos),
                               maplist(atosMedicos, Servicos, S).

% Determinar todas as instituições/serviços a que um utente já recorreu
utenteRecurreu(Utente, Instituicoes, Servicos) :- atosMedicos(Utente, S),
                                                  maplist(atoMedicoEm, S, Instituicoes),
                                                  maplist(atoMedicoEm, S, Servicos).

% Calcular o custo total dos atos médicos por utente/serviço/instituição/data



% custoTotal(Utente)




% utente: #IdUt, Nome, Idade, Morada
% cuidado prestado: #IdServ, Descrição, Instituição, Cidade
% ato médico: Data, #IdUt, #IdServ, Custo
