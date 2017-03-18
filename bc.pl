


%-------Base de Conhecimento----------

% Extensao predicado utente(idUt, nome, idade, morada) -> {V,F}

utente(1, xavier, 44, rua_dom_jose_alves_correia_da_silva_2414_001_leiria).
utente(2, patricia, 77,3020_740_sargento_mor).
utente(3, carlos, 12, rua_da_tabuaca_anta_4500_005_espinho).
utente(4, daniel, 42, 5225_007_picote).
utente(5, marcia, 46, rua_da_fonte_cidreira_3025_001_coimbra).
utente(6, andre, 48, rua_mario_cesariny_4760_001_vila_nova_de_famalicão).
utente(7, francisco, 53, rua_das_alminhas_creixomil_4835_001_guimarães).
utente(8, joao, 56, 3570_007_teixoeira).
utente(9, diana, 60, rua_carolino_ramos_2_4904_852_viana_castelo).
utente(10, miguel, 65, avenida_tamega_4575_470_rio_de_moinhos).
utente(11, manuel, 81, rua_alexandre_herculano_aguas_santas_4425_001_maia).
utente(12, gil, 84, rua_heroismo_43_4349_001_porto) 
utente(13, sandra, 19, rua_de_aldeia_nova_4445_001_alfena).
utente(14, adriana, 24, rua_agostinho_salgado_4450_001_matosinhos).
utente(15, tiago, 43, 2000_320_casal_dos_florindos).
utente(16, fernando, 17, rua_padre_americo_carregal_3880_001_ovar).
utente(17, celia, 18, rua_ocidental_6090_109_aldeia_bispo).
utente(18, rui, 37, beco_aleixo_4150_004_porto).
utente(19, orlando, 39, rua_brandariz_4415_001_perosinho).
utente(20, pedro, 23, caminho_dos_lopes_4585_618_recarei).


% Extensao predicado cuidado_prestado(idServ, descricao, instituicao, cidade) ->{V,F}

cuidado_prestado(1, cardiologia, hospital_de_braga, braga).
cuidado_prestado(2, oncologia, hospital_s_marcos, braga).
cuidado_prestado(3, cirurgia_geral, hospital_de_braga, braga).
cuidado_prestado(4, neurologia, centro_hospitalar_de_coimbra, coimbra).
cuidado_prestado(5, urologia, hospital_miguel_bombarda, lisboa).
cuidado_prestado(6, oncologia, hospital_nossa_senhora_da_ajuda, aveiro).
cuidado_prestado(7, endocrinologia, hospital_de_santa_luzia_de_viana_do_castelo, viana_do_castelo).
cuidado_prestado(8, ortopedia, hospital_de_santo_andre, leiria).
cuidado_prestado(9, cardiologia, centro_hospitalar_de_coimbra, coimbra).
cuidado_prestado(10, obstetricia, hospital_d_estefania, lisboa).
cuidado_prestado(11, neurologia, centro_hospitalar_nordeste, braganca).
cuidado_prestado(12, ortopedia, maternidade_julio_dinis, porto).
cuidado_prestado(13, psiquiatria, centro_hospitalar_nordeste, braganca).
cuidado_prestado(14, urologia, hospital_s_joao, porto).
cuidado_prestado(15, oncologia, hospital_dr_francisco_zagalo, aveiro).
cuidado_prestado(16, ortopedia, hospital_distrital_de_pombal, leiria).
cuidado_prestado(17, neurologa, hospital_de_magalhaes_lemos, porto).
cuidado_prestado(18, oncologia, hospital_dr_francisco_zagalo, aveiro).
cuidado_prestado(19, cardiologia, hospital_s_joao, porto).
cuidado_prestado(20, oftamologia, hospital_sao_joao_de_deus, braga).

% Extensao predicado ato_medico(data, idUt, idServ, custo) -> {V,F}

ato_medico(2016_jan_15, 1, 2, 30).
ato_medico(2016_jan_24, 4, 4, 20).
ato_medico(2016_mar_21, 10, 19, 5).
ato_medico(2016_abr_16, 5, 6, 50).
ato_medico(2016_mar_04, 4, 5, 40).
ato_medico(2016_fev_27, 2, 3, 10).
ato_medico(2016_out_12, 2, 6, 10).
ato_medico(2016_mai_01, 20, 15, 30).
ato_medico(2016_dez_22, 19, 5, 10).
ato_medico(2016_nov_30, 14, 11, 70).
ato_medico(2016_mar_10, 16, 9, 100).
ato_medico(2016_set_21, 4, 7, 30).
ato_medico(2016_out_30, 14, 14, 40).
ato_medico(2016_abr_14, 4, 3, 30).
ato_medico(2016_mai_04, 20, 18, 20).
ato_medico(2016_jan_19, 18, 20, 5).
ato_medico(2016_fev_01, 3, 10, 20).
ato_medico(2016_dez_19, 9, 4, 30).
ato_medico(2016_jun_03, 20, 20, 40).
ato_medico(2016_jul_19, 19, 20, 55).
ato_medico(2016_ago_26, 19, 10, 65).
ato_medico(2016_jul_11, 5, 11, 15).
ato_medico(2016_jan_13, 7, 11, 5).
ato_medico(2016_mar_27, 1, 13, 10).
ato_medico(2016_jun_17, 16, 13, 70).
ato_medico(2016_fev_10, 11, 10, 100).
ato_medico(2016_set_12, 1, 17, 25).
ato_medico(2016_mar_04, 15, 18, 5).
ato_medico(2016_jul_01, 3, 1, 30).
ato_medico(2016_abr_14, 9, 7, 15).
ato_medico(2016_jan_31, 3, 12, 50).
ato_medico(2016_mai_02, 13, 8, 15).
ato_medico(2016_dez_03, 11, 14, 15).
ato_medico(2016_jan_06, 6, 1, 5).
ato_medico(2016_fev_27, 8, 20, 30).
ato_medico(2016_out_13, 12, 5, 15).
ato_medico(2016_jan_14, 8, 6, 35).
ato_medico(2016_ago_07, 13, 7, 20).
ato_medico(2016_jun_29, 7, 16, 15).
ato_medico(2016_jan_31, 6, 2, 30).
ato_medico(2016_mar_03, 11, 8, 20).
ato_medico(2016_abr_19, 14, 15, 10).
ato_medico(2016_abr_25, 12, 10, 25).
ato_medico(2016_jul_07, 7, 19, 30).
ato_medico(2016_set_04, 10, 3, 15).
ato_medico(2016_nov_19, 17, 19, 5).
ato_medico(2016_nov_24, 10, 4, 15).
ato_medico(2016_ago_09, 17, 1, 20).
ato_medico(2016_set_34, 18, 9, 200).
ato_medico(2016_jan_24, 13, 8, 50).
ato_medico(2016_dez_29, 15, 16, 10).
ato_medico(2016_nov_19, 14, 3, 20).












