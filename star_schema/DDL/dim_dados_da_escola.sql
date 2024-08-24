CREATE OR REPLACE TABLE `tcc-tsi.microdados_enem_2022.dim_dados_da_escola` (
    NU_INSCRICAO STRING OPTIONS(description="Número de inscrição do participante"),
    CO_MUNICIPIO_ESC STRING OPTIONS(description="Código do município da escola onde o participante concluiu o Ensino Médio"),
    NO_MUNICIPIO_ESC STRING OPTIONS(description="Nome do município da escola onde o participante concluiu o Ensino Médio"),
    CO_UF_ESC STRING OPTIONS(description="Código da Unidade Federativa da escola onde o participante concluiu o Ensino Médio"),
    SG_UF_ESC STRING OPTIONS(description="Sigla da Unidade Federativa da escola onde o participante concluiu o Ensino Médio"),
    TP_DEPENDENCIA_ADM_ESC STRING OPTIONS(description="Dependência administrativa da escola onde o participante concluiu o Ensino Médio"),
    TP_LOCALIZACAO_ESC STRING OPTIONS(description="Localização da escola onde o participante concluiu o Ensino Médio"),
    TP_SIT_FUNC_ESC STRING OPTIONS(description="Situação de funcionamento da escola onde o participante concluiu o Ensino Médio")
);
