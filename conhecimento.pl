


%-------Base de Conhecimento----------

% Extensao predicado utente(idUt, nome, idade, morada) -> {V,F,D}


utente(u0, desconhecido, 0, "").

excecao(utente(UID, Nome, I, M) :-
    utente(UID, desconhecido, I, M).

excepcao(utente(u1, xavier, 44, rua_dom_jose_alves_correia_da_silva_2414_001_leiria)).
excepcao(utente(u1, xavier, 4, rua_dom_jose_alves_correia_da_silva_2414_001_leiria)).

utente(u2, patricia, 77, "3020_740_sargento_mor").
utente(u3, carlos, 12, rua_da_tabuaca_anta_4500_005_espinho).
utente(u4, daniel, 42, "5225_007_picote").
utente(u5, marcia, 46, rua_da_fonte_cidreira_3025_001_coimbra).
utente(u6, andre, 48, rua_mario_cesariny_4760_001_vila_nova_de_famalicão).
utente(u7, francisco, 53, rua_das_alminhas_creixomil_4835_001_guimarães).
utente(u8, joao, 56, "3570_007_teixoeira").
utente(u9, diana, 60, rua_carolino_ramos_2_4904_852_viana_castelo).
utente(u10, miguel, 65, avenida_tamega_4575_470_rio_de_moinhos).
utente(u11, manuel, 81, rua_alexandre_herculano_aguas_santas_4425_001_maia).
utente(u12, gil, 84, rua_heroismo_43_4349_001_porto).
utente(u13, sandra, 19, rua_de_aldeia_nova_4445_001_alfena).
utente(u14, adriana, 24, rua_agostinho_salgado_4450_001_matosinhos).
utente(u15, tiago, 43, "2000_320_casal_dos_florindos").
utente(u16, fernando, 17, rua_padre_americo_carregal_3880_001_ovar).
utente(u17, celia, 18, rua_ocidental_6090_109_aldeia_bispo).
utente(u18, rui, 37, beco_aleixo_4150_004_porto).
utente(u19, orlando, 39, rua_brandariz_4415_001_perosinho).
utente(u20, pedro, 23, caminho_dos_lopes_4585_618_recarei).

utente(xpto, "", 0, mzz).
excepcao(utente(UID, Nome, I, M)) :-
    utente(xpto, Nome, I, M).
    
% Extensao predicado cuidado_prestado(idServ, descricao, instituicao, cidade) -> {V,F,D}

cuidadoPrestado(c0, desconhecido, "", "").
excecao(cuidadoPrestado(CID, Nome, I, C) :-
    cuidadoPrestado(CID, desconhecido, I, C).

cuidadoPrestado(c1, cardiologia, hospital_de_braga, braga).
cuidadoPrestado(c2, oncologia, hospital_s_marcos, braga).
cuidadoPrestado(c3, cirurgia_geral, hospital_de_braga, braga).
cuidadoPrestado(c4, neurologia, centro_hospitalar_de_coimbra, coimbra).
cuidadoPrestado(c5, urologia, hospital_miguel_bombarda, lisboa).
cuidadoPrestado(c6, oncologia, hospital_nossa_senhora_da_ajuda, aveiro).
cuidadoPrestado(c7, endocrinologia, hospital_de_santa_luzia_de_viana_do_castelo, viana_do_castelo).
cuidadoPrestado(c8, ortopedia, hospital_de_santo_andre, leiria).
cuidadoPrestado(c9, cardiologia, centro_hospitalar_de_coimbra, coimbra).
cuidadoPrestado(c10, obstetricia, hospital_d_estefania, lisboa).
cuidadoPrestado(c11, neurologia, centro_hospitalar_nordeste, braganca).
cuidadoPrestado(c12, ortopedia, maternidade_julio_dinis, porto).
cuidadoPrestado(c13, psiquiatria, centro_hospitalar_nordeste, braganca).
cuidadoPrestado(c14, urologia, hospital_s_joao, porto).
cuidadoPrestado(c15, oncologia, hospital_dr_francisco_zagalo, aveiro).
cuidadoPrestado(c16, ortopedia, hospital_distrital_de_pombal, leiria).
cuidadoPrestado(c17, neurologia, hospital_de_magalhaes_lemos, porto).
cuidadoPrestado(c18, oncologia, hospital_dr_francisco_zagalo, aveiro).
cuidadoPrestado(c19, cardiologia, hospital_s_joao, porto).
cuidadoPrestado(c20, oftamologia, hospital_sao_joao_de_deus, braga).

cuidadoPrestado(xpto, "", 0, mzz).
excepcao(cuidadoPrestado(CID, Nome, I, C)) :-
    cuidadoPrestado(xpto, Nome, I, C).
    

% Extensao predicado ato_medico(data, idUt, idServ, custo) -> {V,F,D}

atoMedico(a0, "", u0, c0, 0).
excecao(atoMedico(AID, D, U, C, V) :-
    atoMedico(AID, "", U, C, V).

atoMedico(a1, "2016-jan-15", u1, c2, 30).
atoMedico(a2, "2016-jan-24", u4, c4, 20).
atoMedico(a3, "2016-mar-21", u10, c19, 5).
atoMedico(a4, "2016-abr-16", u5, c6, 50).
atoMedico(a5, "2016-mar-04", u4, c5, 40).
atoMedico(a6, "2016-fev-27", u2, c3, 10).
atoMedico(a7, "2016-out-12", u2, c6, 10).
atoMedico(a8, "2016-mai-01", u20, c15, 30).
atoMedico(a9, "2016-dez-22", u19, c5, 10).
atoMedico(a10, "2016-nov-30", u14, c11, 70).
atoMedico(a11, "2016-mar-10", u16, c9, 100).
atoMedico(a12, "2016-set-21", u4, c7, 30).
atoMedico(a13, "2016-out-30", u14, c14, 40).
atoMedico(a14, "2016-abr-14", u4, c3, 30).
atoMedico(a15, "2016-mai-04", u20, c18, 20).
atoMedico(a16, "2016-jan-19", u18, c20, 5).
atoMedico(a17, "2016-fev-01", u3, c10, 20).
atoMedico(a18, "2016-dez-19", u9, c4, 30).
atoMedico(a19, "2016-jun-03", u20, c20, 40).
atoMedico(a20, "2016-jul-19", u19, c20, 55).
atoMedico(a21, "2016-ago-26", u19, c10, 65).
atoMedico(a22, "2016-jul-11", u5, c11, 15).
atoMedico(a23, "2016-jan-13", u7, c11, 5).
atoMedico(a24, "2016-mar-27", u1, c13, 10).
atoMedico(a25, "2016-jun-17", u16, c13, 70).
atoMedico(a26, "2016-fev-10", u11, c10, 100).
atoMedico(a27, "2016-set-12", u1, c17, 25).
atoMedico(a28, "2016-mar-04", u15, c18, 5).
atoMedico(a29, "2016-jul-01", u3, c1, 30).
atoMedico(a30, "2016-abr-14", u9, c7, 15).
atoMedico(a31, "2016-jan-31", u3, c12, 50).
atoMedico(a32, "2016-mai-02", u13, c8, 15).
atoMedico(a33, "2016-dez-03", u11, c14, 15).
atoMedico(a34, "2016-jan-06", u6, c1, 5).
atoMedico(a35, "2016-fev-27", u8, c20, 30).
atoMedico(a36, "2016-out-13", u12, c5, 15).
atoMedico(a37, "2016-jan-14", u8, c6, 35).
atoMedico(a38, "2016-ago-07", u13, c7, 20).
atoMedico(a39, "2016-jun-29", u7, c16, 15).
atoMedico(a40, "2016-jan-31", u6, c2, 30).
atoMedico(a41, "2016-mar-03", u11, c8, 20).
atoMedico(a42, "2016-abr-19", u14, c15, 10).
atoMedico(a43, "2016-abr-25", u12, c10, 25).
atoMedico(a44, "2016-jul-07", u7, c19, 30).
atoMedico(a45, "2016-set-04", u10, c3, 15).
atoMedico(a46, "2016-nov-19", u17, c19, 5).
atoMedico(a47, "2016-nov-24", u10, c4, 15).
atoMedico(a48, "2016-ago-09", u17, c1, 20).
atoMedico(a49, "2016-set-34", u18, c9, 200).
atoMedico(a50, "2016-jan-24", u13, c8, 50).
atoMedico(a51, "2016-dez-29", u15, c16, 10).
atoMedico(a52, "2016-nov-19", u14, c3, 20).


atoMedico(xpto, "", 0, mzz).
excepcao(atoMedico(ID, D, U, C, V)) :-
    atoMedico(xpto, D, U, C, V).
    
