INSERT INTO `tcc-tsi.microdados_enem_2022.enrich_microdados_enem_2022` (
    NU_INSCRICAO,
    NU_ANO,
    TP_FAIXA_ETARIA,
    TP_SEXO,
    TP_ESTADO_CIVIL,
    TP_COR_RACA,
    TP_NACIONALIDADE,
    TP_ST_CONCLUSAO,
    TP_ANO_CONCLUIU,
    TP_ESCOLA,
    TP_ENSINO,
    IN_TREINEIRO,
    CO_MUNICIPIO_ESC,
    NO_MUNICIPIO_ESC,
    CO_UF_ESC,
    SG_UF_ESC,
    TP_DEPENDENCIA_ADM_ESC,
    TP_LOCALIZACAO_ESC,
    TP_SIT_FUNC_ESC,
    CO_MUNICIPIO_PROVA,
    NO_MUNICIPIO_PROVA,
    CO_UF_PROVA,
    SG_UF_PROVA,
    TP_PRESENCA_CN,
    TP_PRESENCA_CH,
    TP_PRESENCA_LC,
    TP_PRESENCA_MT,
    CO_PROVA_CN,
    CO_PROVA_CH,
    CO_PROVA_LC,
    CO_PROVA_MT,
    NU_NOTA_CN,
    NU_NOTA_CH,
    NU_NOTA_LC,
    NU_NOTA_MT,
    TX_RESPOSTAS_CN,
    TX_RESPOSTAS_CH,
    TX_RESPOSTAS_LC,
    TX_RESPOSTAS_MT,
    TP_LINGUA,
    TX_GABARITO_CN,
    TX_GABARITO_CH,
    TX_GABARITO_LC,
    TX_GABARITO_MT,
    TP_STATUS_REDACAO,
    NU_NOTA_COMP1,
    NU_NOTA_COMP2,
    NU_NOTA_COMP3,
    NU_NOTA_COMP4,
    NU_NOTA_COMP5,
    NU_NOTA_REDACAO,
    Q001,
    Q002,
    Q003,
    Q004,
    Q005,
    Q006,
    Q007,
    Q008,
    Q009,
    Q010,
    Q011,
    Q012,
    Q013,
    Q014,
    Q015,
    Q016,
    Q017,
    Q018,
    Q019,
    Q020,
    Q021,
    Q022,
    Q023,
    Q024,
    Q025
)
SELECT 
    NU_INSCRICAO,
    NU_ANO,
    CASE 
        WHEN TP_FAIXA_ETARIA = '1' THEN 'Menor de 17 anos'
        WHEN TP_FAIXA_ETARIA = '2' THEN '17 anos'
        WHEN TP_FAIXA_ETARIA = '3' THEN '18 anos'
        WHEN TP_FAIXA_ETARIA = '4' THEN '19 anos'
        WHEN TP_FAIXA_ETARIA = '5' THEN '20 anos'
        WHEN TP_FAIXA_ETARIA = '6' THEN '21 anos'
        WHEN TP_FAIXA_ETARIA = '7' THEN '22 anos'
        WHEN TP_FAIXA_ETARIA = '8' THEN '23 anos'
        WHEN TP_FAIXA_ETARIA = '9' THEN '24 anos'
        WHEN TP_FAIXA_ETARIA = '10' THEN '25 anos'
        WHEN TP_FAIXA_ETARIA = '11' THEN 'Entre 26 e 30 anos'
        WHEN TP_FAIXA_ETARIA = '12' THEN 'Entre 31 e 35 anos'
        WHEN TP_FAIXA_ETARIA = '13' THEN 'Entre 36 e 40 anos'
        WHEN TP_FAIXA_ETARIA = '14' THEN 'Entre 41 e 45 anos'
        WHEN TP_FAIXA_ETARIA = '15' THEN 'Entre 46 e 50 anos'
        WHEN TP_FAIXA_ETARIA = '16' THEN 'Entre 51 e 55 anos'
        WHEN TP_FAIXA_ETARIA = '17' THEN 'Entre 56 e 60 anos'
        WHEN TP_FAIXA_ETARIA = '18' THEN 'Entre 61 e 65 anos'
        WHEN TP_FAIXA_ETARIA = '19' THEN 'Entre 66 e 70 anos'
        WHEN TP_FAIXA_ETARIA = '20' THEN 'Maior de 70 anos'
        ELSE TP_FAIXA_ETARIA 
    END AS TP_FAIXA_ETARIA,
    CASE 
        WHEN TP_SEXO = 'M' THEN 'Masculino'
        WHEN TP_SEXO = 'F' THEN 'Feminino'
        ELSE TP_SEXO
    END AS TP_SEXO,
    CASE 
        WHEN TP_ESTADO_CIVIL = '0' THEN 'Não informado'
        WHEN TP_ESTADO_CIVIL = '1' THEN 'Solteiro(a)'
        WHEN TP_ESTADO_CIVIL = '2' THEN 'Casado(a)/Mora com companheiro(a)'
        WHEN TP_ESTADO_CIVIL = '3' THEN 'Divorciado(a)/Desquitado(a)/Separado(a)'
        WHEN TP_ESTADO_CIVIL = '4' THEN 'Viúvo(a)'
        ELSE TP_ESTADO_CIVIL
    END AS TP_ESTADO_CIVIL,
    CASE 
        WHEN TP_COR_RACA = '0' THEN 'Não declarado'
        WHEN TP_COR_RACA = '1' THEN 'Branca'
        WHEN TP_COR_RACA = '2' THEN 'Preta'
        WHEN TP_COR_RACA = '3' THEN 'Parda'
        WHEN TP_COR_RACA = '4' THEN 'Amarela'
        WHEN TP_COR_RACA = '5' THEN 'Indígena'
        WHEN TP_COR_RACA = '6' THEN 'Não dispõe da informação'
        ELSE TP_COR_RACA
    END AS TP_COR_RACA,
    CASE 
        WHEN TP_NACIONALIDADE = '0' THEN 'Não informado'
        WHEN TP_NACIONALIDADE = '1' THEN 'Brasileiro(a)'
        WHEN TP_NACIONALIDADE = '2' THEN 'Brasileiro(a) Naturalizado(a)'
        WHEN TP_NACIONALIDADE = '3' THEN 'Estrangeiro(a)'
        WHEN TP_NACIONALIDADE = '4' THEN 'Brasileiro(a) Nato(a), nascido(a) no exterior'
        ELSE TP_NACIONALIDADE
    END AS TP_NACIONALIDADE,
    CASE 
        WHEN TP_ST_CONCLUSAO = '1' THEN 'Já concluí o Ensino Médio'
        WHEN TP_ST_CONCLUSAO = '2' THEN 'Estou cursando e concluirei o Ensino Médio em 2022'
        WHEN TP_ST_CONCLUSAO = '3' THEN 'Estou cursando e concluirei o Ensino Médio após 2022'
        WHEN TP_ST_CONCLUSAO = '4' THEN 'Não concluí e não estou cursando o Ensino Médio'
        ELSE TP_ST_CONCLUSAO
    END AS TP_ST_CONCLUSAO,
    CASE 
        WHEN TP_ANO_CONCLUIU = '0' THEN 'Não informado'
        WHEN TP_ANO_CONCLUIU = '1' THEN '2021'
        WHEN TP_ANO_CONCLUIU = '2' THEN '2020'
        WHEN TP_ANO_CONCLUIU = '3' THEN '2019'
        WHEN TP_ANO_CONCLUIU = '4' THEN '2018'
        WHEN TP_ANO_CONCLUIU = '5' THEN '2017'
        WHEN TP_ANO_CONCLUIU = '6' THEN '2016'
        WHEN TP_ANO_CONCLUIU = '7' THEN '2015'
        WHEN TP_ANO_CONCLUIU = '8' THEN '2014'
        WHEN TP_ANO_CONCLUIU = '9' THEN '2013'
        WHEN TP_ANO_CONCLUIU = '10' THEN '2012'
        WHEN TP_ANO_CONCLUIU = '11' THEN '2011'
        WHEN TP_ANO_CONCLUIU = '12' THEN '2010'
        WHEN TP_ANO_CONCLUIU = '13' THEN '2009'
        WHEN TP_ANO_CONCLUIU = '14' THEN '2008'
        WHEN TP_ANO_CONCLUIU = '15' THEN '2007'
        WHEN TP_ANO_CONCLUIU = '16' THEN 'Antes de 2007'
        ELSE TP_ANO_CONCLUIU
    END AS TP_ANO_CONCLUIU,
    CASE 
        WHEN TP_ESCOLA = '1' THEN 'Não Respondeu'
        WHEN TP_ESCOLA = '2' THEN 'Pública'
        WHEN TP_ESCOLA = '3' THEN 'Privada'
        ELSE TP_ESCOLA
    END AS TP_ESCOLA,
    CASE 
        WHEN TP_ENSINO = '1' THEN 'Ensino Regular'
        WHEN TP_ENSINO = '2' THEN 'Educação Especial - Modalidade Substitutiva'
        ELSE TP_ENSINO
    END AS TP_ENSINO,
    CASE 
        WHEN IN_TREINEIRO = '1' THEN 'Sim'
        WHEN IN_TREINEIRO = '0' THEN 'Não'
        ELSE IN_TREINEIRO
    END AS IN_TREINEIRO,
    CO_MUNICIPIO_ESC,
    NO_MUNICIPIO_ESC,
    CO_UF_ESC,
    SG_UF_ESC,
    CASE 
        WHEN TP_DEPENDENCIA_ADM_ESC = '1' THEN 'Federal'
        WHEN TP_DEPENDENCIA_ADM_ESC = '2' THEN 'Estadual'
        WHEN TP_DEPENDENCIA_ADM_ESC = '3' THEN 'Municipal'
        WHEN TP_DEPENDENCIA_ADM_ESC = '4' THEN 'Privada'
        ELSE TP_DEPENDENCIA_ADM_ESC
    END AS TP_DEPENDENCIA_ADM_ESC,
    CASE 
        WHEN TP_LOCALIZACAO_ESC = '1' THEN 'Urbana'
        WHEN TP_LOCALIZACAO_ESC = '2' THEN 'Rural'
        ELSE TP_LOCALIZACAO_ESC
    END AS TP_LOCALIZACAO_ESC,
    CASE 
        WHEN TP_SIT_FUNC_ESC = '1' THEN 'Em atividade'
        WHEN TP_SIT_FUNC_ESC = '2' THEN 'Paralisada'
        WHEN TP_SIT_FUNC_ESC = '3' THEN 'Extinta'
        WHEN TP_SIT_FUNC_ESC = '4' THEN 'Escola extinta em anos anteriores.'
        ELSE TP_SIT_FUNC_ESC
    END AS TP_SIT_FUNC_ESC,
    CO_MUNICIPIO_PROVA,
    NO_MUNICIPIO_PROVA,
    CO_UF_PROVA,
    SG_UF_PROVA,
    CASE 
        WHEN TP_PRESENCA_CN = '0' THEN 'Faltou à prova'
        WHEN TP_PRESENCA_CN = '1' THEN 'Presente na prova'
        WHEN TP_PRESENCA_CN = '2' THEN 'Eliminado na prova'
        ELSE TP_PRESENCA_CN
    END AS TP_PRESENCA_CN,
    CASE 
        WHEN TP_PRESENCA_CH = '0' THEN 'Faltou à prova'
        WHEN TP_PRESENCA_CH = '1' THEN 'Presente na prova'
        WHEN TP_PRESENCA_CH = '2' THEN 'Eliminado na prova'
        ELSE TP_PRESENCA_CH
    END AS TP_PRESENCA_CH,
        CASE 
        WHEN TP_PRESENCA_LC = '0' THEN 'Faltou à prova'
        WHEN TP_PRESENCA_LC = '1' THEN 'Presente na prova'
        WHEN TP_PRESENCA_LC = '2' THEN 'Eliminado na prova'
        ELSE TP_PRESENCA_LC
    END AS TP_PRESENCA_LC,
    CASE 
        WHEN TP_PRESENCA_MT = '0' THEN 'Faltou à prova'
        WHEN TP_PRESENCA_MT = '1' THEN 'Presente na prova'
        WHEN TP_PRESENCA_MT = '2' THEN 'Eliminado na prova'
        ELSE TP_PRESENCA_MT
    END AS TP_PRESENCA_MT,
    CASE 
        WHEN CO_PROVA_CN = '1085' THEN 'Azul'
        WHEN CO_PROVA_CN = '1086' THEN 'Amarela'
        WHEN CO_PROVA_CN = '1087' THEN 'Cinza'
        WHEN CO_PROVA_CN = '1088' THEN 'Rosa'
        WHEN CO_PROVA_CN = '1092' THEN 'Laranja - Adaptada Ledor'
        WHEN CO_PROVA_CN = '1093' THEN 'Verde - Videoprova - Libras'
        WHEN CO_PROVA_CN = '1165' THEN 'Azul (Reaplicação)'
        WHEN CO_PROVA_CN = '1166' THEN 'Amarela (Reaplicação)'
        WHEN CO_PROVA_CN = '1167' THEN 'Cinza (Reaplicação)'
        WHEN CO_PROVA_CN = '1168' THEN 'Rosa (Reaplicação)'
        WHEN CO_PROVA_CN = '1187' THEN 'Azul (Digital)'
        WHEN CO_PROVA_CN = '1188' THEN 'Amarela (Digital)'
        WHEN CO_PROVA_CN = '1189' THEN 'Rosa (Digital)'
        WHEN CO_PROVA_CN = '1190' THEN 'Cinza (Digital)'
        ELSE CO_PROVA_CN
    END AS CO_PROVA_CN,
    CASE 
        WHEN CO_PROVA_CH = '1055' THEN 'Azul'
        WHEN CO_PROVA_CH = '1056' THEN 'Amarela'
        WHEN CO_PROVA_CH = '1057' THEN 'Branca'
        WHEN CO_PROVA_CH = '1058' THEN 'Rosa'
        WHEN CO_PROVA_CH = '1062' THEN 'Laranja - Adaptada Ledor'
        WHEN CO_PROVA_CH = '1063' THEN 'Verde - Videoprova - Libras'
        WHEN CO_PROVA_CH = '1135' THEN 'Azul (Reaplicação)'
        WHEN CO_PROVA_CH = '1136' THEN 'Amarela (Reaplicação)'
        WHEN CO_PROVA_CH = '1137' THEN 'Branca (Reaplicação)'
        WHEN CO_PROVA_CH = '1138' THEN 'Rosa (Reaplicação)'
        WHEN CO_PROVA_CH = '1175' THEN 'Azul (Digital)'
        WHEN CO_PROVA_CH = '1176' THEN 'Amarela (Digital)'
        WHEN CO_PROVA_CH = '1177' THEN 'Branca (Digital)'
        WHEN CO_PROVA_CH = '1178' THEN 'Rosa (Digital)'
        ELSE CO_PROVA_CH
    END AS CO_PROVA_CH,
    CASE 
        WHEN CO_PROVA_LC = '1065' THEN 'Azul'
        WHEN CO_PROVA_LC = '1066' THEN 'Amarela'
        WHEN CO_PROVA_LC = '1067' THEN 'Rosa'
        WHEN CO_PROVA_LC = '1068' THEN 'Branca'
        WHEN CO_PROVA_LC = '1072' THEN 'Laranja - Adaptada Ledor'
        WHEN CO_PROVA_LC = '1073' THEN 'Verde - Videoprova - Libras'
        WHEN CO_PROVA_LC = '1145' THEN 'Azul (Reaplicação)'
        WHEN CO_PROVA_LC = '1146' THEN 'Amarela (Reaplicação)'
        WHEN CO_PROVA_LC = '1147' THEN 'Rosa (Reaplicação)'
        WHEN CO_PROVA_LC = '1148' THEN 'Branca (Reaplicação)'
        WHEN CO_PROVA_LC = '1179' THEN 'Azul (Digital)'
        WHEN CO_PROVA_LC = '1180' THEN 'Amarela (Digital)'
        WHEN CO_PROVA_LC = '1181' THEN 'Branca (Digital)'
        WHEN CO_PROVA_LC = '1182' THEN 'Rosa (Digital)'
        ELSE CO_PROVA_LC
    END AS CO_PROVA_LC,
    CASE 
        WHEN CO_PROVA_MT = '1075' THEN 'Azul'
        WHEN CO_PROVA_MT = '1076' THEN 'Amarela'
        WHEN CO_PROVA_MT = '1077' THEN 'Rosa'
        WHEN CO_PROVA_MT = '1078' THEN 'Cinza'
        WHEN CO_PROVA_MT = '1082' THEN 'Laranja - Adaptada Ledor'
        WHEN CO_PROVA_MT = '1083' THEN 'Verde - Videoprova - Libras'
        WHEN CO_PROVA_MT = '1155' THEN 'Azul (Reaplicação)'
        WHEN CO_PROVA_MT = '1156' THEN 'Amarela (Reaplicação)'
        WHEN CO_PROVA_MT = '1157' THEN 'Rosa (Reaplicação)'
        WHEN CO_PROVA_MT = '1158' THEN 'Cinza (Reaplicação)'
        WHEN CO_PROVA_MT = '1183' THEN 'Azul (Digital)'
        WHEN CO_PROVA_MT = '1184' THEN 'Amarela (Digital)'
        WHEN CO_PROVA_MT = '1185' THEN 'Rosa (Digital)'
        WHEN CO_PROVA_MT = '1186' THEN 'Cinza (Digital)'
        ELSE CO_PROVA_MT
    END AS CO_PROVA_MT,
    NU_NOTA_CN,
    NU_NOTA_CH,
    NU_NOTA_LC,
    NU_NOTA_MT,
    TX_RESPOSTAS_CN,
    TX_RESPOSTAS_CH,
    TX_RESPOSTAS_LC,
    TX_RESPOSTAS_MT,
    CASE 
        WHEN TP_LINGUA = '0' THEN 'Inglês'
        WHEN TP_LINGUA = '1' THEN 'Espanhol'
        ELSE TP_LINGUA
    END AS TP_LINGUA,
    TX_GABARITO_CN,
    TX_GABARITO_CH,
    TX_GABARITO_LC,
    TX_GABARITO_MT,
    CASE 
        WHEN TP_STATUS_REDACAO = '1' THEN 'Sem problemas'
        WHEN TP_STATUS_REDACAO = '2' THEN 'Anulada'
        WHEN TP_STATUS_REDACAO = '3' THEN 'Cópia Texto Motivador'
        WHEN TP_STATUS_REDACAO = '4' THEN 'Em Branco'
        WHEN TP_STATUS_REDACAO = '6' THEN 'Fuga ao tema'
        WHEN TP_STATUS_REDACAO = '7' THEN 'Não atendimento ao tipo textual'
        WHEN TP_STATUS_REDACAO = '8' THEN 'Texto insuficiente'
        WHEN TP_STATUS_REDACAO = '9' THEN 'Parte desconectada'
        ELSE TP_STATUS_REDACAO
    END AS TP_STATUS_REDACAO,
    NU_NOTA_COMP1,
    NU_NOTA_COMP2,
    NU_NOTA_COMP3,
    NU_NOTA_COMP4,
    NU_NOTA_COMP5,
    NU_NOTA_REDACAO,
    CASE 
        WHEN Q001 = 'A' THEN 'Nunca estudou.'
        WHEN Q001 = 'B' THEN 'Não completou a 4ª série/5º ano do Ensino Fundamental.'
        WHEN Q001 = 'C' THEN 'Completou a 4ª série/5º ano, mas não completou a 8ª série/9º ano do Ensino Fundamental.'
        WHEN Q001 = 'D' THEN 'Completou a 8ª série/9º ano do Ensino Fundamental, mas não completou o Ensino Médio.'
        WHEN Q001 = 'E' THEN 'Completou o Ensino Médio, mas não completou a Faculdade.'
        WHEN Q001 = 'F' THEN 'Completou a Faculdade, mas não completou a Pós-graduação.'
        WHEN Q001 = 'G' THEN 'Completou a Pós-graduação.'
        WHEN Q001 = 'H' THEN 'Não sei.'
        ELSE Q001
    END AS Q001,
    CASE 
        WHEN Q002 = 'A' THEN 'Nunca estudou.'
        WHEN Q002 = 'B' THEN 'Não completou a 4ª série/5º ano do Ensino Fundamental.'
        WHEN Q002 = 'C' THEN 'Completou a 4ª série/5º ano, mas não completou a 8ª série/9º ano do Ensino Fundamental.'
        WHEN Q002 = 'D' THEN 'Completou a 8ª série/9º ano do Ensino Fundamental, mas não completou o Ensino Médio.'
        WHEN Q002 = 'E' THEN 'Completou o Ensino Médio, mas não completou a Faculdade.'
        WHEN Q002 = 'F' THEN 'Completou a Faculdade, mas não completou a Pós-graduação.'
        WHEN Q002 = 'G' THEN 'Completou a Pós-graduação.'
        WHEN Q002 = 'H' THEN 'Não sei.'
        ELSE Q002
    END AS Q002,
    CASE 
        WHEN Q003 = 'A' THEN 'Grupo 1: Lavrador, agricultor sem empregados, bóia fria, criador de animais (gado, porcos, galinhas, ovelhas, cavalos etc.), apicultor, pescador, lenhador, seringueiro, extrativista.'
        WHEN Q003 = 'B' THEN 'Grupo 2: Diarista, empregado doméstico, cuidador de idosos, babá, cozinheiro (em casas particulares), motorista particular, jardineiro, faxineiro de empresas e prédios, vigilante, porteiro, carteiro, office-boy, vendedor, caixa, atendente de loja, auxiliar administrativo, recepcionista, servente de pedreiro, repositor de mercadoria.'
        WHEN Q003 = 'C' THEN 'Grupo 3: Padeiro, cozinheiro industrial ou em restaurantes, sapateiro, costureiro, joalheiro, torneiro mecânico, operador de máquinas, soldador, operário de fábrica, trabalhador da mineração, pedreiro, pintor, eletricista, encanador, motorista, caminhoneiro, taxista.'
        WHEN Q003 = 'D' THEN 'Grupo 4: Professor (de ensino fundamental ou médio, idioma, música, artes etc.), técnico (de enfermagem, contabilidade, eletrônica etc.), policial, militar de baixa patente (soldado, cabo, sargento), corretor de imóveis, supervisor, gerente, mestre de obras, pastor, microempresário (proprietário de empresa com menos de 10 empregados), pequeno comerciante, pequeno proprietário de terras, trabalhador autônomo ou por conta própria.'
        WHEN Q003 = 'E' THEN 'Grupo 5: Médico, engenheiro, dentista, psicólogo, economista, advogado, juiz, promotor, defensor, delegado, tenente, capitão, coronel, professor universitário, diretor em empresas públicas ou privadas, político, proprietário de empresas com mais de 10 empregados.'
        WHEN Q003 = 'F' THEN 'Não sei.'
        ELSE Q003
    END AS Q003,
    CASE 
        WHEN Q004 = 'A' THEN 'Grupo 1: Lavradora, agricultora sem empregados, bóia fria, criadora de animais (gado, porcos, galinhas, ovelhas, cavalos etc.), apicultora, pescadora, lenhadora, seringueira, extrativista.'
        WHEN Q004 = 'B' THEN 'Grupo 2: Diarista, empregada doméstica, cuidadora de idosos, babá, cozinheira (em casas particulares), motorista particular, jardineira, faxineira de empresas e prédios, vigilante, porteira, carteira, office-boy, vendedora, caixa, atendente de loja, auxiliar administrativa, recepcionista, servente de pedreiro, repositora de mercadoria.'
        WHEN Q004 = 'C' THEN 'Grupo 3: Padeira, cozinheira industrial ou em restaurantes, sapateira, costureira, joalheira, torneira mecânica, operadora de máquinas, soldadora, operária de fábrica, trabalhadora da mineração, pedreira, pintora, eletricista, encanadora, motorista, caminhoneira, taxista.'
        WHEN Q004 = 'D' THEN 'Grupo 4: Professora (de ensino fundamental ou médio, idioma, música, artes etc.), técnica (de enfermagem, contabilidade, eletrônica etc.), policial, militar de baixa patente (soldado, cabo, sargento), corretora de imóveis, supervisora, gerente, mestre de obras, pastora, microempresária (proprietária de empresa com menos de 10 empregados), pequena comerciante, pequena proprietária de terras, trabalhadora autônoma ou por conta própria.'
        WHEN Q004 = 'E' THEN 'Grupo 5: Médica, engenheira, dentista, psicóloga, economista, advogada, juíza, promotora, defensora, delegada, tenente, capitã, coronel, professora universitária, diretora em empresas públicas ou privadas, política, proprietária de empresas com mais de 10 empregados.'
        WHEN Q004 = 'F' THEN 'Não sei.'
        ELSE Q004
    END AS Q004,
    CASE 
        WHEN Q005 = '1' THEN '1, pois moro sozinho(a).'
        WHEN Q005 = '2' THEN '2'
        WHEN Q005 = '3' THEN '3'
        WHEN Q005 = '4' THEN '4'
        WHEN Q005 = '5' THEN '5'
        WHEN Q005 = '6' THEN '6'
        WHEN Q005 = '7' THEN '7'
        WHEN Q005 = '8' THEN '8'
        WHEN Q005 = '9' THEN '9'
        WHEN Q005 = '10' THEN '10'
        WHEN Q005 = '11' THEN '11'
        WHEN Q005 = '12' THEN '12'
        WHEN Q005 = '13' THEN '13'
        WHEN Q005 = '14' THEN '14'
        WHEN Q005 = '15' THEN '15'
        WHEN Q005 = '16' THEN '16'
        WHEN Q005 = '17' THEN '17'
        WHEN Q005 = '18' THEN '18'
        WHEN Q005 = '19' THEN '19'
        WHEN Q005 = '20' THEN '20'
        ELSE Q005
    END AS Q005,
    CASE 
        WHEN Q006 = 'A' THEN 'Nenhuma Renda'
        WHEN Q006 = 'B' THEN 'Até R$ 1.212,00'
        WHEN Q006 = 'C' THEN 'De R$ 1.212,01 até R$ 1.818,00.'
        WHEN Q006 = 'D' THEN 'De R$ 1.818,01 até R$ 2.424,00.'
        WHEN Q006 = 'E' THEN 'De R$ 2.424,01 até R$ 3.030,00.'
        WHEN Q006 = 'F' THEN 'De R$ 3.030,01 até R$ 3.636,00.'
        WHEN Q006 = 'G' THEN 'De R$ 3.636,01 até R$ 4.848,00.'
        WHEN Q006 = 'H' THEN 'De R$ 4.848,01 até R$ 6.060,00.'
        WHEN Q006 = 'I' THEN 'De R$ 6.060,01 até R$ 7.272,00.'
        WHEN Q006 = 'J' THEN 'De R$ 7.272,01 até R$ 8.484,00.'
        WHEN Q006 = 'K' THEN 'De R$ 8.484,01 até R$ 9.696,00.'
        WHEN Q006 = 'L' THEN 'De R$ 9.696,01 até R$ 10.908,00.'
        WHEN Q006 = 'M' THEN 'De R$ 10.908,01 até R$ 12.120,00.'
        WHEN Q006 = 'N' THEN 'De R$ 12.120,01 até R$ 14.544,00.'
        WHEN Q006 = 'O' THEN 'De R$ 14.544,01 até R$ 18.180,00.'
        WHEN Q006 = 'P' THEN 'De R$ 18.180,01 até R$ 24.240,00.'
        WHEN Q006 = 'Q' THEN 'Acima de R$ 24.240,00.'
        ELSE Q006
    END AS Q006,
    CASE 
        WHEN Q007 = 'A' THEN 'Não.'
        WHEN Q007 = 'B' THEN 'Sim, um ou dois dias por semana.'
        WHEN Q007 = 'C' THEN 'Sim, três ou quatro dias por semana.'
        WHEN Q007 = 'D' THEN 'Sim, pelo menos cinco dias por semana.'
        ELSE Q007
    END AS Q007,
    CASE 
        WHEN Q008 = 'A' THEN 'Não.'
        WHEN Q008 = 'B' THEN 'Sim, um.'
        WHEN Q008 = 'C' THEN 'Sim, dois.'
        WHEN Q008 = 'D' THEN 'Sim, três.'
        WHEN Q008 = 'E' THEN 'Sim, quatro ou mais.'
        ELSE Q008
    END AS Q008,
    CASE 
        WHEN Q009 = 'A' THEN 'Não.'
        WHEN Q009 = 'B' THEN 'Sim, um.'
        WHEN Q009 = 'C' THEN 'Sim, dois.'
        WHEN Q009 = 'D' THEN 'Sim, três.'
        WHEN Q009 = 'E' THEN 'Sim, quatro ou mais.'
        ELSE Q009
    END AS Q009,
    CASE 
        WHEN Q010 = 'A' THEN 'Não.'
        WHEN Q010 = 'B' THEN 'Sim, um.'
        WHEN Q010 = 'C' THEN 'Sim, dois.'
        WHEN Q010 = 'D' THEN 'Sim, três.'
        WHEN Q010 = 'E' THEN 'Sim, quatro ou mais.'
        ELSE Q010
    END AS Q010,
    CASE 
        WHEN Q011 = 'A' THEN 'Não.'
        WHEN Q011 = 'B' THEN 'Sim, uma.'
        WHEN Q011 = 'C' THEN 'Sim, duas.'
        WHEN Q011 = 'D' THEN 'Sim, três.'
        WHEN Q011 = 'E' THEN 'Sim, quatro ou mais.'
        ELSE Q011
    END AS Q011,
    CASE 
        WHEN Q012 = 'A' THEN 'Não.'
        WHEN Q012 = 'B' THEN 'Sim, uma.'
        WHEN Q012 = 'C' THEN 'Sim, duas.'
        WHEN Q012 = 'D' THEN 'Sim, três.'
        WHEN Q012 = 'E' THEN 'Sim, quatro ou mais.'
        ELSE Q012
    END AS Q012,
    CASE 
        WHEN Q013 = 'A' THEN 'Não.'
        WHEN Q013 = 'B' THEN 'Sim, um.'
        WHEN Q013 = 'C' THEN 'Sim, dois.'
        WHEN Q013 = 'D' THEN 'Sim, três.'
        WHEN Q013 = 'E' THEN 'Sim, quatro ou mais.'
        ELSE Q013
    END AS Q013,
    CASE 
        WHEN Q014 = 'A' THEN 'Não.'
        WHEN Q014 = 'B' THEN 'Sim, uma.'
        WHEN Q014 = 'C' THEN 'Sim, duas.'
        WHEN Q014 = 'D' THEN 'Sim, três.'
        WHEN Q014 = 'E' THEN 'Sim, quatro ou mais.'
        ELSE Q014
    END AS Q014,
    CASE 
        WHEN Q015 = 'A' THEN 'Não.'
        WHEN Q015 = 'B' THEN 'Sim, uma.'
        WHEN Q015 = 'C' THEN 'Sim, duas.'
        WHEN Q015 = 'D' THEN 'Sim, três.'
        WHEN Q015 = 'E' THEN 'Sim, quatro ou mais.'
        ELSE Q015
    END AS Q015,
    CASE 
        WHEN Q016 = 'A' THEN 'Não.'
        WHEN Q016 = 'B' THEN 'Sim, um.'
        WHEN Q016 = 'C' THEN 'Sim, dois.'
        WHEN Q016 = 'D' THEN 'Sim, três.'
        WHEN Q016 = 'E' THEN 'Sim, quatro ou mais.'
        ELSE Q016
    END AS Q016,
    CASE 
        WHEN Q017 = 'A' THEN 'Não.'
        WHEN Q017 = 'B' THEN 'Sim, uma.'
        WHEN Q017 = 'C' THEN 'Sim, duas.'
        WHEN Q017 = 'D' THEN 'Sim, três.'
        WHEN Q017 = 'E' THEN 'Sim, quatro ou mais.'
        ELSE Q017
    END AS Q017,
    CASE 
        WHEN Q018 = 'A' THEN 'Não.'
        WHEN Q018 = 'B' THEN 'Sim.'
        ELSE Q018
    END AS Q018,
    CASE 
        WHEN Q019 = 'A' THEN 'Não.'
        WHEN Q019 = 'B' THEN 'Sim, uma.'
        WHEN Q019 = 'C' THEN 'Sim, duas.'
        WHEN Q019 = 'D' THEN 'Sim, três.'
        WHEN Q019 = 'E' THEN 'Sim, quatro ou mais.'
        ELSE Q019
    END AS Q019,
    CASE 
        WHEN Q020 = 'A' THEN 'Não.'
        WHEN Q020 = 'B' THEN 'Sim.'
        ELSE Q020
    END AS Q020,
    CASE 
        WHEN Q021 = 'A' THEN 'Não.'
        WHEN Q021 = 'B' THEN 'Sim.'
        ELSE Q021
    END AS Q021,
    CASE 
        WHEN Q022 = 'A' THEN 'Não.'
        WHEN Q022 = 'B' THEN 'Sim, um.'
        WHEN Q022 = 'C' THEN 'Sim, dois.'
        WHEN Q022 = 'D' THEN 'Sim, três.'
        WHEN Q022 = 'E' THEN 'Sim, quatro ou mais.'
        ELSE Q022
    END AS Q022,
    CASE 
        WHEN Q023 = 'A' THEN 'Não.'
        WHEN Q023 = 'B' THEN 'Sim.'
        ELSE Q023
    END AS Q023,
    CASE 
        WHEN Q024 = 'A' THEN 'Não.'
        WHEN Q024 = 'B' THEN 'Sim, um.'
        WHEN Q024 = 'C' THEN 'Sim, dois.'
        WHEN Q024 = 'D' THEN 'Sim, três.'
        WHEN Q024 = 'E' THEN 'Sim, quatro ou mais.'
        ELSE Q024
    END AS Q024,
    CASE 
        WHEN Q025 = 'A' THEN 'Não.'
        WHEN Q025 = 'B' THEN 'Sim.'
        ELSE Q025
    END AS Q025
FROM 
    `tcc-tsi.microdados_enem_2022.raw_microdados_enem_2022`;