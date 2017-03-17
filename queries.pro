listNotEmpty([]) :- fail.
listNotEmpty([_|_]).

% Identificar os utentes por critérios de seleção;
utentesComNome(Nome, S)     :- findall(ID, utente(ID, Nome, I, M), S).

utentesComIdade(Idade, S)   :- findall(ID, utente(ID, N, Idade, M), S).

utentesComMorada(Morada, S) :- findall(ID, utente(ID, N, I, Morada), S).

% Identificar as instituições prestadoras de cuidados de saúde;
instituicoes(S) :- findall(Instituicao, cuidadoPrestado(ID, D, Instituicao, C), S).

% Identificar os cuidados prestados por instituição/cidade
instituicoesEm(Instituicao, S) :- findall(Instituicao, cuidadoPrestado(ID, D, Instituicao, C), S),
                                  listNotEmpty(S).
instituicoesEm(Cidade, S)      :- findall(Instituicao, cuidadoPrestado(ID, D, I, Cidade), S),
                                  listNotEmpty(S).

% Identificar os utentes de uma instituição/serviço

utentesDe(Servico, S)     :- findall(IDUtente, atoMedico(D, IDUtente, Servico, C), S).
utentesDe(Instituicao, S) :- cuidadoPrestado(Servico, Desc, Instituicao, Cidd),
                             findall(IDUtente, atoMedico(D, IDUtente, Servico, C), S).

% Identificar os atos médicos realizados, por utente/instituição/serviço ;

find(X, Y) :- findall(X, X, Y).

atosMedicos(Utente, S)      :- find(atoMedico(D, IDUtente, S, C), S).
atosMedicos(Servico, S)     :- find(atoMedico(D, I, Servico, C), S).
atosMedicos(Instituicao, S) :- findall(Instituicao, cuidadoPrestado(Servico, Desc, Instituicao, C2), S1),
                               findall(atoMedico(D, I, Servico, C), atoMedico(D, I, Servico, C) , S).

% utente: #IdUt, Nome, Idade, Morada
% cuidado prestado: #IdServ, Descrição, Instituição, Cidade
% ato médico: Data, #IdUt, #IdServ, Custo
