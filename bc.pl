


%-------Base de Conhecimento----------

% Extensao predicado utente(idUt, nome, idade, morada) -> {V,F}

utente(u1, xavier, 44, rua_dom_jose_alves_correia_da_silva_2414_001_leiria).
utente(u2, patricia, 77, 3020_740_sargento_mor).
utente(u3, carlos, 12, rua_da_tabuaca_anta_4500_005_espinho).
utente(u4, daniel, 42, 5225_007_picote).
utente(u5, marcia, 46, rua_da_fonte_cidreira_3025_001_coimbra).
utente(u6, andre, 48, rua_mario_cesariny_4760_001_vila_nova_de_famalicão).
utente(u7, francisco, 53, rua_das_alminhas_creixomil_4835_001_guimarães).
utente(u8, joao, 56, 3570_007_teixoeira).
utente(u9, diana, 60, rua_carolino_ramos_2_4904_852_viana_castelo).
utente(u10, miguel, 65, avenida_tamega_4575_470_rio_de_moinhos).
utente(u11, manuel, 81, rua_alexandre_herculano_aguas_santas_4425_001_maia).
utente(u12, gil, 84, rua_heroismo_43_4349_001_porto) 
utente(u13, sandra, 19, rua_de_aldeia_nova_4445_001_alfena).
utente(u14, adriana, 24, rua_agostinho_salgado_4450_001_matosinhos).
utente(u15, tiago, 43, 2000_320_casal_dos_florindos).
utente(u16, fernando, 17, rua_padre_americo_carregal_3880_001_ovar).
utente(u17, celia, 18, rua_ocidental_6090_109_aldeia_bispo).
utente(u18, rui, 37, beco_aleixo_4150_004_porto).
utente(u19, orlando, 39, rua_brandariz_4415_001_perosinho).
utente(u20, pedro, 23, caminho_dos_lopes_4585_618_recarei).


% Extensao predicado cuidado_prestado(idServ, descricao, instituicao, cidade) -> {V,F}

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
cuidadoPrestado(c17, neurologa, hospital_de_magalhaes_lemos, porto).
cuidadoPrestado(c18, oncologia, hospital_dr_francisco_zagalo, aveiro).
cuidadoPrestado(c19, cardiologia, hospital_s_joao, porto).
cuidadoPrestado(c20, oftamologia, hospital_sao_joao_de_deus, braga).

% Extensao predicado ato_medico(data, idUt, idServ, custo) -> {V,F}

ato_medico(a1, 2016_jan_15, 1, 2, 30).
ato_medico(a2, 2016_jan_24, 4, 4, 20).
ato_medico(a3, 2016_mar_21, 10, 19, 5).
ato_medico(a4, 2016_abr_16, 5, 6, 50).
ato_medico(a5, 2016_mar_04, 4, 5, 40).
ato_medico(a6, 2016_fev_27, 2, 3, 10).
ato_medico(a7, 2016_out_12, 2, 6, 10).
ato_medico(a8, 2016_mai_01, 20, 15, 30).
ato_medico(a9, 2016_dez_22, 19, 5, 10).
ato_medico(a10, 2016_nov_30, 14, 11, 70).
ato_medico(a11, 2016_mar_10, 16, 9, 100).
ato_medico(a12, 2016_set_21, 4, 7, 30).
ato_medico(a13, 2016_out_30, 14, 14, 40).
ato_medico(a14, 2016_abr_14, 4, 3, 30).
ato_medico(a15, 2016_mai_04, 20, 18, 20).
ato_medico(a16, 2016_jan_19, 18, 20, 5).
ato_medico(a17, 2016_fev_01, 3, 10, 20).
ato_medico(a18, 2016_dez_19, 9, 4, 30).
ato_medico(a19, 2016_jun_03, 20, 20, 40).
ato_medico(a20, 2016_jul_19, 19, 20, 55).
ato_medico(a21, 2016_ago_26, 19, 10, 65).
ato_medico(a22, 2016_jul_11, 5, 11, 15).
ato_medico(a23, 2016_jan_13, 7, 11, 5).
ato_medico(a24, 2016_mar_27, 1, 13, 10).
ato_medico(a25, 2016_jun_17, 16, 13, 70).
ato_medico(a26, 2016_fev_10, 11, 10, 100).
ato_medico(a27, 2016_set_12, 1, 17, 25).
ato_medico(a28, 2016_mar_04, 15, 18, 5).
ato_medico(a29, 2016_jul_01, 3, 1, 30).
ato_medico(a30, 2016_abr_14, 9, 7, 15).
ato_medico(a31, 2016_jan_31, 3, 12, 50).
ato_medico(a32, 2016_mai_02, 13, 8, 15).
ato_medico(a33, 2016_dez_03, 11, 14, 15).
ato_medico(a34, 2016_jan_06, 6, 1, 5).
ato_medico(a35, 2016_fev_27, 8, 20, 30).
ato_medico(a36, 2016_out_13, 12, 5, 15).
ato_medico(a37, 2016_jan_14, 8, 6, 35).
ato_medico(a38, 2016_ago_07, 13, 7, 20).
ato_medico(a39, 2016_jun_29, 7, 16, 15).
ato_medico(a40, 2016_jan_31, 6, 2, 30).
ato_medico(a41, 2016_mar_03, 11, 8, 20).
ato_medico(a42, 2016_abr_19, 14, 15, 10).
ato_medico(a43, 2016_abr_25, 12, 10, 25).
ato_medico(a44, 2016_jul_07, 7, 19, 30).
ato_medico(a45, 2016_set_04, 10, 3, 15).
ato_medico(a46, 2016_nov_19, 17, 19, 5).
ato_medico(a47, 2016_nov_24, 10, 4, 15).
ato_medico(a48, 2016_ago_09, 17, 1, 20).
ato_medico(a49, 2016_set_34, 18, 9, 200).
ato_medico(a50, 2016_jan_24, 13, 8, 50).
ato_medico(a51, 2016_dez_29, 15, 16, 10).
ato_medico(a52, 2016_nov_19, 14, 3, 20).
